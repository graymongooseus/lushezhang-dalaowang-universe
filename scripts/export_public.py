"""Export a public snapshot from canonical SQLite; leave the working database intact."""
import argparse
from pathlib import Path
import sqlite3

ROOT = Path(__file__).resolve().parents[1]
p = argparse.ArgumentParser(description=__doc__)
p.add_argument('--database', type=Path, default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
p.add_argument('--output', type=Path, default=ROOT/'data/snapshot.sql')
a = p.parse_args()
with sqlite3.connect(a.database.resolve().as_uri()+'?mode=ro', uri=True) as source:
    public = sqlite3.connect(':memory:')
    source.backup(public)
# Audit history may contain removed records or local operational information.
# The current application data and verification states remain unchanged.
with public:
    public.execute('DELETE FROM change_log')
    public.execute('DELETE FROM excluded_people')
assert not public.execute('PRAGMA foreign_key_check').fetchall()
version = public.execute('PRAGMA user_version').fetchone()[0]
a.output.parent.mkdir(parents=True, exist_ok=True)
a.output.write_text('\n'.join(public.iterdump())+f'\nPRAGMA user_version={version};\n', encoding='utf-8')
print(f'Exported current records to {a.output}; private audit history omitted')
