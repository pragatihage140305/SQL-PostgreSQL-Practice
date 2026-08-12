-- comparission oprator
SELECT * FROM employees;

-- greater and equal
SELECT * FROM employees
WHERE age >= 30;

-- match all except 30

SELECT first_name ,age FROM employees
WHERE age <> 30;

-- salary greater tha 5000

SELECT first_name,salary FROM employees
WHERE salary>=50000;

-- salary less than or equal 5000
SELECT first_name,salary FROM employees
WHERE salary<=50000;



