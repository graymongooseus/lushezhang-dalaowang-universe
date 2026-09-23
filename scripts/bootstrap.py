"""Restore the reviewed public snapshot without overwriting a working database."""
import argparse
import os
from pathlib import Path
import sqlite3
import tempfile

ROOT = Path(__file__).resolve().parents[1]
p = argparse.ArgumentParser(description=__doc__)
p.add_argument('--database', type=Path, default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
args = p.parse_args()
dest = args.database.resolve()
if dest.exists():
    raise SystemExit(f'Database already exists; leaving it unchanged: {dest}')
dest.parent.mkdir(parents=True, exist_ok=True)
fd, name = tempfile.mkstemp(prefix='atlas-bootstrap-', suffix='.sqlite3', dir=dest.parent)
os.close(fd)
try:
    with sqlite3.connect(name) as db:
        db.executescript((ROOT/'data/snapshot.sql').read_text(encoding='utf-8'))
        assert db.execute('PRAGMA integrity_check').fetchone()[0] == 'ok'
        assert not db.execute('PRAGMA foreign_key_check').fetchall()
    # link is atomic and refuses to replace an existing destination.
    os.link(name, dest)
finally:
    Path(name).unlink(missing_ok=True)
print(f'Restored {dest}')
