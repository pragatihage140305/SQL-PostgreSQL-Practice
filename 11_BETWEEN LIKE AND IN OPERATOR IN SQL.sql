-- between like and in operator in sql
SELECT * FROM employees;


-- retrive employees whose salary is between 40000 and 60000 use between operators

SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;



ALTER TABLE employees
ADD COLUMN email_address VARCHAR(100);

UPDATE employees
SET email_address = CASE employee_id
    WHEN 1 THEN 'joshua.ramos@gmail.com'
    WHEN 2 THEN 'christina.clark@gmail.com'
    WHEN 3 THEN 'jonathon.sullivan@gmail.com'
    WHEN 4 THEN 'clinton.aguirre@gmail.com'
    WHEN 5 THEN 'veronica.weber@gmail.com'
    WHEN 6 THEN 'louis.rivera@gmail.com'
    WHEN 7 THEN 'sabrina.gonzalez@gmail.com'
    WHEN 8 THEN 'jillian.lewis@gmail.com'
    WHEN 9 THEN 'caroline.kennedy@gmail.com'
    WHEN 10 THEN 'adam.sanchez@gmail.com'
END
WHERE employee_id BETWEEN 1 AND 10;


-- Find employees whose email adresses end with gamil.com use LIKE operator
SELECT first_name ,last_name,email_address
from employees
where email_address LIKE '%@gamail.com';

-- retrive employees who belong to either the finance or marketing departments use in operators
SELECT first_name,department,last_name
FROM employees
where department IN ('IT','MARKETING') ;
