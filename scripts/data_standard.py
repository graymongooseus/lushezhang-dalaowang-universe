"""v9 domain contract and transactional local submission/review API.

SQLite access is for trusted maintainers. This module is not a public HTTP auth layer.
"""
from contextlib import contextmanager
from datetime import date, datetime, timezone
import calendar
import hashlib
import json
from pathlib import Path
import re
import sqlite3
import uuid

ROOT = Path(__file__).resolve().parents[1]
GOVERNED = ('people','education','appointments','relationships','relationship_periods',
            'person_events','observations','faction_memberships','person_classifications',
            'video_analyses','video_segments','factions')
DATE_PAIRS = {'education':('start_date','end_date'),'appointments':('start_date','end_date'),
              'relationships':('start_date','end_date'),'relationship_periods':('valid_from','valid_to'),
              'person_events':('event_date','end_date'),'faction_memberships':('start_date','end_date')}
CLAIMS = {'record','self_report','reported_claim','opinion','prediction','mixed','unassessed'}
VERIFICATIONS = {'supported','unverified','disputed','refuted','unassessed'}

def now(): return datetime.now(timezone.utc).isoformat(timespec='microseconds')
def encode(value): return json.dumps(value,ensure_ascii=False,sort_keys=True,separators=(',',':'))
def identifier(prefix,*parts): return prefix+'_'+hashlib.sha256(encode(parts).encode()).hexdigest()[:24]
def primary_key(table): return 'source_id' if table=='video_analyses' else 'id'
def snapshot(row): return {k:v for k,v in dict(row).items() if k not in ('statement_id','revision_id')}

def date_precision(value):
    if value is None: return 'unknown'
    if not isinstance(value,str) or not re.fullmatch(r'\d{4}(?:-\d{2}(?:-\d{2})?)?',value):
        raise ValueError(f'Invalid partial date: {value!r}')
    if len(value)==4: date(int(value),1,1); return 'year'
    if len(value)==7: date.fromisoformat(value+'-01'); return 'month'
    date.fromisoformat(value); return 'day'

def date_bounds(value):
    precision=date_precision(value)
    if precision=='unknown': return None,None
    if precision=='year': return value+'-01-01',value+'-12-31'
    if precision=='month': return value+'-01',value+f'-{calendar.monthrange(int(value[:4]),int(value[5:]))[1]:02}'
    return value,value

def period_matches(period,on_date,include_unknown=False):
    """Possible activity at calendar-day precision; no implicit eternal open intervals."""
    date.fromisoformat(on_date)
    lo,hi=date_bounds(period.get('valid_from'))
    mode=period['temporal_mode']
    if mode=='undated': return include_unknown
    if mode=='point': return bool(lo and lo<=on_date<=hi)
    if not lo or on_date<lo: return False
    if period.get('valid_to'):
        return on_date<=date_bounds(period['valid_to'])[1]
    if period.get('end_state')=='ongoing' and period.get('observed_at'):
        return on_date<=date_bounds(period['observed_at'])[1] or include_unknown
    # Start-only confirms an origin, not uninterrupted activity afterwards.
    return on_date<=hi or include_unknown

def claim_codes(status,text=''):
    status=status or ''
    if '预测' in status: return 'prediction','unverified'
    if any(s in status for s in ('冲突','争议')): return 'reported_claim','disputed'
    if any(s in status for s in ('心理','猜测','分析','评价','态度')):
        return 'opinion','unverified'
    if '自述' in status: return 'self_report','unverified'
    supported={'公开证据支持','公开历史报道支持','公开访谈与履历支持','公开访谈履历支持',
               '官方机构沿革支持','公开履历支持','公开资料支持','公开报道支持','公司申报履历支持',
               '媒体报道支持','公开身份支持','已收录身份支持','公开任职关联','创始人身份有来源',
               '历史企业关系有来源','历史学术联系有来源','本期合作有字幕支持'}
    if status in supported: return 'record','supported'
    if any(s in status for s in ('主播','待核','传闻','转述','语境暂定')):
        return 'reported_claim','unverified'
    return 'unassessed','unassessed'

def connect(path):
    db=sqlite3.connect(path);db.row_factory=sqlite3.Row;db.execute('PRAGMA foreign_keys=ON')
    return db

@contextmanager
def transaction(db,reason):
    if db.in_transaction: raise ValueError('Use a fresh connection for publication transactions')
    db.execute('BEGIN IMMEDIATE')
    try:
        db.execute('INSERT INTO publication_context VALUES(1,?)',(reason,))
        yield
        db.execute('DELETE FROM publication_context')
        if db.execute('PRAGMA foreign_key_check').fetchall(): raise ValueError('Foreign-key violation')
        db.commit()
    except BaseException:
        db.rollback();raise

