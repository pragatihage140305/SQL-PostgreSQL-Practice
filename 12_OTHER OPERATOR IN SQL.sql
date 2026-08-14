SELECT * FROM employees;

-- find employee where the email is NULL if aplicable

SELECT first_name,last_name,salary
FROM employees
WHERE salary IS NULL;


-- list empoyees sorted by salary in DECENDING order
SELECT first_name, last_name ,salary
FROM employees
ORDER BY salary ASC;

-- limit operator
SELECT first_name, last_name ,salary
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- unique oprator
SELECT COUNT(DISTINCT department) AS DEP_UNIQUE_COUNT
FROM employees;


