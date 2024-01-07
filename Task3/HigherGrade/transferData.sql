
-- A record of all students
INSERT INTO "student" ("id", "person_number", "first_name", "last_name", "email", "phone", "street", "zip", "city")
SELECT "id", "person_number", "first_name", "last_name", "email", "phone", "street", "zip", "city"
FROM dblink('dbname=SoundGoodSchool user=postgres password=Aida97',
'SELECT student."id", "person_number", "first_name", "last_name", "email", "phone", "street", "zip", "city"
FROM
"student" LEFT JOIN "person" ON person.id = student.person_id;')
AS "student" ("id" INT, "person_number" VARCHAR(20), "first_name" VARCHAR(200), "last_name" VARCHAR(200), "email" VARCHAR(200), 
                "phone" VARCHAR(20), "street" VARCHAR(200), "zip" VARCHAR(50), "city" VARCHAR(200));

-- A record of all given lessons 

INSERT INTO "lesson" ("id", "lesson_type", "level", "genre", "instrument", "price", "start_time")
SELECT "id", "lesson_type", "level", "genre", "instrument", "price", "start_time"
FROM dblink('dbname=SoundGoodSchool user=postgres password=Aida97',
'SELECT lesson."id", lt.type AS lesson_type, sl.level AS level, gr.genre_name AS genre, ins.instrument_name AS instrument,
ps.price AS price, start_time
FROM 
lesson 
LEFT JOIN price_scheme ps ON lesson.price_scheme_id = ps.id
LEFT JOIN lesson_type lt ON ps.lesson_type_id = lt.id
LEFT JOIN skill_level sl ON ps.skill_level_id = sl.id
LEFT JOIN ensembles e ON lesson.id = e.lesson_id
LEFT JOIN genre gr ON e.genre_id = gr.genre_id
LEFT JOIN group_lesson gl ON lesson.id = gl.lesson_id
LEFT JOIN individual_lesson il ON lesson.id = il.lesson_id
LEFT JOIN instrument ins ON COALESCE(gl.instrument_id , il.instrument_id) = ins.id;')
AS "lesson" ("id" INT, "lesson_type" VARCHAR(500), "level" VARCHAR(100), "genre" VARCHAR(500), 
            "instrument" VARCHAR(500), "price" DOUBLE PRECISION, "start_time" TIMESTAMP(6));

-- A record of lesson bookings; showing which student booked which lesson
INSERT INTO "booking" ("student_id", "lesson_id")
SELECT "student_id", "lesson_id"
FROM dblink('dbname=SoundGoodSchool user=postgres password=Aida97',
'SELECT student_id, lesson_id
FROM lesson_booking; ')
AS "booking" ("student_id" INT, "lesson_id" INT);
