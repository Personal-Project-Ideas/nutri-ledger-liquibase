CREATE TABLE "nutri_ledger"."users" (
  "id" uuid PRIMARY KEY,
  "full_name" varchar(255),
  "age" integer,
  "email" varchar,
  "password" varchar,
  "created_at" timestamptz,
  "updated_at" timestamptz
);


-- Rollback:
-- DROP TABLE IF EXISTS "nutri_ledger"."users";
