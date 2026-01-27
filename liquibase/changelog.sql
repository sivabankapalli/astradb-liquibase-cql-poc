--liquibase formatted sql

--changeset poc:1-create-customer-table splitStatements:false context:prod
CREATE TABLE IF NOT EXISTS customer1 (
  customer_id text PRIMARY KEY,
  full_name text,
  email text,
  created_at timestamp
) WITH default_time_to_live = 0;

--changeset poc:2-create-customer-index splitStatements:false context:prod
CREATE INDEX IF NOT EXISTS customer_email_idx ON customer1 (email);
