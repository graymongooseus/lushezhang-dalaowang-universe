"""Read-only, reproducible schema assessment; output aggregate evidence only."""
from pathlib import Path
import datetime
import json
import sqlite3

ROOT = Path(__file__).resolve().parents[2]
DATABASE = ROOT / '鲁社长/数据库/人物谱系.sqlite3'
QUERIES = {
    'counts': """SELECT 'people' AS entity,COUNT(*) AS n FROM people
UNION ALL SELECT 'relationships',COUNT(*) FROM relationships
UNION ALL SELECT 'sources',COUNT(*) FROM sources
UNION ALL SELECT 'appointments',COUNT(*) FROM appointments
UNION ALL SELECT 'education',COUNT(*) FROM education
UNION ALL SELECT 'relationship_evidence',COUNT(*) FROM relationship_evidence
UNION ALL SELECT 'video_segments',COUNT(*) FROM video_segments
UNION ALL SELECT 'change_log',COUNT(*) FROM change_log""",
    'tables': "SELECT name FROM sqlite_master WHERE type='table' ORDER BY name",
    'identity_constraint': "SELECT sql FROM sqlite_master WHERE type='table' AND name='people'",
    'relationship_status': 'SELECT status,COUNT(*) AS n FROM relationships GROUP BY status',
    'period_time': 'SELECT temporal_mode,COUNT(*) AS n FROM relationship_periods GROUP BY temporal_mode',
    'appointment_coverage': """SELECT COUNT(*) AS n,COUNT(DISTINCT person_id) AS covered_people,
SUM(start_date IS NULL) AS unknown_start,SUM(end_date IS NULL) AS unknown_end,
COUNT(DISTINCT organization) AS organization_strings FROM appointments""",
    'education_coverage': 'SELECT COUNT(*) AS n,COUNT(DISTINCT person_id) AS covered_people FROM education',
    'evidence_coverage': """SELECT COUNT(*) AS relationships_without_evidence FROM relationships r
WHERE NOT EXISTS(SELECT 1 FROM relationship_evidence e WHERE e.relationship_id=r.id)""",
    'primary_factions': """SELECT f.name,COUNT(*) AS n FROM people p
JOIN factions f ON f.id=p.primary_faction_id GROUP BY f.id ORDER BY n DESC""",
    'video_coverage': """SELECT COUNT(*) AS video_sources,SUM(v.source_id IS NOT NULL) AS structured_analyses
FROM sources s LEFT JOIN video_analyses v ON v.source_id=s.id
WHERE s.source_type LIKE '%视频%'""",
    'source_completeness': """SELECT COUNT(*) AS n,SUM(published_at IS NULL) AS unknown_published_at,
SUM(url IS NULL OR trim(url)='') AS missing_url FROM sources""",
    'locator_completeness': """SELECT COUNT(*) AS n,SUM(locator IS NULL OR trim(locator)='') AS missing_locator
FROM relationship_evidence""",
    'highest_pointer_ownership': """SELECT p.id FROM people p
LEFT JOIN education e ON e.id=p.highest_education_id
LEFT JOIN appointments a ON a.id=p.highest_appointment_id
WHERE e.person_id!=p.id OR a.person_id!=p.id""",
    'unverified_state_change': """SELECT id FROM person_events
WHERE verification!='公开证据支持' AND status_value IS NOT NULL""",
    'integrity': 'PRAGMA integrity_check',
    'foreign_keys': 'PRAGMA foreign_key_check',
}

def audit():
    with sqlite3.connect(DATABASE.resolve().as_uri()+'?mode=ro', uri=True) as db:
        db.row_factory = sqlite3.Row
        results = {name: [dict(row) for row in db.execute(sql)] for name, sql in QUERIES.items()}
        version = db.execute('PRAGMA user_version').fetchone()[0]
    return {
        'captured_at': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'schema_version': version,
        'queries': QUERIES,
        'results': results,
        'files': {'html_bytes': (ROOT/'鲁社长/关系图谱/index.html').stat().st_size},
        'scope': 'Schema and aggregate consistency checks; not independent verification of biography claims or production load testing.',
    }

if __name__ == '__main__':
    print(json.dumps(audit(), ensure_ascii=False, indent=2))
