
-- Q1
SELECT 
	EXTRACT(YEAR FROM start_time) AS year,
	EXTRACT(MONTH FROM start_time) AS month,
	
	COUNT(id) AS total,
	SUM(CASE WHEN id IN (SELECT lesson_id FROM individual_lesson) THEN 1 ELSE 0 END) AS individual,
	SUM(CASE WHEN id IN (SELECT lesson_id FROM group_lesson) THEN 1 ELSE 0 END) AS group,
	SUM(CASE WHEN id  IN (SELECT lesson_id FROM ensembles) THEN 1 ELSE 0 END) AS ensemble

FROM lesson
GROUP BY month,year
ORDER BY year,month;

-- Q2
SELECT no_of_siblings, COUNT(id) AS no_of_students
FROM (SELECT student.id, COUNT(sibling.sibling_student_id) AS no_of_siblings FROM student
	LEFT JOIN sibling ON student.id = sibling.student_id GROUP BY student.id) AS no_of_siblings
GROUP BY no_of_siblings
ORDER BY no_of_siblings;

-- Q3

SELECT i.id AS instructor_id, p.first_name , p.last_name, 
	COUNT(l.id) AS no_of_lessons
FROM lesson AS l
INNER JOIN instructor AS i ON l.instructor_id = i.id 
INNER JOIN person AS p ON i.person_id = p.id

WHERE (SELECT EXTRACT(MONTH FROM l.start_time) = EXTRACT(MONTH FROM CURRENT_DATE))
GROUP BY i.id, p.first_name, p.last_name
ORDER BY COUNT(l.id) DESC;


-- Q4
SELECT
	CASE
	WHEN EXTRACT(DOW FROM l.start_time) = 1 THEN 'Monday'
	WHEN EXTRACT(DOW FROM l.start_time) = 2 THEN 'Tuesday'
	WHEN EXTRACT(DOW FROM l.start_time) = 3 THEN 'Wednesday'
	WHEN EXTRACT(DOW FROM l.start_time) = 4 THEN 'Thursday'
	WHEN EXTRACT(DOW FROM l.start_time) = 5 THEN 'Friday'
	WHEN EXTRACT(DOW FROM l.start_time) = 6 THEN 'Saturday'
	WHEN EXTRACT(DOW FROM l.start_time) = 7 THEN 'Sunday'
	END AS weekday,

	g.genre_name AS genre,

	CASE 
	WHEN e.max_students - COUNT(student_id) FILTER (WHERE student_id IN (SELECT student_id FROM lesson_booking))>2 THEN 'Many seats'
	WHEN e.max_students - COUNT(student_id) FILTER (WHERE student_id IN (SELECT student_id FROM lesson_booking))= 0 THEN 'No seats'
	ELSE '1 or 2 seats'
	END AS free_seats

FROM lesson AS l
JOIN ensembles AS e ON e.lesson_id = l.id
JOIN genre AS g ON e.genre_id = g.genre_id
LEFT JOIN lesson_booking AS lb ON lb.lesson_id = l.id
WHERE(SELECT EXTRACT(WEEK FROM l.start_time) = EXTRACT(WEEK FROM CURRENT_DATE + INTERVAL '1 WEEK'))
GROUP BY l.start_time, g.genre_id, e.max_students
ORDER BY weekday, genre; 
