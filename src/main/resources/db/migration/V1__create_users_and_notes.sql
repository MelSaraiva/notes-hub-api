-- V1__create_users_and_notes.sql

-- 1) USERS
CREATE TABLE users (
                       id            UUID         NOT NULL,
                       email         VARCHAR(320) NOT NULL,
                       username      VARCHAR(50)  NOT NULL,
                       password_hash VARCHAR(255) NOT NULL,
                       created_at    TIMESTAMPTZ  NOT NULL,
                       updated_at    TIMESTAMPTZ  NOT NULL,

                       CONSTRAINT pk_users PRIMARY KEY (id),
                       CONSTRAINT uk_users_email UNIQUE (email),
                       CONSTRAINT uk_users_username UNIQUE (username)
);

-- 2) NOTES
CREATE TABLE notes (
                       id         UUID          NOT NULL,
                       user_id    UUID          NOT NULL,
                       title      VARCHAR(255)  NOT NULL,
                       content    TEXT          NULL,
                       created_at TIMESTAMPTZ   NOT NULL,
                       updated_at TIMESTAMPTZ   NOT NULL,

                       CONSTRAINT pk_notes PRIMARY KEY (id),
                       CONSTRAINT fk_notes_user_id
                           FOREIGN KEY (user_id)
                               REFERENCES users (id)
                               ON DELETE CASCADE
);

-- 3) INDEXES (performance)
CREATE INDEX ix_notes_user_id ON notes (user_id);

-- Optional (uncomment if you'll often sort/filter by updated_at)
-- CREATE INDEX ix_notes_user_id_updated_at ON notes (user_id, updated_at);
