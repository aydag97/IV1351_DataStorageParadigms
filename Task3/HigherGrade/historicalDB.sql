-- create the database

CREATE TABLE "historical_records" (
 "id" SERIAL PRIMARY KEY,
 "lesson_type" VARCHAR(500) NOT NULL,
 "genre" VARCHAR(500),
 "instrument" VARCHAR(500),
 "lesson_price" DOUBLE PRECISION NOT NULL,
 "student_first_name" VARCHAR(200) NOT NULL,
 "student_last_name" VARCHAR(200) NOT NULL,
 "student_email" VARCHAR(200) NOT NULL 
);


-- retrieve data from the first database

SELECT 
    lt.type AS lesson_type,
    COALESCE(g.genre_name, '') AS genre,
    COALESCE(i.instrument_name, '') AS instrument,
    ps.price AS lesson_price,
    p.first_name AS student_first_name,
    p.last_name AS student_last_name,
    p.email AS student_email
FROM 
    lesson l
JOIN 
    price_scheme ps ON l.price_scheme_id = ps.id
JOIN 
    lesson_type lt ON ps.lesson_type_id = lt.id
LEFT JOIN 
    ensembles eg ON l.id = eg.lesson_id
LEFT JOIN 
    genre g ON eg.genre_id = g.genre_id
LEFT JOIN 
    group_lesson gl ON l.id = gl.lesson_id
LEFT JOIN 
    individual_lesson il ON l.id = il.lesson_id
JOIN 
    instrument i ON COALESCE (gl.instrument_id , il.instrument_id) = i.id
JOIN 
    lesson_booking lb ON l.id = lb.lesson_id
JOIN 
    student s ON lb.student_id = s.id
JOIN 
    person p ON s.person_id = p.id
	
ORDER BY l.start_time ASC;