def validate_content(db,table,content):
    if table not in GOVERNED: raise ValueError('Unsupported statement kind')
    columns={r['name'] for r in db.execute(f'PRAGMA table_info({table})')} - {'statement_id','revision_id'}
    if set(content)!=columns: raise ValueError('Submit the complete typed record, without unknown fields')
    if table in DATE_PAIRS:
        start,end=(content.get(k) for k in DATE_PAIRS[table])
        a,b=date_bounds(start),date_bounds(end)
        if start and end and a[0]>b[1]: raise ValueError('Reversed effective dates')
        if content.get('start_precision')!=date_precision(start) or content.get('end_precision')!=date_precision(end):
            raise ValueError('Date precision mismatch')
        if content.get('end_state') not in {'known','unknown','ongoing','not_applicable'}: raise ValueError('Invalid endpoint state')
        if end and content['end_state']!='known': raise ValueError('Known end requires known state')
        if not end and content['end_state']=='known': raise ValueError('Known end requires date')
        if content['end_state']=='ongoing' and not content.get('observed_at'): raise ValueError('Ongoing requires dated observation')
        if content.get('observed_at'):
            observed=date_bounds(content['observed_at'])
            if content['end_state']=='ongoing' and start and observed[1]<a[0]: raise ValueError('Observation precedes ongoing period')
    if table=='relationship_periods':
        if content['temporal_mode'] not in {'point','interval','start_only','undated'}: raise ValueError('Invalid temporal mode')
        if content['temporal_mode']=='undated' and (content['valid_from'] or content['valid_to']): raise ValueError('Undated interval has dates')
        if content['temporal_mode']=='point' and not content['valid_from']: raise ValueError('Point needs a date')
        if content['temporal_mode']=='point' and content['valid_to'] not in (None,content['valid_from']): raise ValueError('Point cannot span two dates')
        if not content['claim_series_id']: raise ValueError('A phase requires a claim series')
        if content['temporal_mode']=='interval' and (not content['valid_from'] or not content['valid_to']): raise ValueError('Interval needs both bounds')
        if content['temporal_mode']=='start_only' and (not content['valid_from'] or content['valid_to']): raise ValueError('Invalid start-only period')
        if (content['strength'] is not None or content['affinity'] is not None) and not content.get('assessment_method'): raise ValueError('Strength needs assessment method')
        siblings=db.execute('SELECT * FROM relationship_periods WHERE relationship_id=? AND claim_series_id=? AND id!=?',
                            (content['relationship_id'],content['claim_series_id'],content['id'])).fetchall()
        if content['temporal_mode']=='interval':
            lo,hi=date_bounds(content['valid_from'])[0],date_bounds(content['valid_to'])[1]
            for s in siblings:
                if s['temporal_mode']=='interval' and max(lo,date_bounds(s['valid_from'])[0])<=min(hi,date_bounds(s['valid_to'])[1]):
                    raise ValueError('Overlapping phases in the same claim series; use another series for conflicting claims')
    if content.get('claim_kind') not in CLAIMS or content.get('verification_status') not in VERIFICATIONS: raise ValueError('Invalid controlled state')
    if table=='people':
        if not content['name'].strip() or not content['disambiguation'].strip(): raise ValueError('Name and disambiguation required')
        category=db.execute('SELECT name FROM classifications WHERE id=?',(content['primary_classification_id'],)).fetchone()
        if not category or category[0]!=content['category']: raise ValueError('Primary category mismatch')
        for key,target in [('highest_education_id','education'),('highest_appointment_id','appointments')]:
            if content[key] and not db.execute(f'SELECT 1 FROM {target} WHERE id=? AND person_id=?',(content[key],content['id'])).fetchone():
                raise ValueError('Highest record belongs to another person')
        aliases=json.loads(content['aliases_json'])
        if not isinstance(aliases,list) or any(not isinstance(x,str) or not x.strip() for x in aliases): raise ValueError('Invalid aliases')
    if table=='person_events' and content['verification']!='公开证据支持' and content['status_value'] is not None:
        raise ValueError('Unverified event cannot change factual status')
    if table=='person_events' and content['status_value'] is not None and (content['verification_status']!='supported' or content['claim_kind']!='record'):
        raise ValueError('Factual status requires supported verification')
    if table=='video_segments':
        length=db.execute('SELECT duration_seconds FROM video_analyses WHERE source_id=?',(content['source_id'],)).fetchone()
        if not 0<=content['start_seconds']<=content['end_seconds']: raise ValueError('Invalid segment')
        if length and length[0] is not None and content['end_seconds']>length[0]: raise ValueError('Segment beyond duration')

