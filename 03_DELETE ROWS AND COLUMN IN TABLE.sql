CREATE TABLE employee2(
   employee_id SERIAL PRIMARY KEY,
   name VARCHAR(50),
   position VARCHAR(50),
   department VARCHAR(50),
   hire_date DATE,
   salary NUMERIC(10,2)
);

SELECT  * FROM  employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
VALUES
(101, 'Rahul', 'Software Engineer', 'IT', '2024-01-15', 45000),
(102, 'Priya', 'HR Executive', 'HR', '2023-06-10', 38000),
(103, 'Amit', 'Data Analyst', 'Analytics', '2025-03-20', 55000),
(104, 'Sneha', 'Accountant', 'Finance', '2022-11-05', 42000),
(105, 'Rohan', 'Sales Executive', 'Sales', '2024-07-18', 40000),
(106, 'Neha', 'Data Scientist', 'Analytics', '2025-01-10', 65000);


DELETE FROM employee2
WHERE employee_id = 106;

ALTER TABLE employee2
DROP COLUMN salary;


DROP TABLE IF EXISTS employee2;

DROP DATABASE IF EXISTS company;
