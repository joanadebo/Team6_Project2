-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/zFW5fy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "event" (
    "id" serial   NOT NULL,
    "sport" varchar(50)   NOT NULL,
    "discipline" varchar(50)   NOT NULL,
    "name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_event" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "country" (
    "ioc_code" varchar(3)   NOT NULL,
    "iso_code" varchar(2)   NOT NULL,
    "name" varchar(32)   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "ioc_code"
     )
);

CREATE TABLE "olympic_event" (
    "id" serial   NOT NULL,
    "city" varchar(50)   NOT NULL,
    "season" varchar(20)   NOT NULL,
    "year" int   NOT NULL,
    "event_id" int   NOT NULL,
    "athlete_name" varchar(100)   NOT NULL,
    "athlete_country_name" varchar(32)   NOT NULL,
    "country_ioc" varchar(3)   NOT NULL,
    "medal" varchar(10)   NOT NULL,
    CONSTRAINT "pk_olympic_event" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "olympic_event" ADD CONSTRAINT "fk_olympic_event_event_id" FOREIGN KEY("event_id")
REFERENCES "event" ("id");

ALTER TABLE "olympic_event" ADD CONSTRAINT "fk_olympic_event_country_ioc" FOREIGN KEY("country_ioc")
REFERENCES "country" ("ioc_code");

