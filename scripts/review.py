"""Trusted local operator CLI; not authentication or an Internet-facing API."""
import argparse,json
from pathlib import Path
from data_standard import ROOT,connect,now,submit_batch,review_change
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--database',type=Path,default=ROOT/'鲁社长/数据库/人物谱系.sqlite3')
sub=p.add_subparsers(dest='command',required=True)
a=sub.add_parser('add-operator');a.add_argument('--id',required=True);a.add_argument('--name',required=True);a.add_argument('--role',choices=['contributor','reviewer','admin'],required=True)
a=sub.add_parser('submit');a.add_argument('file',type=Path);a.add_argument('--actor',required=True)
a=sub.add_parser('review');a.add_argument('request_id');a.add_argument('--actor',required=True);a.add_argument('--decision',choices=['approve','reject','needs_changes'],required=True);a.add_argument('--reason',required=True)
sub.add_parser('queue')
a=p.parse_args();db=connect(a.database)
if db.execute('PRAGMA user_version').fetchone()[0]!=9:raise SystemExit('v9 required')
if a.command=='add-operator':
    with db:
        db.execute('INSERT INTO platform_users VALUES(?,?,?,?,?,NULL)',(a.id,a.name,None,'human',now()))
        db.execute('INSERT INTO user_roles VALUES(?,?)',(a.id,a.role))
    print('Local operator registered; this does not create a website login:',a.id)
elif a.command=='submit':
    payload=json.loads(a.file.read_text())
    print(submit_batch(db,payload['changes'],a.actor,payload['reason'],payload['idempotency_key']))
elif a.command=='review':
    review_change(db,a.request_id,a.actor,a.decision,a.reason);print(a.decision,a.request_id)
else:
    print(json.dumps([dict(r) for r in db.execute("SELECT id,state,submitted_by,reason,submitted_at FROM change_requests WHERE state IN ('submitted','needs_changes') ORDER BY created_at")],ensure_ascii=False,indent=2))
