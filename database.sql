-- Create database
CREATE DATABASE college_db;

-- Use database
USE college_db;

-- Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    year INT
);

-- Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

-- Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
-- Insert students
INSERT INTO students VALUES
(1, 'Aarav', 'Computer Science', 2),
(2, 'Meera', 'Electronics', 3),
(3, 'Rahul', 'Mechanical', 1),
(4, 'Ananya', 'Computer Science', 2);

-- Insert courses
INSERT INTO courses VALUES
(101, 'Python Programming', 4),
(102, 'Data Structures', 3),
(103, 'Database Systems', 4);

-- Insert enrollments
INSERT INTO enrollments VALUES
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 2, 103, 88),
(4, 3, 101, 65),
(5, 4, 102, 90);
