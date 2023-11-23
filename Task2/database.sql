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
 "person_number" UNIQUE VARCHAR(20) NOT NULL,
 "first_name" VARCHAR(200) NOT NULL,
 "last_name" VARCHAR(200) NOT NULL,
 "email" UNIQUE VARCHAR(200) NOT NULL,
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
 "instrument_id" INT NOT NULL
);



CREATE TABLE "student" (
 "id" SERIAL PRIMARY KEY,
 "person_id" INT NOT NULL,
 "has_sibling" BOOLEAN NOT NULL
);


CREATE TABLE "contact_person" (
 "id" SERIAL PRIMARY KEY,
 "student_id" INT NOT NULL,
 "relationship" VARCHAR(100) NOT NULL,
 "person_id" INT NOT NULL
);

ALTER TABLE "contact_person" ADD CONSTRAINT PK_contact_person PRIMARY KEY (id,student_id);


CREATE TABLE "instructor" (
 "id" SERIAL PRIMARY KEY,
 "employment_id" UNIQUE VARCHAR(100) NOT NULL,
 "can_teach_ensembles" BOOLEAN NOT NULL,
 "person_id" INT NOT NULL
);


CREATE TABLE "known_instruments" (
 "instructor_id" INT NOT NULL,
 "instrument_id" INT NOT NULL
);

ALTER TABLE "known_instruments" ADD CONSTRAINT PK_known_instruments PRIMARY KEY (instructor_id,instrument_id);


CREATE TABLE "lease_contract" (
 "id" SERIAL PRIMARY KEY,
 "student_id" INT NOT NULL,
 "instrument_id" INT NOT NULL,
 "start_date" TIMESTAMP(10) NOT NULL,
 "end_date" TIMESTAMP(10) NOT NULL,
 "rental_fee" INT NOT NULL
);



CREATE TABLE lease_policy (
 "contract_id" INT NOT NULL,
 "rental_limit" VARCHAR(10) NOT NULL,
 "rental_period" VARCHAR(10) NOT NULL
);

ALTER TABLE "lease_policy" ADD CONSTRAINT PK_lease_policy PRIMARY KEY (contract_id);



CREATE TABLE "lesson" (
 "id"  SERIAL PRIMARY KEY,
 "start_time" TIMESTAMP(10) NOT NULL,
 "end_time" TIMESTAMP(10) NOT NULL,
 "instructor_id" INT NOT NULL,
 "skill_level_id" INT NOT NULL,
 "room_id" INT NOT NULL
);



CREATE TABLE "lesson_booking" (
 "student_id" INT NOT NULL,
 "lesson_id"  INT NOT NULL
);

ALTER TABLE "lesson_booking" ADD CONSTRAINT PK_lesson_booking PRIMARY KEY (student_id,lesson_id );


CREATE TABLE "price_scheme" (
 "id" SERIAL PRIMARY KEY,
 "lesson_id"  INT NOT NULL,
 "skill_level_id" INT NOT NULL,
 "price" DOUBLE PRECISION NOT NULL,
 "valid_from" TIMESTAMP(10) NOT NULL,
 "valid_to" TIMESTAMP(10) NOT NULL,
 "discount_rate" INT
);



CREATE TABLE "sibling" (
 "sibling_id" SERIAL PRIMARY KEY,
 "student_id" INT NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id,student_id);


CREATE TABLE "ensembles" (
 "ensemble_id" SERIAL PRIMARY KEY,
 "lesson_id"  INT NOT NULL,
 "min_students" INT NOT NULL,
 "max_students" INT NOT NULL,
 "genre_id" INT NOT NULL
);

ALTER TABLE "ensembles" ADD CONSTRAINT PK_ensembles PRIMARY KEY (ensemble_id,lesson_id );


CREATE TABLE "group_lesson" (
 "group_lesson_id" SERIAL PRIMARY KEY,
 "lesson_id"  INT NOT NULL,
 "min_students" INT NOT NULL,
 "max_students" INT NOT NULL,
 "instrument_id" INT NOT NULL
);

