DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10,2),
    joining_date DATE,
    age INT
);

INSERT INTO employees
(employee_id, first_name, last_name, department, salary, joining_date, age)
VALUES
(1, 'Joshua', 'Ramos', 'Operations', 65313.80, '2024-05-23', 42),
(2, 'Christina', 'Clark', 'IT', 58827.32, '2021-12-02', 46),
(3, 'Jonathon', 'Sullivan', 'Operations', 57427.31, '2020-04-30', 50),
(4, 'Clinton', 'Aguirre', 'HR', 45352.74, '2021-04-04', 55),
(5, 'Veronica', 'Weber', 'Operations', 78772.56, '2020-10-06', 51),
(6, 'Louis', 'Rivera', 'Finance', 30448.72, '2020-05-05', 41),
(7, 'Sabrina', 'Gonzalez', 'Marketing', 88476.72, '2020-10-15', 48),
(8, 'Jillian', 'Lewis', 'Marketing', 49895.55, '2021-06-08', 33),
(9, 'Caroline', 'Kennedy', 'Finance', 88878.64, '2024-07-17', 47),
(10, 'Adam', 'Sanchez', 'HR', 88331.24, '2020-03-23', 38);

SELECT * FROM employees;

SELECT first_name, salary,
(salary *0.10) AS Bonus
FROM employees;

-- calculate new salary
SELECT first_name, last_name, salary,
    (salary*12) AS annual_salary,
	(salary*0.05) AS increment_salary,
	(salary + salary*0.05) as new_salary,
	(salary*1.05) AS new_salary2
FROM employees;
	


