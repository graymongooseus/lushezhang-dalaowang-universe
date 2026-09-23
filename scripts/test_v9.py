"""Behavioral tests on disposable copies; never modify the canonical database."""
import argparse,copy,json,sqlite3,tempfile,unittest
from pathlib import Path
from data_standard import *
from public_data import public_database
DB=ROOT/'鲁社长/数据库/人物谱系.sqlite3'
class StandardTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.db=connect(Path(self.tmp.name)/'test.sqlite3')
        with sqlite3.connect(DB) as src:src.backup(self.db)
        for u in ('author','reviewer'):
            self.db.execute('INSERT INTO platform_users VALUES(?,?,?,?,?,NULL)',(u,'PRIVATE_TEST_ACCOUNT_'+u,None,'human',now()))
            self.db.execute('INSERT INTO user_roles VALUES(?,?)',(u,'contributor' if u=='author' else 'reviewer'))
        self.db.commit()
        self.row=dict(self.db.execute("SELECT * FROM people WHERE id='p_xi'").fetchone())
        self.cites=[dict(r) for r in self.db.execute('SELECT * FROM citations WHERE revision_id=?',(self.row['revision_id'],))]
    def tearDown(self):self.db.close();self.tmp.cleanup()
    def submit(self,content=None,key='one'):
        return submit_change(self.db,'people',self.row['id'],content or snapshot(self.row),self.cites,'author','test revision',self.row['revision_id'],key)
    def test_revision_is_not_visible_until_approved_and_history_is_immutable(self):
        c=snapshot(self.row);c['identity_note']='PRIVATE_DRAFT_SENTINEL'
        req=self.submit(c)
        self.assertNotEqual(self.db.execute("SELECT identity_note FROM people WHERE id='p_xi'").fetchone()[0],c['identity_note'])
        pub=public_database(self.db);dump='\n'.join(pub.iterdump());pub.close()
        self.assertNotIn('PRIVATE_DRAFT_SENTINEL',dump);self.assertNotIn('PRIVATE_TEST_ACCOUNT',dump)
        self.db.execute("INSERT INTO user_roles VALUES('author','reviewer')");self.db.commit()
        with self.assertRaises(PermissionError):review_change(self.db,req,'author','approve','self')
        review_change(self.db,req,'reviewer','approve','reviewed')
        review_change(self.db,req,'reviewer','approve','idempotent')
        self.assertEqual(self.db.execute("SELECT identity_note FROM people WHERE id='p_xi'").fetchone()[0],c['identity_note'])
        with self.assertRaises(sqlite3.IntegrityError):self.db.execute('UPDATE statement_revisions SET change_reason=? WHERE id=?',('rewrite',self.row['revision_id']))
        self.db.rollback()
        with self.assertRaises(sqlite3.IntegrityError):self.db.execute("UPDATE people SET name='direct edit' WHERE id='p_xi'")
        self.db.rollback()
    def test_concurrent_revision_conflict_does_not_partially_publish(self):
        c=snapshot(self.row);c['identity_note']='first';a=self.submit(c,'a')
        c['identity_note']='second';b=self.submit(c,'b')
        review_change(self.db,a,'reviewer','approve','reviewed')
        with self.assertRaises(ValueError):review_change(self.db,b,'reviewer','approve','stale')
        self.assertEqual(self.db.execute('SELECT state FROM change_requests WHERE id=?',(b,)).fetchone()[0],'submitted')
        self.assertEqual(self.db.execute("SELECT identity_note FROM people WHERE id='p_xi'").fetchone()[0],'first')
        self.assertEqual(self.db.execute('SELECT count(*) FROM publication_context').fetchone()[0],0)
    def test_rollback_is_a_new_revision(self):
        old=snapshot(self.row);edited=dict(old,identity_note='temporary revision');req=self.submit(edited)
        review_change(self.db,req,'reviewer','approve','reviewed')
        current=self.db.execute("SELECT revision_id FROM people WHERE id='p_xi'").fetchone()[0]
        revert=submit_change(self.db,'people','p_xi',old,self.cites,'author','restore prior content',current,'restore')
        review_change(self.db,revert,'reviewer','approve','reviewed')
        self.assertEqual(self.db.execute('SELECT count(*) FROM statement_revisions WHERE statement_id=?',(self.row['statement_id'],)).fetchone()[0],3)
        self.assertEqual(snapshot(self.db.execute("SELECT * FROM people WHERE id='p_xi'").fetchone()),old)
    def test_idempotency_and_same_person_pointer(self):
        req=self.submit();self.assertEqual(self.submit(),req)
        bad=dict(snapshot(self.row),identity_note='different')
        with self.assertRaises(ValueError):self.submit(bad)
        bad=snapshot(self.row);bad['highest_education_id']=self.db.execute("SELECT id FROM education WHERE person_id!='p_xi' LIMIT 1").fetchone()[0]
        with self.assertRaises(ValueError):self.submit(bad,'bad-pointer')
    def test_new_person_with_same_name_requires_primary_tag_batch(self):
        content=snapshot(self.row);content.update(id='p_test_homonym',disambiguation='同名测试实体',highest_education_id=None,highest_appointment_id=None,portrait_asset_id=None,primary_faction_id=None)
        tag=snapshot(self.db.execute("SELECT * FROM person_classifications WHERE person_id='p_xi' AND classification_id=?",(content['primary_classification_id'],)).fetchone())
        tag.update(id='tag_test',person_id=content['id'])
        changes=[dict(table='people',entity_id=content['id'],content=content,citations=self.cites,base_revision_id=None),dict(table='person_classifications',entity_id=tag['id'],content=tag,citations=self.cites,base_revision_id=None)]
        req=submit_batch(self.db,changes,'author','new homonym','homonym')
        review_change(self.db,req,'reviewer','approve','identity checked')
        self.assertEqual(self.db.execute('SELECT count(*) FROM people WHERE name=?',(content['name'],)).fetchone()[0],2)
        self.assertFalse(self.db.execute('PRAGMA foreign_key_check').fetchall())
    def test_date_semantics_and_precision(self):
        p=dict(temporal_mode='point',valid_from='2015',valid_to=None,end_state='not_applicable')
        self.assertTrue(period_matches(p,'2015-06-01'));self.assertFalse(period_matches(p,'2016-01-01'))
        p.update(temporal_mode='start_only',end_state='unknown')
        self.assertFalse(period_matches(p,'2026-09-23'));self.assertTrue(period_matches(p,'2026-09-23',True))
        p.update(end_state='ongoing',observed_at='2018-05')
        self.assertTrue(period_matches(p,'2018-05-31'));self.assertFalse(period_matches(p,'2018-06-01'))
        for value in ['2025-02-29','2024-13','today','']:
            with self.assertRaises(ValueError):date_precision(value)
        row=snapshot(self.db.execute("SELECT * FROM relationship_periods WHERE temporal_mode='point' LIMIT 1").fetchone());row['start_precision']='day' if row['start_precision']!='day' else 'year'
        with self.assertRaises(ValueError):validate_content(self.db,'relationship_periods',row)
    def test_private_person_dependencies_and_restore(self):
        with transaction(self.db,'test visibility'):
            self.db.execute("UPDATE statements SET visibility='private' WHERE entity_table='people' AND entity_id='p_xi'")
        pub=public_database(self.db)
        self.assertIsNone(pub.execute("SELECT * FROM people WHERE id='p_xi'").fetchone())
        self.assertEqual(pub.execute("SELECT count(*) FROM relationships WHERE person_a_id='p_xi' OR person_b_id='p_xi'").fetchone()[0],0)
        self.assertFalse(pub.execute('PRAGMA foreign_key_check').fetchall())
        restored=sqlite3.connect(':memory:');restored.executescript('\n'.join(pub.iterdump()))
        self.assertEqual(restored.execute('PRAGMA integrity_check').fetchone()[0],'ok');self.assertFalse(restored.execute('PRAGMA foreign_key_check').fetchall())
        for t in ['platform_users','change_requests','votes','audit_events','change_log','review_findings']:
            self.assertEqual(restored.execute('SELECT count(*) FROM '+t).fetchone()[0],0,t)
        pub.close();restored.close()
    def test_vote_uniqueness(self):
        values=('author',self.row['revision_id'],'helpful',1,now(),now())
        self.db.execute('INSERT INTO votes VALUES(?,?,?,?,?,?)',values)
        with self.assertRaises(sqlite3.IntegrityError):self.db.execute('INSERT INTO votes VALUES(?,?,?,?,?,?)',values)
        self.db.rollback()
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--database',type=Path,default=DB);args,rest=p.parse_known_args();DB=args.database
    unittest.main(argv=['test_v9']+rest)
