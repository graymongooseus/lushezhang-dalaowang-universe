-- SQLite reference implementation of the project-wide v9 data contract.
CREATE TABLE schema_migrations(version INTEGER PRIMARY KEY,applied_at TEXT NOT NULL,description TEXT NOT NULL,baseline_counts_json TEXT NOT NULL CHECK(json_valid(baseline_counts_json)));
CREATE TABLE platform_users(id TEXT PRIMARY KEY,display_name TEXT NOT NULL,auth_subject TEXT UNIQUE,account_kind TEXT NOT NULL CHECK(account_kind IN ('human','system')),created_at TEXT NOT NULL,disabled_at TEXT);
CREATE TABLE user_roles(user_id TEXT NOT NULL REFERENCES platform_users(id),role TEXT NOT NULL CHECK(role IN ('contributor','reviewer','admin','migration')),PRIMARY KEY(user_id,role));
CREATE TABLE statements(
 id TEXT PRIMARY KEY,entity_table TEXT NOT NULL,entity_id TEXT NOT NULL,
 current_revision_id TEXT,visibility TEXT NOT NULL CHECK(visibility IN ('public','review','private','hidden')),
 created_at TEXT NOT NULL,UNIQUE(entity_table,entity_id),
 FOREIGN KEY(id,current_revision_id) REFERENCES statement_revisions(statement_id,id) DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE statement_revisions(
 id TEXT PRIMARY KEY,statement_id TEXT NOT NULL REFERENCES statements(id),version INTEGER NOT NULL CHECK(version>0),
 parent_revision_id TEXT,content_json TEXT NOT NULL CHECK(json_valid(content_json)),
 claim_kind TEXT NOT NULL CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')),
 verification_status TEXT NOT NULL CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')),
 author_user_id TEXT REFERENCES platform_users(id),created_at TEXT NOT NULL,legacy_status TEXT,change_reason TEXT NOT NULL,
 UNIQUE(statement_id,version),UNIQUE(statement_id,id),
 FOREIGN KEY(statement_id,parent_revision_id) REFERENCES statement_revisions(statement_id,id) DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE revision_publications(revision_id TEXT PRIMARY KEY REFERENCES statement_revisions(id),published_at TEXT NOT NULL,retired_at TEXT,publication_kind TEXT NOT NULL CHECK(publication_kind IN ('legacy_import','reviewed','maintainer')),CHECK(retired_at IS NULL OR retired_at>=published_at));
CREATE TABLE change_requests(id TEXT PRIMARY KEY,submitted_by TEXT REFERENCES platform_users(id),state TEXT NOT NULL CHECK(state IN ('draft','submitted','needs_changes','approved','rejected','withdrawn')),reason TEXT NOT NULL,created_at TEXT NOT NULL,submitted_at TEXT,idempotency_key TEXT UNIQUE);
CREATE TABLE change_request_items(request_id TEXT NOT NULL REFERENCES change_requests(id),statement_id TEXT NOT NULL REFERENCES statements(id),base_revision_id TEXT REFERENCES statement_revisions(id),proposed_revision_id TEXT NOT NULL REFERENCES statement_revisions(id),PRIMARY KEY(request_id,statement_id));
CREATE TABLE review_decisions(id TEXT PRIMARY KEY,request_id TEXT REFERENCES change_requests(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),reviewer_id TEXT REFERENCES platform_users(id),decision TEXT NOT NULL CHECK(decision IN ('approve','reject','needs_changes','legacy_import','maintainer_publish')),reason TEXT NOT NULL,decided_at TEXT NOT NULL);
CREATE TABLE votes(user_id TEXT NOT NULL REFERENCES platform_users(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),dimension TEXT NOT NULL CHECK(dimension IN ('helpful','needs_evidence')),value INTEGER NOT NULL CHECK(value IN (-1,1)),created_at TEXT NOT NULL,updated_at TEXT NOT NULL,PRIMARY KEY(user_id,revision_id,dimension));
CREATE TABLE discussion_comments(id TEXT PRIMARY KEY,revision_id TEXT NOT NULL REFERENCES statement_revisions(id),author_user_id TEXT NOT NULL REFERENCES platform_users(id),body TEXT NOT NULL,created_at TEXT NOT NULL,hidden_at TEXT);
CREATE TABLE audit_events(id INTEGER PRIMARY KEY,actor_user_id TEXT REFERENCES platform_users(id),action TEXT NOT NULL,entity_type TEXT NOT NULL,entity_id TEXT NOT NULL,request_id TEXT REFERENCES change_requests(id),details_json TEXT NOT NULL CHECK(json_valid(details_json)),created_at TEXT NOT NULL);
-- Operational write latch, not authentication. Only trusted local tools access SQLite.
CREATE TABLE publication_context(id INTEGER PRIMARY KEY CHECK(id=1),reason TEXT NOT NULL);
CREATE TABLE person_names(id TEXT PRIMARY KEY,person_id TEXT NOT NULL REFERENCES people(id),name TEXT NOT NULL,name_type TEXT NOT NULL CHECK(name_type IN ('canonical','alias','pen_name','former')),language TEXT NOT NULL DEFAULT 'zh',source_id TEXT REFERENCES sources(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),UNIQUE(person_id,name,name_type));
CREATE INDEX person_names_search ON person_names(name);
CREATE TABLE external_identifiers(id TEXT PRIMARY KEY,person_id TEXT NOT NULL REFERENCES people(id),provider TEXT NOT NULL,external_id TEXT NOT NULL,source_id TEXT NOT NULL REFERENCES sources(id),UNIQUE(provider,external_id));
CREATE TABLE person_merge_events(id TEXT PRIMARY KEY,source_person_id TEXT NOT NULL REFERENCES people(id),target_person_id TEXT NOT NULL REFERENCES people(id),reviewer_id TEXT REFERENCES platform_users(id),reason TEXT NOT NULL,moved_references_json TEXT NOT NULL CHECK(json_valid(moved_references_json)),created_at TEXT NOT NULL,CHECK(source_person_id!=target_person_id));
CREATE TABLE organizations(id TEXT PRIMARY KEY,name TEXT NOT NULL,organization_type TEXT NOT NULL DEFAULT 'unclassified',identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')),note TEXT NOT NULL);
CREATE INDEX organizations_name ON organizations(name);
CREATE TABLE positions(id TEXT PRIMARY KEY,name TEXT NOT NULL,organization_id TEXT REFERENCES organizations(id),rank_code TEXT,identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')));
CREATE TABLE places(id TEXT PRIMARY KEY,name TEXT NOT NULL,place_type TEXT NOT NULL DEFAULT 'unclassified',identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')));
CREATE TABLE organization_history(id TEXT PRIMARY KEY,organization_id TEXT NOT NULL REFERENCES organizations(id),name TEXT,parent_organization_id TEXT REFERENCES organizations(id),valid_from TEXT,valid_to TEXT,source_id TEXT NOT NULL REFERENCES sources(id));
CREATE TABLE place_history(id TEXT PRIMARY KEY,place_id TEXT NOT NULL REFERENCES places(id),name TEXT,parent_place_id TEXT REFERENCES places(id),valid_from TEXT,valid_to TEXT,source_id TEXT NOT NULL REFERENCES sources(id));
CREATE TABLE source_versions(id TEXT PRIMARY KEY,source_id TEXT NOT NULL REFERENCES sources(id),metadata_json TEXT NOT NULL CHECK(json_valid(metadata_json)),metadata_sha256 TEXT NOT NULL,content_sha256 TEXT,recorded_at TEXT NOT NULL,accessed_at TEXT,version_note TEXT NOT NULL,UNIQUE(source_id,metadata_sha256));
CREATE TABLE source_derivations(derived_source_id TEXT NOT NULL REFERENCES sources(id),origin_source_id TEXT NOT NULL REFERENCES sources(id),derivation_type TEXT NOT NULL CHECK(derivation_type IN ('reprint','excerpt','retelling','translation','alternate_version')),note TEXT NOT NULL,PRIMARY KEY(derived_source_id,origin_source_id),CHECK(derived_source_id!=origin_source_id));
CREATE TABLE source_passages(id TEXT PRIMARY KEY,source_version_id TEXT NOT NULL REFERENCES source_versions(id),locator_type TEXT NOT NULL CHECK(locator_type IN ('video_segment','video_chapter','text_locator','whole_source','page','section')),locator_text TEXT,start_seconds INTEGER,end_seconds INTEGER,page_number TEXT,summary TEXT,segment_id TEXT REFERENCES video_segments(id),CHECK(start_seconds IS NULL OR start_seconds>=0),CHECK(end_seconds IS NULL OR (start_seconds IS NOT NULL AND end_seconds>=start_seconds)));
CREATE INDEX passages_by_source ON source_passages(source_version_id,start_seconds);
CREATE TABLE citations(id TEXT PRIMARY KEY,revision_id TEXT NOT NULL REFERENCES statement_revisions(id),passage_id TEXT NOT NULL REFERENCES source_passages(id),stance TEXT NOT NULL CHECK(stance IN ('supports','challenges','context')),claimant_person_id TEXT REFERENCES people(id),claimant_label TEXT,summary TEXT NOT NULL,legacy_evidence_id TEXT REFERENCES relationship_evidence(id));
CREATE INDEX citations_by_revision ON citations(revision_id);
CREATE TABLE assets(id TEXT PRIMARY KEY,person_id TEXT REFERENCES people(id),storage_key TEXT,source_url TEXT,original_url TEXT,kind TEXT NOT NULL,license_text TEXT,license_url TEXT,accessed_at TEXT,visibility TEXT NOT NULL CHECK(visibility IN ('public','review','private','hidden')),redistribution_status TEXT NOT NULL CHECK(redistribution_status IN ('unreviewed','permitted','restricted')),metadata_json TEXT NOT NULL CHECK(json_valid(metadata_json)));
CREATE TABLE events(id TEXT PRIMARY KEY,title TEXT NOT NULL,event_type TEXT NOT NULL,event_date TEXT,end_date TEXT,date_precision TEXT NOT NULL);
CREATE TABLE event_participants(event_id TEXT NOT NULL REFERENCES events(id),person_id TEXT NOT NULL REFERENCES people(id),role TEXT NOT NULL,statement_id TEXT NOT NULL REFERENCES statements(id),PRIMARY KEY(event_id,person_id,statement_id));
CREATE TABLE review_findings(id TEXT PRIMARY KEY,entity_table TEXT NOT NULL,entity_id TEXT NOT NULL,code TEXT NOT NULL,severity TEXT NOT NULL CHECK(severity IN ('info','review','error')),status TEXT NOT NULL CHECK(status IN ('open','resolved','accepted_unknown')),note TEXT NOT NULL,source_id TEXT REFERENCES sources(id),created_at TEXT NOT NULL);
CREATE TABLE person_review_results(person_id TEXT PRIMARY KEY REFERENCES people(id),reviewed_at TEXT NOT NULL,scope TEXT NOT NULL,identity_assessment TEXT NOT NULL CHECK(identity_assessment IN ('existing_external_reference','source_context_only','pending_identity')),source_ids_json TEXT NOT NULL CHECK(json_valid(source_ids_json)),analysis_files_json TEXT NOT NULL CHECK(json_valid(analysis_files_json)),findings_json TEXT NOT NULL CHECK(json_valid(findings_json)));
CREATE TABLE manuscript_reviews(source_id TEXT PRIMARY KEY REFERENCES sources(id),filename TEXT NOT NULL,sha256 TEXT NOT NULL,review_scope TEXT NOT NULL,reviewed_at TEXT NOT NULL);
CREATE INDEX revisions_statement ON statement_revisions(statement_id,version);
CREATE INDEX requests_queue ON change_requests(state,created_at);
CREATE INDEX decisions_revision ON review_decisions(revision_id,decided_at);
CREATE INDEX findings_entity ON review_findings(entity_table,entity_id,status);
