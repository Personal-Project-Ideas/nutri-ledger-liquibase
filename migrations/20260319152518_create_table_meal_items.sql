CREATE TABLE "nutri_ledger"."meal_items" (
  "id" serial PRIMARY KEY,
  "meal_id" uuid,
  "food_portion_id" uuid,
  "consumed_quantity" integer,
  "calories" integer,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

ALTER TABLE "nutri_ledger"."meal_items" ADD FOREIGN KEY ("meal_id") REFERENCES "nutri_ledger"."meals" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "nutri_ledger"."meal_items" ADD FOREIGN KEY ("food_portion_id") REFERENCES "nutri_ledger"."food_portions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

-- rollback:
-- ALTER TABLE "nutri_ledger"."meal_items" DROP CONSTRAINT IF EXISTS "meal_items_meal_id_fkey";
-- ALTER TABLE "nutri_ledger"."meal_items" DROP CONSTRAINT IF EXISTS "meal_items_food_portion_id_fkey";
-- DROP TABLE IF EXISTS "nutri_ledger"."meal_items";