ALTER TABLE "group_lesson" ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id,lesson_id );


CREATE TABLE "individual_lesson" (
 "individual_lesson_id" SERIAL PRIMARY KEY,
 "lesson_id"  INT NOT NULL,
 "student_id" INT NOT NULL,
 "instrument_id" INT NOT NULL
);

ALTER TABLE "individual_lesson" ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id,lesson_id );


ALTER TABLE "stock" ADD CONSTRAINT FK_stock_0 FOREIGN KEY (instrument_id) REFERENCES "instrument" ("id") ON DELETE SET NULL;


ALTER TABLE "student" ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES "person" ("id");


ALTER TABLE "contact_person" ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES "student" ("id") ON DELETE CASCADE;
ALTER TABLE "contact_person" ADD CONSTRAINT FK_contact_person_1 FOREIGN KEY (person_id) REFERENCES "person" ("id");


ALTER TABLE "instructor" ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES "person" ("id");


ALTER TABLE "known_instruments" ADD CONSTRAINT FK_known_instruments_0 FOREIGN KEY (instructor_id) REFERENCES "instructor" ("id") ON DELETE CASCADE;
ALTER TABLE "known_instruments" ADD CONSTRAINT FK_known_instruments_1 FOREIGN KEY (instrument_id) REFERENCES "instrument" ("id") ON DELETE CASCADE;


ALTER TABLE "lease_contract" ADD CONSTRAINT FK_lease_contract_0 FOREIGN KEY (student_id) REFERENCES "student" ("id") ON DELETE SET NULL;
ALTER TABLE "lease_contract" ADD CONSTRAINT FK_lease_contract_1 FOREIGN KEY (instrument_id) REFERENCES "instrument" ("id") ON DELETE SET NULL;


ALTER TABLE "lease_policy" ADD CONSTRAINT FK_lease_policy_0 FOREIGN KEY (contract_id) REFERENCES "lease_contract" ("id") ON DELETE CASCADE;


ALTER TABLE "lesson" ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES "instructor" ("id") ON DELETE SET NULL;
ALTER TABLE "lesson" ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (skill_level_id) REFERENCES "skill_level" ("id") ON DELETE SET NULL;
ALTER TABLE "lesson" ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (room_id) REFERENCES "room" ("id") ON DELETE SETT NULL;


ALTER TABLE "lesson_booking" ADD CONSTRAINT FK_lesson_booking_0 FOREIGN KEY (student_id) REFERENCES "student" ("id") ON DELETE CASCADE;
ALTER TABLE "lesson_booking" ADD CONSTRAINT FK_lesson_booking_1 FOREIGN KEY (lesson_id ) REFERENCES "lesson" ("id" ) ON DELETE CASCADE;


ALTER TABLE "price_scheme" ADD CONSTRAINT FK_price_scheme_0 FOREIGN KEY (lesson_id ) REFERENCES "lesson" ("id" ) ON DELETE SET NULL;
ALTER TABLE "price_scheme" ADD CONSTRAINT FK_price_scheme_1 FOREIGN KEY (skill_level_id) REFERENCES "skill_level" ("id") ON DELETE SET NULL;


ALTER TABLE "sibling" ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES "student" ("id") ON DELETE CASCADE;


ALTER TABLE "ensembles" ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (lesson_id ) REFERENCES "lesson" ("id" ) ON DELETE CASCADE;
ALTER TABLE "ensembles" ADD CONSTRAINT FK_ensembles_1 FOREIGN KEY (genre_id) REFERENCES "genre" ("genre_id") ON DELETE CASCADE;


ALTER TABLE "group_lesson" ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id ) REFERENCES "lesson" ("id" ) ON DELETE CASCADE;
ALTER TABLE "group_lesson" ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (instrument_id) REFERENCES "instrument" ("id") ON DELETE CASCADE;


ALTER TABLE "individual_lesson" ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id ) REFERENCES "lesson" ("id" ) ON DELETE CASCADE;
ALTER TABLE "individual_lesson" ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (instrument_id) REFERENCES "instrument" ("id") ON DELETE CASCADE;