def _actor(db,user,role=None):
    if not db.execute('SELECT 1 FROM platform_users WHERE id=? AND disabled_at IS NULL',(user,)).fetchone(): raise PermissionError('Inactive account')
    if role and not db.execute('SELECT 1 FROM user_roles WHERE user_id=? AND role IN (?,?)',(user,role,'admin')).fetchone(): raise PermissionError('Insufficient role')

def submit_change(db,table,entity_id,content,citations,user,reason,base_revision_id,idempotency_key):
    return submit_batch(db,[{'table':table,'entity_id':entity_id,'content':content,'citations':citations,
                            'base_revision_id':base_revision_id}],user,reason,idempotency_key)

def submit_batch(db,changes,user,reason,idempotency_key):
    """Stage new records or edits atomically. New people require a primary-tag item."""
    _actor(db,user,'contributor')
    if not changes or not reason.strip() or not idempotency_key: raise ValueError('Changes, reason and idempotency key required')
    fingerprint=identifier('submission',user,reason,changes)
    with transaction(db,'submit revisions'):
        prior=db.execute('SELECT id FROM change_requests WHERE idempotency_key=?',(idempotency_key,)).fetchone()
        if prior:
            audit=db.execute("SELECT details_json FROM audit_events WHERE request_id=? AND action='submit'",(prior['id'],)).fetchone()
            if not audit or json.loads(audit[0]).get('fingerprint')!=fingerprint: raise ValueError('Idempotency key reused for different submission')
            return prior['id']
        stamp=now();request='req_'+uuid.uuid4().hex
        db.execute('INSERT INTO change_requests VALUES(?,?,?,?,?,?,?)',(request,user,'submitted',reason,stamp,stamp,idempotency_key))
        seen=set()
        for change in changes:
            table=change['table'];entity_id=change['entity_id'];content=change['content'];citations=change['citations'];base=change['base_revision_id']
            if (table,entity_id) in seen: raise ValueError('Duplicate item in submission')
            seen.add((table,entity_id));validate_content(db,table,content)
            if content[primary_key(table)]!=entity_id: raise ValueError('Stable ID cannot change')
            row=db.execute('SELECT * FROM statements WHERE entity_table=? AND entity_id=?',(table,entity_id)).fetchone()
            if not row:
                if base is not None: raise ValueError('New record cannot have a base revision')
                sid=identifier('statement',table,entity_id)
                db.execute('INSERT INTO statements VALUES(?,?,?,NULL,?,?)',(sid,table,entity_id,'review',stamp))
                row=db.execute('SELECT * FROM statements WHERE id=?',(sid,)).fetchone()
            if row['current_revision_id']!=base: raise ValueError('Version conflict')
            if not citations: raise ValueError('At least one citation required')
            rid='rev_'+uuid.uuid4().hex
            old=db.execute('SELECT * FROM statement_revisions WHERE id=?',(base,)).fetchone()
            version=db.execute('SELECT COALESCE(MAX(version),0)+1 FROM statement_revisions WHERE statement_id=?',(row['id'],)).fetchone()[0]
            kind=content['claim_kind'];verification=content['verification_status']
            if kind not in CLAIMS or verification not in VERIFICATIONS: raise ValueError('Invalid controlled state')
            db.execute('INSERT INTO statement_revisions VALUES(?,?,?,?,?,?,?,?,?,?,?)',
                       (rid,row['id'],version,base,encode(content),kind,verification,user,stamp,old['legacy_status'] if old else None,reason))
            for i,cite in enumerate(citations):
                if not db.execute('SELECT 1 FROM source_passages WHERE id=?',(cite['passage_id'],)).fetchone(): raise ValueError('Missing source passage')
                db.execute('INSERT INTO citations VALUES(?,?,?,?,?,?,?,?)',(identifier('cite',rid,i),rid,cite['passage_id'],cite['stance'],cite.get('claimant_person_id'),cite.get('claimant_label'),cite.get('summary',''),None))
            db.execute('INSERT INTO change_request_items VALUES(?,?,?,?)',(request,row['id'],base,rid))
        db.execute('INSERT INTO audit_events(actor_user_id,action,entity_type,entity_id,request_id,details_json,created_at) VALUES(?,?,?,?,?,?,?)',
                   (user,'submit','request',request,request,encode({'fingerprint':fingerprint}),stamp))
        return request

