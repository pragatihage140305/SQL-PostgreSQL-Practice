-- Drop table if already exits 
DROP TABLE IF EXISTS employee;

-- create table
CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary DECIMAL(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK (age>=18)
);

-- Insert sample data into employees table

INSERT INTO employees
(first_name, last_name, department, salary, joining_date, age)
VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

SELECT * FROM employees;

-- 1 Retrieve all employees' first names and their departments.
SELECT first_name , department FROM employees;


-- Q2. Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees 
Set salary = salary * 1.10
WHERE department = 'IT';

-- Q3: Delete all employees who are older than 34 years.
delete from employees
WHERE age > 34;


-- Q4: Add a new column email to the employees table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Q5: Rename the column first_name to employee_name.
ALTER TABLE employees
RENAME COLUMN first_name TO employee_name;


-- Q6 Change the data type of the salary column from its current type to INTEGER.
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;

-- Q7:Add a CHECK constraint to ensure that the age of employees is greater than 18.
ALTER TABLE employees
ADD CONSTRAINT age CHECK (age > 18);


-- Q8 Add a NOT NULL constraint to the department column.
ALTER TABLE employees
ALTER COLUMN department SET NOT NULL; 

-- Q9 Insert a new employee into the employees table with your own details.
INSERT INTO employees
(employee_name, last_name, department, salary, joining_date, age, email)
VALUES
('Pragati', 'Hage', 'CSE', 60000, '2026-08-08', 22, 'pragati@gmail.com');

-- Retrieve all employees sorted by their salary in descending order.
SELECT *
FROM employees
ORDER BY salary DESC;


SELECT * FROM employees
ORDER BY employee_id ASC;
