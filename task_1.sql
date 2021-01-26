-- 1. List all courses.name and teachers.name
SELECT DISTINCT 
	courses.name as courses_name,
	teachers.name as teachers_name
FROM courses
	INNER JOIN teachers
    ON courses.id= teachers.id;

-- 2. List teachers who take the highest number of courses.
 SELECT DISTINCT teachers.name AS teachers_name, 
    COUNT(courses.teacher_id) AS number_of_classes
FROM courses
	INNER JOIN teachers
    ON courses.id = teachers.id

GROUP BY courses.teacher_id
ORDER BY number_of_classes DESC
LIMIT 1;

-- 3. List teachers who don't take any course.

SELECT name 
FROM   teachers
WHERE  id NOT IN (SELECT teacher_id FROM courses)
    
    
