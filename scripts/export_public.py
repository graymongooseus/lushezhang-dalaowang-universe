"""Export only published, public, explicitly allowed columns from canonical SQLite."""
import argparse
from pathlib import Path
import sqlite3
from public_data import public_database
ROOT=Path(__file__).resolve().parents[1]
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--database',type=Path,default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
    p.add_argument('--output',type=Path,default=ROOT/'data/snapshot.sql')
    a=p.parse_args()
    with sqlite3.connect(a.database.resolve().as_uri()+'?mode=ro',uri=True) as source:public=public_database(source)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text('\n'.join(public.iterdump())+'\nPRAGMA user_version=9;\n',encoding='utf-8')
    print(f'Public v9 snapshot: {a.output}; no account, draft, vote or audit rows')
