BEGIN;

CREATE TABLE github_event (
    id serial NOT NULL PRIMARY KEY,
    github_user_id bigint NOT NULL REFERENCES github_user(github_id) ON DELETE CASCADE,
    github_repo_id bigint REFERENCES github_repo(id) ON DELETE CASCADE,
    github_event_type string NOT NULL,
    github_event_date timestamp with time zone  NOT NULL 
);

COMMIT;