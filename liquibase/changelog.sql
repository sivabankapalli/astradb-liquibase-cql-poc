-- liquibase formatted sql

-- changeset poc:1
CREATE TABLE IF NOT EXISTS customer (
  customer_id text PRIMARY KEY,
  full_name text,
  email text,
  created_at timestamp
);

-- changeset poc:2
CREATE INDEX IF NOT EXISTS customer_email_idx ON customer (email);
