CREATE TABLE "nutri_ledger"."meals" (
  "id" uuid PRIMARY KEY,
  "meal_date" date,
  "meal_time" time,
  "name" varchar,
  "user_id" uuid,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

ALTER TABLE "nutri_ledger"."meals" ADD FOREIGN KEY ("user_id") REFERENCES "nutri_ledger"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

-- rollback:
-- ALTER TABLE "nutri_ledger"."meals" DROP CONSTRAINT IF EXISTS "meals_user_id_fkey";
-- DROP TABLE IF EXISTS "nutri_ledger"."meals";