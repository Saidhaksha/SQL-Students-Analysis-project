-- 1. View all students
SELECT * FROM students;

-- 2. Count total students
SELECT COUNT(*) AS total_students FROM students;

-- 3. Average marks per course
SELECT c.course_name, AVG(e.marks) AS average_marks
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- 4. Students scoring above 80
SELECT s.name, e.marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
WHERE e.marks > 80;

-- 5. Courses with average marks above 75
SELECT c.course_name, AVG(e.marks) AS avg_marks
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING AVG(e.marks) > 75;
