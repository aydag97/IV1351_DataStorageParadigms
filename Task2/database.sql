CREATE TABLE "genre" (
 "genre_id" SERIAL PRIMARY KEY,
 "genre_name" VARCHAR(500) NOT NULL
);



CREATE TABLE "instrument" (
 "id" SERIAL PRIMARY KEY,
 "instrument_name" VARCHAR(500) NOT NULL
);



CREATE TABLE "person" (
 "id" SERIAL PRIMARY KEY,
 "person_number" VARCHAR(20) UNIQUE NOT NULL,
 "first_name" VARCHAR(200) NOT NULL,
 "last_name" VARCHAR(200) NOT NULL,
 "email"  VARCHAR(200) UNIQUE NOT NULL,
 "phone" VARCHAR(20) NOT NULL,
 "street" VARCHAR(200) NOT NULL,
 "zip" VARCHAR(50) NOT NULL,
 "city" VARCHAR(200) NOT NULL
);



CREATE TABLE "room" (
 "id" SERIAL PRIMARY KEY,
 "room_name" VARCHAR(200) NOT NULL
);



CREATE TABLE "skill_level" (
 "id" SERIAL PRIMARY KEY,
 "level" VARCHAR(100) NOT NULL
);




CREATE TABLE "stock" (
 "id" SERIAL PRIMARY KEY,
 "type" VARCHAR(100) NOT NULL,
 "brand" VARCHAR(100) NOT NULL,
 "quantity" INT NOT NULL,
 "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE SET NULL
);



CREATE TABLE "student" (
 "id" SERIAL PRIMARY KEY,
 "person_id" INT NOT NULL REFERENCES "person",
 "has_sibling" BOOLEAN NOT NULL
);

CREATE TABLE "sibling" (
 "sibling_id" SERIAL ,
 "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
 PRIMARY KEY("sibling_id", "student_id")
);


CREATE TABLE "contact_person" (
 "id" SERIAL,
 "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
 "relationship" VARCHAR(100) NOT NULL,
 "person_id" INT NOT NULL REFERENCES "person",
 PRIMARY KEY ("id","student_id")
);



CREATE TABLE "instructor" (
 "id" SERIAL PRIMARY KEY,
 "employment_id"  VARCHAR(100) UNIQUE NOT NULL,
 "can_teach_ensembles" BOOLEAN NOT NULL,
 "person_id" INT NOT NULL REFERENCES "person"
);


CREATE TABLE "known_instruments" (
 "instructor_id" INT NOT NULL REFERENCES "instructor" ON DELETE CASCADE,
 "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE CASCADE,
 PRIMARY KEY ("instructor_id", "instrument_id")
);



CREATE TABLE "lease_policy" (
 "id" SERIAL PRIMARY KEY,
 "rental_limit" VARCHAR(500) NOT NULL,
 "rental_period" VARCHAR(500) NOT NULL
);

CREATE TABLE "lease_contract" (
 "id" SERIAL PRIMARY KEY,
 "student_id" INT NOT NULL REFERENCES "student" ON DELETE SET NULL,
 "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE SET NULL,
 "start_date" TIMESTAMP(6) NOT NULL,
 "end_date" TIMESTAMP(6) NOT NULL,
 "rental_fee" INT NOT NULL,
 "lease_policy_id" INT NOT NULL REFERENCES "lease_policy" ON DELETE SET NULL
);



CREATE TABLE "lesson" (
 "id"  SERIAL PRIMARY KEY,
 "start_time" TIMESTAMP(6) NOT NULL,
 "end_time" TIMESTAMP(6) NOT NULL,
 "instructor_id" INT NOT NULL REFERENCES "instructor" ON DELETE SET NULL,
 "skill_level_id" INT NOT NULL REFERENCES "skill_level" ON DELETE SET NULL,
 "room_id" INT NOT NULL REFERENCES "room" ON DELETE SET NULL
);



CREATE TABLE "lesson_booking" (
 "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
 "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 PRIMARY KEY("student_id", "lesson_id")
);



CREATE TABLE "price_scheme" (
 "id" SERIAL PRIMARY KEY,
 "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE SET NULL,
 "skill_level_id" INT NOT NULL REFERENCES "skill_level" ON DELETE SET NULL,
 "price" DOUBLE PRECISION NOT NULL,
 "valid_from" TIMESTAMP(6) NOT NULL,
 "valid_to" TIMESTAMP(6) NOT NULL,
 "discount_rate" INT
);



CREATE TABLE "ensembles" (
 "ensemble_id" SERIAL,
 "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "min_students" INT NOT NULL,
 "max_students" INT NOT NULL,
 "genre_id" INT NOT NULL REFERENCES "genre" ON DELETE CASCADE,
 PRIMARY KEY("ensemble_id", "lesson_id")
);



CREATE TABLE "group_lesson" (
 "group_lesson_id" SERIAL,
 "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "min_students" INT NOT NULL,
 "max_students" INT NOT NULL,
 "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE CASCADE,
 PRIMARY KEY("group_lesson_id", "lesson_id")
);



CREATE TABLE "individual_lesson" (
 "individual_lesson_id" SERIAL,
 "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
 "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE CASCADE,
 PRIMARY KEY("individual_lesson_id", "lesson_id")
);




