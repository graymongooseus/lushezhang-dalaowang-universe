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
assert not db.execute('SELECT name FROM people GROUP BY name HAVING COUNT(*)>1').fetchall()
categories = {'政治','军事','商业','媒体','学者','演员主持人','其他名人'}
assert {r[0] for r in db.execute('SELECT category FROM people')} <= categories
assert not db.execute('''SELECT p.id FROM people p LEFT JOIN person_classifications pc ON pc.person_id=p.id
LEFT JOIN classifications c ON c.id=pc.classification_id AND c.name=p.category
GROUP BY p.id HAVING COUNT(c.id)!=1''').fetchall(), 'Primary classification mismatch'
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
