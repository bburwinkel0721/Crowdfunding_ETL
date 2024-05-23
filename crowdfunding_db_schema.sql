-- drops the tables if they were already created
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

-- this schema creates a table for the category csv
CREATE TABLE "category" (
    "category_id" varchar(5) PRIMARY KEY NOT NULL,
    "category" varchar(20) NOT NULL,
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(5) PRIMARY KEY NOT NULL,
    "subcategory" varchar(20) NOT NULL,

);

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(60) NOT NULL,
);

CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar(50) NOT NULL,
    "description" varchar(100) NOT NULL,
    "goal" float NOT NULL,
    "pledged" float NOT NULL,
    "outcome" varchar(20) NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(10) NOT NULL,
    "currency" varchar(10) NOT NULL,
    "launched_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" varchar(10) NOT NULL,
    "subcategory_id" varchar(10) NOT NULL,
    FOREIGN KEY ("contact_id") REFERENCES "contacts"("contact_id"),
    FOREIGN KEY ("category_id") REFERENCES "category"("category_id"),
    FOREIGN KEY ("subcategory_id") REFERENCES "subcategory"("subcategory_id")
);
