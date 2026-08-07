CREATE TABLE employee(
   employee_id SERIAL PRIMARY KEY,
   name VARCHAR(50),
   position VARCHAR(50),
   department VARCHAR(50),
   hire_date DATE,
   salary NUMERIC(10,2)
);

SELECT  * FROM  employee;