CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;

CREATE TABLE people (
	id uuid NOT NULL PRIMARY KEY,
	name varchar NOT NULL
);

ALTER TABLE people OWNER TO postgres;

INSERT INTO people(id, name) VALUES (uuid_generate_v4(), 'Will');
