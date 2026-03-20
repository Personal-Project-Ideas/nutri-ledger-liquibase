CREATE TABLE "nutri_ledger"."food_portions" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "normalized_name" varchar,
  "serving_quantity" integer,
  "serving_unit" varchar,
  "calories_per_serving" integer,
  "created_at" timestamptz,
  "updated_at" timestamptz
);
-- rollback:
-- DROP TABLE IF EXISTS "nutri_ledger"."food_portions";