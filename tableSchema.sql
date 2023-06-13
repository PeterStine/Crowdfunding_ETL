CREATE TABLE "category" (
  "category_ids" varchar PRIMARY KEY,
  "category" varchar
);

CREATE TABLE "subcategory" (
  "subcategory_id" varchar PRIMARY KEY,
  "subcategory" varchar
);

CREATE TABLE "contacts" (
  "contact_id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "contact_email" varchar
);

CREATE TABLE "campaign" (
  "cf_id" integer PRIMARY KEY,
  "contact_id" integer,
  "company_name" varchar,
  "description" varchar,
  "goal" float,
  "pledged" float,
  "outcome" varchar,
  "backers_count" integer,
  "country" varchar,
  "currency" varchar,
  "launched_date" varchar,
  "end_date" varchar,
  "category_ids" varchar,
  "subcategory_id" varchar
);

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_ids") REFERENCES "category" ("category_ids");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");
