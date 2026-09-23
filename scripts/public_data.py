"""Positive-list public projection; no accounts, drafts, ballots or private audit data.

The public clone contains empty administrative tables to retain schema compatibility.
It is a public read model, not a backup or an audit-history archive.
"""
import json
import sqlite3
from pathlib import Path
from data_standard import GOVERNED,primary_key,encode
COLUMNS=json.loads(Path(__file__).with_name('public_columns.json').read_text())

def public_database(source):
    source.row_factory=sqlite3.Row
    if source.execute('PRAGMA user_version').fetchone()[0]!=9: raise ValueError('Public export requires v9')
    target=sqlite3.connect(':memory:');target.row_factory=sqlite3.Row
    schema=source.execute("SELECT type,name,sql FROM sqlite_master WHERE sql IS NOT NULL AND name NOT LIKE 'sqlite_%' ORDER BY rowid").fetchall()
    for s in schema:
        if s['type']=='table': target.execute(s['sql'])
    current={r['id']:dict(r) for r in source.execute('''SELECT s.* FROM statements s JOIN revision_publications p ON p.revision_id=s.current_revision_id
        WHERE s.visibility='public' AND p.retired_at IS NULL''')}
    data={t:[{col:r[col] for col in cols} for r in source.execute('SELECT '+','.join('"'+c+'"' for c in cols)+' FROM '+t)] for t,cols in COLUMNS.items()}
    for t in GOVERNED: data[t]=[r for r in data[t] if r['statement_id'] in current and r['revision_id']==current[r['statement_id']]['current_revision_id']]
    data['people']=[r for r in data['people'] if r['record_status'] not in ('hidden','merged')]
    data['sources']=[r for r in data['sources'] if r['visibility']=='public']
    data['assets']=[r for r in data['assets'] if r['visibility']=='public']
    data['statements']=list(current.values())
    revisions={r['current_revision_id'] for r in current.values()}
    data['statement_revisions']=[r for r in data['statement_revisions'] if r['id'] in revisions]
    for r in data['statement_revisions']:
        r['author_user_id']=None;r['parent_revision_id']=None
    for r in data['relationship_periods']:r['assessor_user_id']=None
    data['revision_publications']=[r for r in data['revision_publications'] if r['revision_id'] in revisions]
    data['citations']=[r for r in data['citations'] if r['revision_id'] in revisions]
    # Optional pointers can be nulled; required references cause a dependent row to be omitted.
    # Iterate to a fixed point so a hidden person cannot leak via a relationship or its revision JSON.
    optional={('people',x) for x in ['highest_education_id','highest_appointment_id','primary_faction_id','portrait_asset_id','merged_into_id']}
    optional|={('relationships','supersedes_id'),('factions','core_person_id'),('citations','claimant_person_id'),('citations','legacy_evidence_id'),('source_passages','segment_id')}
    optional|={(t,'claimant_person_id') for t in COLUMNS}
    foreign={t:[dict(r) for r in source.execute('PRAGMA foreign_key_list('+t+')')] for t in COLUMNS}
    changed=True
    while changed:
        changed=False
        keys={(t,c):{r[c] for r in rows} for t,rows in data.items() for c in COLUMNS[t]}
        for t,rows in list(data.items()):
            keep=[]
            for row in rows:
                valid=True
                if t=='statements' and row['entity_id'] not in keys.get((row['entity_table'],primary_key(row['entity_table'])),set()): valid=False
                for fk in foreign[t]:
                    value=row[fk['from']]
                    if value is None:continue
                    if value not in keys.get((fk['table'],fk['to']),set()):
                        if (t,fk['from']) in optional:row[fk['from']]=None;changed=True
                        else:valid=False;break
                if valid:keep.append(row)
                else:changed=True
            data[t]=keep
    # Reconstruct JSON from the filtered public typed rows, so private dependency pointers cannot survive.
    stm={r['id']:r for r in data['statements']}
    typed={(t,r[primary_key(t)]):r for t in GOVERNED for r in data[t]}
    public_people={r['id'] for r in data['people']}
    for r in data['video_analyses']:
        r['new_person_ids_json']=encode([p for p in json.loads(r['new_person_ids_json']) if p in public_people])
    for r in data['statement_revisions']:
        st=stm[r['statement_id']]
        r['content_json']=encode({k:v for k,v in typed[(st['entity_table'],st['entity_id'])].items() if k not in ('statement_id','revision_id')})
    for t,rows in data.items():
        cols=COLUMNS[t]
        target.executemany('INSERT INTO '+t+' ('+','.join('"'+c+'"' for c in cols)+') VALUES ('+','.join('?' for _ in cols)+')',[tuple(r[c] for c in cols) for r in rows])
    for s in schema:
        if s['type']!='table':target.execute(s['sql'])
    target.execute('PRAGMA user_version=9');target.commit()
    errors=target.execute('PRAGMA foreign_key_check').fetchall()
    if errors: raise ValueError([tuple(x) for x in errors])
    return target
