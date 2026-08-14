DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course)
VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rohan Gupta', 'Computer Science');

SELECT * FROM students_2023;


CREATE TABLE students_2024(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


SELECT * FROM students_2024;

-- UNION COMBINE RESULTS ,KEEPS DUPLICATE

SELECT student_name, course
FROM students_2023

UNION 

SELECT student_name, course
FROM students_2024;

-- UNION ALL COMBINE RESULTS ,KEEPS DUPLICATE

SELECT student_name, course
FROM students_2023

UNION ALL 

SELECT student_name, course
FROM students_2024;

-- INTERSECT RETURNS COMMON RESULTS IN BOTH TABLES
SELECT student_name, course
FROM students_2023

INTERSECT 

SELECT student_name, course
FROM students_2024;


-- EXCEPT
SELECT student_name, course
FROM students_2023

EXCEPT

SELECT student_name, course
FROM students_2024;