-- \c postgres

DROP DATABASE IF EXISTS todos;
CREATE DATABASE todos owner "ec2-user";

-- \c todos

SET client_min_messages TO WARNING;

CREATE TABLE lists(id serial PRIMARY KEY,
                  name text NOT NULL UNIQUE
                  );

CREATE TABLE todos(id serial PRIMARY KEY,
                  name text NOT NULL,
                  completed boolean NOT NULL DEFAULT(false),
                  list_id integer NOT NULL REFERENCES lists (id)
                  );