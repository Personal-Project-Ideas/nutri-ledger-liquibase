
CREATE TABLE "nutri_ledger"."allowed_users" (
	id SERIAL PRIMARY KEY,
	user_email VARCHAR(255) NOT NULL
);

-- Rollback:
-- DROP TABLE IF EXISTS "nutri_ledger"."allowed_users";