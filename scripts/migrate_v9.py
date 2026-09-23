"""Backed-up v8 -> v9 migration; preserve IDs and source uncertainty."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import sqlite3
from data_standard import ROOT,GOVERNED,DATE_PAIRS,now,encode,identifier,snapshot,date_precision,claim_codes,primary_key

def run(db_path):
    db=sqlite3.connect(db_path);db.row_factory=sqlite3.Row
    version=db.execute('PRAGMA user_version').fetchone()[0]
    if version==9: print('Already at v9; no changes');return
    if version!=8: raise ValueError(f'Expected v8, got {version}')
    stamp=now(); backup=ROOT/'备份'/('v9迁移_'+stamp.replace(':','').replace('.','_'))
    backup.mkdir(parents=True)
    with sqlite3.connect(backup/'人物谱系.sqlite3') as target: db.backup(target)
    baseline={r[0]:db.execute('SELECT COUNT(*) FROM '+r[0]).fetchone()[0] for r in db.execute("SELECT name FROM sqlite_master WHERE type='table'")}
    before={t:{r[primary_key(t)]:dict(r) for r in db.execute('SELECT * FROM '+t)} for t in GOVERNED}
    views=list(db.execute("SELECT name,sql FROM sqlite_master WHERE type='view'"))
    db.execute('PRAGMA foreign_keys=OFF');db.execute('BEGIN IMMEDIATE')
    try:
        for view in views:db.execute('DROP VIEW '+view['name'])
        # SQLite rebuild is required to remove the name UNIQUE constraint.
        for table,replacement in [('people',('name TEXT NOT NULL UNIQUE','name TEXT NOT NULL')),('video_analyses',('duration_seconds INTEGER NOT NULL','duration_seconds INTEGER'))]:
            ddl=db.execute("SELECT sql FROM sqlite_master WHERE name=?",(table,)).fetchone()[0]
            revised=ddl.replace(*replacement).replace('CREATE TABLE '+table,'CREATE TABLE '+table+'_v9',1)
            if revised==ddl:raise ValueError('Unexpected schema')
            db.execute(revised);db.execute(f'INSERT INTO {table}_v9 SELECT * FROM {table}')
            db.execute('DROP TABLE '+table);db.execute(f'ALTER TABLE {table}_v9 RENAME TO {table}')
        # executescript commits implicitly; execute complete individual statements instead.
        ddl=(ROOT/'scripts/schema_v9_additions.sql').read_text()
        buf=''
        for line in ddl.splitlines(True):
            buf+=line
            if sqlite3.complete_statement(buf): db.execute(buf);buf=''
        if buf.strip():raise ValueError('Incomplete migration SQL')
        db.execute('INSERT INTO publication_context VALUES(1,?)',('v9 baseline migration',))
        db.execute('INSERT INTO platform_users VALUES(?,?,?,?,?,NULL)',('system_v9','v9 数据迁移',None,'system',stamp))
        db.execute('INSERT INTO user_roles VALUES(?,?)',('system_v9','migration'))
        def add(table,definition): db.execute('ALTER TABLE '+table+' ADD COLUMN '+definition)
        for table in GOVERNED:
            for col in ['statement_id TEXT REFERENCES statements(id)','revision_id TEXT REFERENCES statement_revisions(id)',
                        "claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed'))",
                        "verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed'))"]:add(table,col)
        for table in DATE_PAIRS:
            for col in ["start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown'))",
                        "end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown'))",
                        "end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable'))",
                        "time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown'))"]:add(table,col)
            if table!='appointments':add(table,'observed_at TEXT')
        for col in ['disambiguation TEXT NOT NULL DEFAULT \'\'','created_at TEXT',
                    "record_status TEXT NOT NULL DEFAULT 'active' CHECK(record_status IN ('active','identity_pending','merged','hidden'))",
                    'merged_into_id TEXT REFERENCES people(id)','primary_classification_id TEXT REFERENCES classifications(id)',
                    'portrait_asset_id TEXT REFERENCES assets(id)']:add('people',col)
        for col in ['relationship_type_code TEXT','person_a_role TEXT','person_b_role TEXT']:add('relationships',col)
        for col in ['claim_series_id TEXT',"relationship_state TEXT NOT NULL DEFAULT 'recorded'",'assessment_method TEXT','assessor_user_id TEXT REFERENCES platform_users(id)']:add('relationship_periods',col)
        for table,col in [('appointments','organization_id TEXT REFERENCES organizations(id)'),('appointments','position_id TEXT REFERENCES positions(id)'),('appointments','place_id TEXT REFERENCES places(id)'),('education','institution_id TEXT REFERENCES organizations(id)'),('person_events','event_id TEXT REFERENCES events(id)')]:add(table,col)
        add('video_analyses',"coverage_status TEXT NOT NULL DEFAULT 'structured' CHECK(coverage_status IN ('structured','legacy_excerpt'))")
        add('sources',"visibility TEXT NOT NULL DEFAULT 'public' CHECK(visibility IN ('public','review','private','hidden'))")
        db.execute('CREATE INDEX people_name_search ON people(name)')
        def finding(table,eid,code,note,status='open',source=None,severity='review'):
            db.execute('INSERT OR IGNORE INTO review_findings VALUES(?,?,?,?,?,?,?,?,?)',(identifier('finding',table,eid,code),table,eid,code,severity,status,note,source,stamp))
        # Re-read existing manuscripts; no invented transcript or historical publication dates.
        video_files={}
        for s in db.execute("SELECT * FROM sources WHERE source_type LIKE '%视频%' OR source_type LIKE 'YouTube%'").fetchall():
            match=re.search(r'[?&]v=([^&]+)',s['url'] or '')
            if not match:continue
            video_id=match[1];file=ROOT/'鲁社长/文稿分析'/(video_id+'_人名与关系.md')
            if not file.exists():continue
            text=file.read_text();video_files[s['id']]=file
            db.execute('INSERT INTO manuscript_reviews VALUES(?,?,?,?,?)',(s['id'],file.name,hashlib.sha256(text.encode()).hexdigest(),
                       '既有原创分析与姓名/关系/时间字段对照；未重新核听全部原视频',stamp))
            if not db.execute('SELECT 1 FROM video_analyses WHERE source_id=?',(s['id'],)).fetchone():
                duration={'UwwbGnDF5WA':1504,'iUo-HMNIf54':999}.get(video_id)
                db.execute('''INSERT INTO video_analyses(source_id,video_id,title,summary,duration_seconds,markdown_filename,markdown_text,created_at,locator_precision,new_person_ids_json,ingest_note,coverage_status)
                              VALUES(?,?,?,?,?,?,?,?,?,?,?,?)''',(s['id'],video_id,s['title'],'历史人名与关系摘录，已迁入统一来源索引；不是新增的完整逐段转写。',duration,file.name,text,s['accessed_at'],'legacy_excerpt','[]',
                              '由已有分析文稿和人物提及时间码补建索引。全片内容覆盖与历史新增人数未恢复；未知视频总长不补造。','legacy_excerpt'))
                for mention in db.execute('SELECT * FROM mentions WHERE source_id=?',(s['id'],)).fetchall():
                    for clock in re.finditer(r'(?<!\d)(\d{1,2}):(\d{2})(?:[–—－-](\d{1,2}):(\d{2}))?',mention['locator'] or ''):
                        start=int(clock[1])*60+int(clock[2]);end=int(clock[3])*60+int(clock[4]) if clock[3] else start
                        if duration is not None and end>duration:continue
                        segid=identifier('legacy_segment',s['id'],mention['id'],start,end)
                        db.execute('INSERT OR IGNORE INTO video_segments(id,source_id,start_seconds,end_seconds,title,summary,claim_type,verification,recorded_at) VALUES(?,?,?,?,?,?,?,?,?)',
                                   (segid,s['id'],start,end,'历史人物提及',mention['note'] or '已有文稿中的人物提及；详见原分析。','历史摘录','沿用原稿，待逐段补充',stamp))
                        db.execute('INSERT OR IGNORE INTO segment_people VALUES(?,?,?)',(identifier('sp',segid,mention['person_id']),segid,mention['person_id']))
                finding('video_analyses',s['id'],'legacy_partial_coverage','已将原有 Markdown 和提及时码收录；不得当作新完成的全片分析。',source=s['id'])
        # Specific evidence-backed corrections found in manuscript review.
        db.execute("UPDATE relationship_periods SET temporal_mode='point',valid_to=NULL,note=? WHERE relationship_id='r_9k_peng_lei'",
                   ('按2015年复排作品记录定位合作；原稿和文化部报道不支持从2015年持续至今。v9改为作品年份点状记录。',))
        source_before=dict(db.execute("SELECT * FROM sources WHERE id='s_9k_proof_11'").fetchone())
        db.execute("UPDATE sources SET published_at='2015-12-01' WHERE id='s_9k_proof_11'")
        db.execute('INSERT INTO change_log(changed_at,entity_table,entity_id,action,before_json,after_json,reason) VALUES(?,?,?,?,?,?,?)',
                   (stamp,'sources','s_9k_proof_11','v9_source_review',encode(source_before),encode(dict(db.execute("SELECT * FROM sources WHERE id='s_9k_proof_11'").fetchone())),
                    '核对文化部原始报道页面的发布时间，补回2015-12-01；不以URL路径代替正文时间。'))
        finding('relationship_periods','r_9k_peng_lei_t','work_credit_not_ongoing','复读9kYHLcZNiNM原分析并核对文化部报道：2015复排合作不能外推持续至今。','resolved','s_9k_proof_11')
        db.execute("UPDATE relationships SET status='说法冲突，待核实' WHERE id='r_ic8_wang_bo'")
        db.execute("UPDATE relationship_periods SET verification='说法冲突，待核实' WHERE relationship_id='r_ic8_wang_bo'")
        finding('relationships','r_ic8_wang_bo','conflicting_sources','原文稿及原证据已保存反向说法，统一标为disputed，不消除冲突。','resolved')
        # Recover explicit dates in the stored claims, without upgrading their truth status.
        for rid,start in [('r_ic8_wang_yu','2017'),('r_ic8_jing_sun','2026-08')]:
            db.execute("UPDATE relationship_periods SET valid_from=?,valid_to=NULL,temporal_mode='point',note=? WHERE relationship_id=?",(start,'从既有关系说明与原分析恢复主播声称的事件时间；仍待核实，不代表持续关系。',rid))
            finding('relationships',rid,'claim_date_recovered','原分析与关系说明已给出年份/月，改为有精度的待核实点状主张。','resolved')
        db.execute("UPDATE people SET primary_faction_id=NULL WHERE primary_faction_id='f_pending'")
        db.execute("UPDATE people SET record_status='identity_pending' WHERE id IN ('p_yuan','p_vce_043')")
        for pid,phrase,sid,locator,note in [
            ('p_yuan','元霸：公开账号身份待确认','video_iUo_HMNIf54','13:22–13:26','保留历史账号ID，不推定实名；账号合并仍需补独立依据。'),
            ('p_vce_043','文稿所述前李其炎秘书：身份待消歧','yt_VceCsZGGcdk','38:00–39:00','现有李敏条目仅按节目语境暂存，未确认唯一公开身份；不匹配其他同名者。')]:
            db.execute('INSERT INTO unresolved_mentions VALUES(?,?,?,?,?,?,?)',(identifier('pending_v9',pid),sid,phrase,locator,note,None,stamp))
        # Sources and stable source-version metadata. No fake hash of unarchived original text.
        source_versions={}
        for source in db.execute('SELECT * FROM sources').fetchall():
            payload=dict(source);digest=hashlib.sha256(encode(payload).encode()).hexdigest();sid=identifier('source_version',source['id'],digest)
            db.execute('INSERT INTO source_versions VALUES(?,?,?,?,?,?,?,?)',(sid,source['id'],encode(payload),digest,None,stamp,source['accessed_at'],'迁移时已有来源元数据快照；不是重新抓取全文。'))
            source_versions[source['id']]=sid
            if not source['published_at']:finding('sources',source['id'],'unknown_publication_date','原来源未记录发布日期；保持未知，不从URL路径推断。','accepted_unknown',source['id'],'info')
        # Normalize only labels, not presumed same-name organizations across unrelated sources.
        for table in ['appointments','education']:
            for row in db.execute('SELECT * FROM '+table).fetchall():
                label=row['organization'] if table=='appointments' else row['institution']
                if label:
                    oid=identifier('org',label,row['source_id'])
                    db.execute('INSERT OR IGNORE INTO organizations VALUES(?,?,?,?,?)',(oid,label,'unclassified','label_only','从原条目逐字迁入；不同来源同名机构尚未消歧合并。'))
                    db.execute(f'UPDATE {table} SET '+('organization_id' if table=='appointments' else 'institution_id')+'=? WHERE id=?',(oid,row['id']))
                if table=='appointments':
                    pid=identifier('position',row['position'],row['source_id'],label)
                    db.execute('INSERT OR IGNORE INTO positions VALUES(?,?,?,?,?)',(pid,row['position'],oid if label else None,None,'label_only'))
                    placeid=None
                    if row['region']:
                        placeid=identifier('place',row['region'],row['source_id'])
                        db.execute('INSERT OR IGNORE INTO places VALUES(?,?,?,?)',(placeid,row['region'],'unclassified','label_only'))
                    db.execute('UPDATE appointments SET position_id=?,place_id=? WHERE id=?',(pid,placeid,row['id']))
        for row in db.execute('SELECT * FROM person_events').fetchall():
            eid=identifier('event',row['id'])
            db.execute('INSERT INTO events VALUES(?,?,?,?,?,?)',(eid,row['title'],row['event_type'],row['event_date'],row['end_date'],row['date_precision']))
            db.execute('UPDATE person_events SET event_id=? WHERE id=?',(eid,row['id']))
        # Avatar metadata now lives in SQLite; retain the existing files and attribution.
        manifest=json.loads((ROOT/'鲁社长/关系图谱/avatars/manifest.json').read_text())
        for pid,photo in manifest.items():
            if not db.execute('SELECT 1 FROM people WHERE id=?',(pid,)).fetchone():continue
            aid=identifier('asset',pid,photo.get('file'),photo.get('source'))
            db.execute('INSERT INTO assets VALUES(?,?,?,?,?,?,?,?,?,?,?,?)',(aid,pid,photo.get('file'),photo.get('source'),photo.get('original_url') or photo.get('url'),photo.get('kind','portrait'),photo.get('license'),photo.get('license_url'),photo.get('accessed_at'),'public','unreviewed',encode(photo)))
            db.execute('UPDATE people SET portrait_asset_id=? WHERE id=?',(aid,pid))
        # Every person receives a row-level assessment of existing provenance, not fabricated fact-checking.
        for person in db.execute('SELECT * FROM people').fetchall():
            pid=person['id']
            checks=db.execute('SELECT * FROM identity_checks WHERE person_id=?',(pid,)).fetchall()
            refs={r['verification_source_id'] for r in checks if r['verification_source_id']}
            refs.update(r[0] for r in db.execute('SELECT source_id FROM person_classifications WHERE person_id=?',(pid,)))
            external=[sid for sid in refs if sid not in video_files and db.execute("SELECT 1 FROM sources WHERE id=? AND url LIKE 'http%'",(sid,)).fetchone()]
            assessment='existing_external_reference' if external else 'source_context_only'
            if person['record_status']=='identity_pending':assessment='pending_identity'
            files=[file.name for sid,file in video_files.items() if db.execute('SELECT 1 FROM mentions WHERE person_id=? AND source_id=?',(pid,sid)).fetchone()]
            notes=[]
            if not external:
                notes.append('姓名与既有文稿身份语境对照；缺少独立身份来源，不能自动标为外部核实。')
                finding('people',pid,'identity_reference_needed',notes[-1])
            if assessment=='pending_identity':finding('people',pid,'identity_disambiguation','称谓或同名身份尚缺唯一外部依据；保留稳定ID并明确待确认，禁止外推。')
            db.execute('INSERT INTO person_review_results VALUES(?,?,?,?,?,?,?)',(pid,stamp,'结构、稳定ID、既有姓名核对记录、来源及原分析对照；不等于全部个人经历重新核实',assessment,encode(sorted(refs)),encode(files),encode(notes)))
            cid=db.execute('SELECT id FROM classifications WHERE name=?',(person['category'],)).fetchone()[0]
            db.execute('UPDATE people SET disambiguation=?,primary_classification_id=? WHERE id=?',(person['identity_note'] or person['category']+'；身份细节待补',cid,pid))
        kinships={r['relationship_id']:r['kind'] for r in db.execute('SELECT * FROM kinship_links')}
        for r in db.execute('SELECT * FROM relationships').fetchall():
            kind=kinships.get(r['id'])
            if kind=='parent_child':
                roles=('child','parent') if r['id']=='r_ic8_xi_father' else ('parent','child')
                code='adoptive_parent_child' if '养父' in r['relationship_type'] else 'parent_child'
            elif kind: code=kind;roles=(kind,kind)
            else:
                code='public_opinion' if '评价' in r['relationship_type'] else 'succession' if '接任' in r['relationship_type'] else 'professional_cooperation' if any(x in r['relationship_type'] for x in ['表演','制作','指导','共事','节目问答']) else 'reported_association'
                roles=('subject','object') if r['direction']=='A→B' else ('participant','participant')
            db.execute('UPDATE relationships SET relationship_type_code=?,person_a_role=?,person_b_role=? WHERE id=?',(code,*roles,r['id']))
        for table,(startcol,endcol) in DATE_PAIRS.items():
            for row in db.execute('SELECT * FROM '+table).fetchall():
                start,end=row[startcol],row[endcol]
                basis='actual' if start else 'unknown'
                if table=='relationship_periods':
                    relation=db.execute('SELECT * FROM relationships WHERE id=?',(row['relationship_id'],)).fetchone()
                    if row['id']=='r_ic8_jing_zhang_t':basis='public_record_window'
                    elif row['temporal_mode']=='point' and '合作' in relation['relationship_type']:basis='release_date'
                    elif start and claim_codes(row['verification'])[1]!='supported':basis='reported_occurrence'
                    if row['relationship_id']=='r_9k_peng_lei':basis='public_record_window'
                    db.execute('UPDATE relationship_periods SET claim_series_id=?,assessment_method=? WHERE id=?',
                               ('legacy:'+row['relationship_id'],relation['rationale'] if row['strength'] is not None or row['affinity'] is not None else None,row['id']))
                state='known' if end else 'not_applicable' if table=='relationship_periods' and row['temporal_mode']=='point' else 'unknown'
                db.execute(f'UPDATE {table} SET start_precision=?,end_precision=?,end_state=?,time_basis=? WHERE id=?',
                           (date_precision(start),date_precision(end),state,basis,row['id']))
                if not start:finding(table,row['id'],'unknown_effective_time','原资料没有足够的实际时间依据；保留未知，不能使用视频发布日期或收录日期填补。','accepted_unknown',severity='info')
        # Stable evidence locators; text clocks are retained, not silently parsed as exact quotations.
        def passage(source_id,locator=None,summary='',segment=None):
            vid=source_versions[source_id];pid=identifier('passage',vid,locator,segment['id'] if segment else None)
            if segment:
                analysis=db.execute('SELECT locator_precision FROM video_analyses WHERE source_id=?',(source_id,)).fetchone()
                ptype='video_chapter' if analysis and analysis[0]=='chapter' else 'video_segment'
            else:ptype='text_locator' if locator else 'whole_source'
            db.execute('INSERT OR IGNORE INTO source_passages VALUES(?,?,?,?,?,?,?,?,?)',(pid,vid,ptype,locator,segment['start_seconds'] if segment else None,segment['end_seconds'] if segment else None,None,summary,segment['id'] if segment else None))
            return pid
        segments={r['id']:dict(r) for r in db.execute('SELECT * FROM video_segments')}
        for seg in segments.values():passage(seg['source_id'],f"{seg['start_seconds']}–{seg['end_seconds']}秒",seg['summary'],seg)
        def evidence_for(table,row):
            if table in ('relationships','relationship_periods'):
                rid=row['id'] if table=='relationships' else row['relationship_id']
                out=[dict(e) for e in db.execute('SELECT * FROM relationship_evidence WHERE relationship_id=?',(rid,))]
                if table=='relationship_periods' and row['source_id']:
                    out=[e for e in out if e['source_id']==row['source_id']] or out
                return out
            if table=='people':
                rows=[dict(x) for x in db.execute('SELECT verification_source_id AS source_id,locator,note AS summary FROM identity_checks WHERE person_id=? AND verification_source_id IS NOT NULL',(row['id'],))]
                rows.extend(dict(x) for x in db.execute('SELECT source_id,locator,rationale AS summary FROM person_classifications WHERE person_id=?',(row['id'],)))
                return rows
            if row.get('source_id'):return [{'source_id':row['source_id'],'locator':row.get('locator'),'summary':row.get('note') or row.get('summary') or row.get('rationale') or '已有来源记录','claimant_person_id':row.get('claimant_person_id')}]
            return []
        for table in GOVERNED:
            for raw in db.execute('SELECT * FROM '+table).fetchall():
                row=dict(raw);eid=row[primary_key(table)]
                status=row.get('status') or row.get('verification') or row.get('profile_status') or ''
                claim,verification=claim_codes(status)
                if table in ('video_analyses','video_segments'):claim,verification='mixed','unassessed'
                if table=='people':claim,verification='record','unassessed'
                if table=='relationships' and any(x in row['relationship_type'] for x in ('推测','评价')):claim='opinion'
                if table=='relationship_periods':
                    parent=db.execute('SELECT claim_kind,verification_status FROM relationships WHERE id=?',(row['relationship_id'],)).fetchone()
                    claim,verification=parent
                row.update(claim_kind=claim,verification_status=verification)
                sid=identifier('stmt',table,eid);rid=identifier('rev',sid,1)
                db.execute('UPDATE '+table+' SET claim_kind=?,verification_status=?,statement_id=?,revision_id=? WHERE '+primary_key(table)+'=?',(claim,verification,sid,rid,eid))
                row=dict(db.execute('SELECT * FROM '+table+' WHERE '+primary_key(table)+'=?',(eid,)).fetchone())
                db.execute('INSERT INTO statements VALUES(?,?,?,NULL,?,?)',(sid,table,eid,'public',stamp))
                db.execute('INSERT INTO statement_revisions VALUES(?,?,?,?,?,?,?,?,?,?,?)',(rid,sid,1,None,encode(snapshot(row)),claim,verification,'system_v9',stamp,status,'v9基线迁移；保留旧来源状态，未模拟历史人工审批。'))
                evidences=evidence_for(table,row)
                if not evidences and eid!='f_pending':finding(table,eid,'citation_needed','原记录无可关联的来源；保留迁移基线，后续新投稿必须补引用。')
                for i,e in enumerate(evidences):
                    if not e.get('source_id'):continue
                    p=passage(e['source_id'],e.get('locator'),e.get('summary') or '',segments.get(eid) if table=='video_segments' else None)
                    stance={'支持':'supports','质疑':'challenges','背景':'context'}.get(e.get('stance'),'supports')
                    db.execute('INSERT INTO citations VALUES(?,?,?,?,?,?,?,?)',(identifier('citation',rid,i),rid,p,stance,e.get('claimant_person_id'),e.get('claimant_label'),e.get('summary') or '',e.get('id') if table in ('relationships','relationship_periods') else None))
                db.execute('INSERT INTO revision_publications VALUES(?,?,NULL,?)',(rid,stamp,'legacy_import'))
                db.execute('INSERT INTO review_decisions VALUES(?,?,?,?,?,?,?)',(identifier('decision',rid),None,rid,'system_v9','legacy_import','结构与已有来源复核；基线迁移不等于新人工事实认证。',stamp))
                db.execute('UPDATE statements SET current_revision_id=? WHERE id=?',(rid,sid))
                if table=='people':
                    src=evidences[0]['source_id'] if evidences else None
                    for name,kind in [(row['name'],'canonical')]+[(x,'alias') for x in json.loads(row['aliases_json'])]:
                        db.execute('INSERT OR IGNORE INTO person_names VALUES(?,?,?,?,?,?,?)',(identifier('name',eid,name,kind),eid,name,kind,'zh',src,rid))
                if table=='person_events':db.execute('INSERT INTO event_participants VALUES(?,?,?,?)',(row['event_id'],row['person_id'],'subject',sid))
                old=before.get(table,{}).get(eid)
                db.execute('INSERT INTO change_log(changed_at,entity_table,entity_id,action,before_json,after_json,reason) VALUES(?,?,?,?,?,?,?)',
                           (stamp,table,eid,'v9_migrate',encode(old) if old else None,encode(snapshot(row)),'统一结构、版本、时间精度与引用；原始ID保留'))
        for view in views:db.execute(view['sql'])
        db.execute('''CREATE VIEW current_relationship_evidence AS
            SELECT c.id,s.entity_id AS relationship_id,v.source_id,c.claimant_person_id,
                   c.claimant_label,p.locator_text AS locator,
                   CASE c.stance WHEN 'supports' THEN '支持' WHEN 'challenges' THEN '质疑' ELSE '背景' END AS stance,
                   c.summary,r.verification_status AS status,r.created_at AS updated_at
            FROM statements s JOIN statement_revisions r ON r.id=s.current_revision_id
            JOIN citations c ON c.revision_id=r.id JOIN source_passages p ON p.id=c.passage_id
            JOIN source_versions v ON v.id=p.source_version_id
            WHERE s.entity_table='relationships' AND s.visibility='public' ''')
        db.execute('CREATE TRIGGER category_guard_insert BEFORE INSERT ON people WHEN NEW.category NOT IN (SELECT name FROM classifications) BEGIN SELECT RAISE(ABORT,\'Unknown primary category\'); END')
        db.execute('CREATE TRIGGER category_guard_update BEFORE UPDATE ON people WHEN NEW.category NOT IN (SELECT name FROM classifications) BEGIN SELECT RAISE(ABORT,\'Unknown primary category\'); END')
        for table in GOVERNED:
            for action in ['INSERT','UPDATE','DELETE']:
                db.execute(f"CREATE TRIGGER protect_{table}_{action.lower()} BEFORE {action} ON {table} WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END")
        for table in ('statement_revisions','citations','source_versions','source_passages','review_decisions','audit_events'):
            for action in ['UPDATE','DELETE']:
                db.execute(f"CREATE TRIGGER immutable_{table}_{action.lower()} BEFORE {action} ON {table} BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END")
        db.execute("CREATE TRIGGER citation_frozen BEFORE INSERT ON citations WHEN EXISTS(SELECT 1 FROM revision_publications WHERE revision_id=NEW.revision_id) BEGIN SELECT RAISE(ABORT,'Citations for published revisions are immutable'); END")
        for action in ['UPDATE','DELETE']:
            db.execute(f"CREATE TRIGGER protect_statements_{action.lower()} BEFORE {action} ON statements WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the publication API'); END")
        db.execute('INSERT INTO schema_migrations VALUES(?,?,?,?)',(9,stamp,'人物/资料/引用/时间/版本/审核标准；保留v8多职业标签',encode(baseline)))
        db.execute("INSERT INTO audit_events(actor_user_id,action,entity_type,entity_id,details_json,created_at) VALUES('system_v9','migration','schema','9',?,?)",(encode({'baseline':baseline,'review_scope':'existing records and manuscripts; not a fresh fact-check of every claim'}),stamp))
        db.execute('DELETE FROM publication_context')
        db.execute('PRAGMA user_version=9')
        if db.execute('PRAGMA foreign_key_check').fetchall():raise ValueError(str([tuple(r) for r in db.execute('PRAGMA foreign_key_check')]))
        db.commit()
    except BaseException:
        db.rollback();raise
    finally:db.close()
    print('Migrated to v9. Backup:',backup)

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--database',type=Path,default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
    run(p.parse_args().database)
