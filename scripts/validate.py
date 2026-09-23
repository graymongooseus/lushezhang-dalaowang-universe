"""Validate identities, classifications, references, timeline and source boundaries."""
import argparse
import json
from pathlib import Path
import sqlite3

ROOT = Path(__file__).resolve().parents[1]
p = argparse.ArgumentParser(description=__doc__)
p.add_argument('--database', type=Path, default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
a = p.parse_args()
db = sqlite3.connect(a.database.resolve().as_uri()+'?mode=ro', uri=True)
db.row_factory = sqlite3.Row
assert db.execute('PRAGMA integrity_check').fetchone()[0] == 'ok', 'SQLite integrity'
assert not db.execute('PRAGMA foreign_key_check').fetchall(), 'Foreign keys'
assert not db.execute("SELECT id FROM people WHERE trim(name)='' OR trim(disambiguation)=''").fetchall(), 'Name/disambiguation required'
categories = {'官员','军方','商业','媒体','学者','演员','主持人','运动员','律师','歌手','其他名人'}
assert {r[0] for r in db.execute('SELECT category FROM people')} <= categories
assert {r[0] for r in db.execute('SELECT name FROM classifications')} == categories
assert not db.execute('SELECT p.id FROM people p LEFT JOIN person_classifications pc ON pc.person_id=p.id GROUP BY p.id HAVING COUNT(pc.id)=0').fetchall(), 'Person without a tag'
assert not db.execute('''SELECT p.id FROM people p LEFT JOIN person_classifications pc ON pc.person_id=p.id
LEFT JOIN classifications c ON c.id=pc.classification_id AND c.name=p.category
GROUP BY p.id HAVING COUNT(c.id)<1''').fetchall(), 'Primary classification mismatch'
for table, start, end in [('appointments','start_date','end_date'),('relationships','start_date','end_date'),('relationship_periods','valid_from','valid_to'),('person_events','event_date','end_date')]:
    for row in db.execute(f'SELECT id,{start},{end} FROM {table}'):
        x,y = row[1:]
        if x and y:
            n = min(len(x),len(y))
            assert x[:n] <= y[:n], (table,row[0],'Date order')
assert not db.execute("SELECT id FROM person_events WHERE verification!='公开证据支持' AND status_value IS NOT NULL").fetchall(), 'Unverified fact-state change'
assert not db.execute('''SELECT s.id FROM video_segments s JOIN video_analyses v ON v.source_id=s.source_id
WHERE s.start_seconds<0 OR s.end_seconds<s.start_seconds OR s.end_seconds>v.duration_seconds''').fetchall()
ids = {r[0] for r in db.execute('SELECT id FROM people')}
for row in db.execute('SELECT * FROM video_analyses'):
    new = json.loads(row['new_person_ids_json'])
    assert len(set(new)) == len(new) and set(new) <= ids
    assert Path(row['markdown_filename']).name == row['markdown_filename'], 'Unsafe output filename'
assert not db.execute('''SELECT k.relationship_id FROM kinship_links k JOIN relationships r ON r.id=k.relationship_id
WHERE r.relationship_type LIKE '%恋情%' OR r.relationship_type LIKE '%亲近%' ''').fetchall()
counts = {t:db.execute('SELECT COUNT(*) FROM '+t).fetchone()[0] for t in ['people','relationships','person_events','video_segments']}
print('PASS',json.dumps(counts,ensure_ascii=False))

from data_standard import GOVERNED,primary_key,snapshot,validate_content
assert db.execute('PRAGMA user_version').fetchone()[0]==9
for t in GOVERNED:
    for row in db.execute('SELECT * FROM '+t):
        validate_content(db,t,snapshot(row))
        version=db.execute('SELECT r.content_json,s.current_revision_id FROM statement_revisions r JOIN statements s ON s.id=r.statement_id WHERE r.id=? AND s.entity_table=? AND s.entity_id=?',(row['revision_id'],t,row[primary_key(t)])).fetchone()
        assert version and version['current_revision_id']==row['revision_id'],(t,row[primary_key(t)],'Current revision')
        assert json.loads(version['content_json'])==snapshot(row),(t,row[primary_key(t)],'Projection differs from immutable revision')
assert not db.execute('SELECT 1 FROM publication_context').fetchone(), 'Write latch left open'
assert not db.execute("SELECT p.id FROM people p LEFT JOIN person_names n ON n.person_id=p.id AND n.name_type='canonical' AND n.name=p.name WHERE n.id IS NULL").fetchall()
print('PASS v9: partial dates, all published projections, immutable-version pointers, canonical names')

import hashlib
for row in db.execute('SELECT id,metadata_json,metadata_sha256 FROM source_versions'):
    assert hashlib.sha256(row['metadata_json'].encode()).hexdigest()==row['metadata_sha256'],(row['id'],'Source metadata hash')
assert not db.execute("SELECT n.person_id FROM person_names n WHERE name_type='canonical' GROUP BY n.person_id HAVING count(*)!=1").fetchall()
assert not db.execute('SELECT p.id FROM people p JOIN education e ON e.id=p.highest_education_id WHERE e.person_id!=p.id').fetchall()
assert not db.execute('SELECT p.id FROM people p JOIN appointments a ON a.id=p.highest_appointment_id WHERE a.person_id!=p.id').fetchall()
assert not db.execute('SELECT sp.id FROM source_passages sp JOIN video_segments v ON v.id=sp.segment_id JOIN video_analyses a ON a.source_id=v.source_id WHERE sp.end_seconds>a.duration_seconds OR sp.start_seconds<0').fetchall()
print('PASS v9: source-version hashes, highest-record ownership, evidence time bounds')
