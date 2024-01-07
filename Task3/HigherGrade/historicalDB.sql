CREATE TABLE "student" (
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

CREATE TABLE "lesson" (
    "id" SERIAL PRIMARY KEY,
    "lesson_type" VARCHAR(500) NOT NULL,
    "level" VARCHAR(100) NOT NULL,
    "genre" VARCHAR(500),
    "instrument" VARCHAR(500),
    "price" DOUBLE PRECISION NOT NULL,
    "start_time" TIMESTAMP(6) NOT NULL
);

CREATE TABLE "booking" (
    "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
    "lesson_id"  INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
    PRIMARY KEY("student_id", "lesson_id")
);