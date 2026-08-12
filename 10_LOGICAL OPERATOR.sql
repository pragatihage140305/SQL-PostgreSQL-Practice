SELECT * FROM employees;

-- AND OPERATOR
SELECT * FROM employees
WHERE age>=40 AND salary >= 50000;

-- OR OPERATOR
SELECT * FROM employees
WHERE age>=30 OR salary >= 90000;

-- NOT operator
SELECT * FROM employees
WHERE NOT (department = 'IT');