def project_revision(db,statement,revision):
    table=statement['entity_table'];content=json.loads(revision['content_json'])
    validate_content(db,table,content)
    content['statement_id']=statement['id'];content['revision_id']=revision['id']
    key=primary_key(table)
    columns=list(content)
    db.execute(f'INSERT INTO {table} ('+','.join('"'+k+'"' for k in columns)+') VALUES ('+','.join('?' for _ in columns)+') ON CONFLICT('+key+') DO UPDATE SET '+','.join('"'+k+'"=excluded."'+k+'"' for k in columns if k!=key),tuple(content[k] for k in columns))
    if table=='people':
        db.execute('DELETE FROM person_names WHERE person_id=?',(content['id'],))
        for name,kind in [(content['name'],'canonical')]+[(x,'alias') for x in json.loads(content['aliases_json'])]:
            db.execute('INSERT INTO person_names VALUES(?,?,?,?,?,?,?)',(identifier('name',content['id'],name,kind),content['id'],name,kind,'zh',None,revision['id']))
    if table=='relationships':
        kind=content['relationship_type_code']
        kind='parent_child' if kind=='adoptive_parent_child' else kind
        if kind in ('parent_child','sibling','spouse','extended'):
            db.execute('INSERT INTO kinship_links VALUES(?,?,?) ON CONFLICT(relationship_id) DO UPDATE SET kind=excluded.kind,note=excluded.note',
                       (content['id'],kind,content['relationship_type']))
        else:db.execute('DELETE FROM kinship_links WHERE relationship_id=?',(content['id'],))
    if table=='person_events':
        db.execute('UPDATE events SET title=?,event_type=?,event_date=?,end_date=?,date_precision=? WHERE id=?',
                   (content['title'],content['event_type'],content['event_date'],content['end_date'],content['date_precision'],content['event_id']))

def review_change(db,request,user,decision,reason):
    _actor(db,user,'reviewer')
    if decision not in {'approve','reject','needs_changes'}: raise ValueError('Invalid review decision')
    with transaction(db,'review revision'):
        req=db.execute('SELECT * FROM change_requests WHERE id=?',(request,)).fetchone()
        if not req: raise ValueError('Unknown request')
        if req['submitted_by']==user: raise PermissionError('Cannot review own submission')
        if req['state']=='approved' and decision=='approve': return
        if req['state']!='submitted': raise ValueError('Request not submitted')
        stamp=now()
        items=db.execute('SELECT i.*,s.entity_table FROM change_request_items i JOIN statements s ON s.id=i.statement_id WHERE request_id=?',(request,)).fetchall()
        for item in sorted(items,key=lambda x:GOVERNED.index(x['entity_table'])):
            statement=db.execute('SELECT * FROM statements WHERE id=?',(item['statement_id'],)).fetchone()
            revision=db.execute('SELECT * FROM statement_revisions WHERE id=?',(item['proposed_revision_id'],)).fetchone()
            if decision=='approve':
                if statement['current_revision_id']!=item['base_revision_id']: raise ValueError('Version conflict; refresh and resubmit')
                project_revision(db,statement,revision)
                db.execute('UPDATE revision_publications SET retired_at=? WHERE revision_id=?',(stamp,item['base_revision_id']))
                db.execute('INSERT INTO revision_publications VALUES(?,?,NULL,?)',(revision['id'],stamp,'reviewed'))
                db.execute("UPDATE statements SET current_revision_id=?,visibility=CASE WHEN visibility='review' THEN 'public' ELSE visibility END WHERE id=?",(revision['id'],statement['id']))
            db.execute('INSERT INTO review_decisions VALUES(?,?,?,?,?,?,?)',('decision_'+uuid.uuid4().hex,request,revision['id'],user,decision,reason,stamp))
        if decision=='approve':
            if db.execute('SELECT p.id FROM people p WHERE NOT EXISTS(SELECT 1 FROM person_classifications pc WHERE pc.person_id=p.id AND pc.classification_id=p.primary_classification_id)').fetchone():
                raise ValueError('Person must have a matching primary classification item in the batch')
        db.execute('UPDATE change_requests SET state=? WHERE id=?',({'approve':'approved','reject':'rejected','needs_changes':'needs_changes'}[decision],request))
        db.execute('INSERT INTO audit_events(actor_user_id,action,entity_type,entity_id,request_id,details_json,created_at) VALUES(?,?,?,?,?,?,?)',(user,decision,'request',request,request,encode({'reason':reason}),stamp))
