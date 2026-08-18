-- JOINS IN SQL PART 2
-- FULL OUTER JOIN,CROSS JOIN,SELF JOIN

-- CREATE EMPLOYEES TABLE
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
    employees_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name  VARCHAR(50),
	department_id INT	
);

-- insert data intp employees
INSERT INTO employees(first_name,last_name,department_id)
VALUES
('Rahul','Sharma',101),
('Priya','Mehta',102),
('Ankit','Varma',103),
('Simran','Kaur',NULL),
('Aman','singh',101)

SELECT * FROM employees;

-- create table department
CREATE TABLE department(
   department_id INT PRIMARY KEY,
   department_name VARCHAR(50)
);

-- insert data into departments
INSERT INTO department(department_id,department_name)
VALUES
(101,'Sales'),
(102,'Marketing'),
(103,'IT'),
(104,'HR')


SELECT * FROM department;

-- FULL OUTER JOIN
SELECT e.employees_id, e.first_name,e.last_name,
       d.department_id, d.department_name
FROM employees e
FULL OUTER JOIN
department d
ON e.department_id = d.department_id;


-- CROSS JOIN
SELECT e.first_name,e.last_name,d.department_name
FROM employees e
CROSS JOIN
department d;


-- SELF JOIN
SELECT e1.first_name AS employee_name1,
       e2.first_name AS employee_name2
FROM employees e1
JOIN employees e2
ON e1.department_id = e2.department_id
AND e1.employees_id <> e2.employees_id;



