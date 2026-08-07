
INSERT INTO employee (name, position, department, hire_date, salary)
VALUES
('Rahul', 'Software Engineer', 'IT', '2024-01-15', 45000),
('Priya', 'HR Executive', 'HR', '2023-06-10', 38000),
('Amit', 'Data Analyst', 'Analytics', '2025-03-20', 55000),
('Sneha', 'Accountant', 'Finance', '2022-11-05', 42000),
('Rohan', 'Sales Executive', 'Sales', '2024-07-18', 40000),
('Neha', 'Data Scientist', 'Analytics', '2025-01-10', 65000);

SELECT * FROM employee;



TRUNCATE TABLE employee;


TRUNCATE TABLE employee RESTART IDENTITY;