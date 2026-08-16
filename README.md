# SQL PostgreSQL Practice

## About

This repository contains my daily SQL practice using PostgreSQL and pgAdmin4.

## Tools Used

- PostgreSQL
- pgAdmin4
- VS Code
- Git

---

# Daily Progress

## ✅ Day 1 - Create Database and Table

### Topics Covered
- CREATE DATABASE
- CREATE TABLE
- Data Types

### Files
- 1_CREATE DATABASE AND TABLE.sql

---

## ✅ Day 2 - INSERT INTO and SELECT

### Topics Covered
- INSERT INTO
- SELECT
- TRUNCATE TABLE
- RESTART IDENTITY

### Files
- 2_INSERT DATA IN TABLE.sql

### What I Learned
- Learned how to insert records into a table.
- Learned how to retrieve data using SELECT.
- Learned how to use TRUNCATE TABLE.
- Learned how to reset identity using RESTART IDENTITY.


---

## ✅ Day 3 - DELETE, ALTER, DROP

### Topics Covered

- DELETE
- ALTER TABLE
- DROP COLUMN
- DROP TABLE
- DROP DATABASE

### Files

- 3_DELETE ROWS AND COLUMN IN TABLE.sql

### What I Learned

- Learned how to delete specific rows using `DELETE`.
- Learned how to remove a column using `ALTER TABLE ... DROP COLUMN`.
- Learned how to delete a table using `DROP TABLE`.
- Learned how to delete a database using `DROP DATABASE`.

---

## ✅ Day 4 - Data Types and Constraints

### Topics Covered

#### Data Types
- INT / INTEGER
- VARCHAR
- TIMESTAMP

#### Constraints
- PRIMARY KEY
- CHECK
- DEFAULT

### Practical Work

- Created `users` table.
- Used different SQL data types.
- Applied PRIMARY KEY constraint.
- Applied CHECK constraint (`age >= 18`).
- Applied DEFAULT constraint (`CURRENT_TIMESTAMP`).
- Inserted records into the `users` table.
- Retrieved records using `SELECT *`.

### Files

- 4_DATA TYPES AND CONSTRAINTS.sql

### What I Learned

- Learned how to use SQL data types.
- Learned how constraints maintain data integrity.
- Practiced creating tables with constraints.
- Inserted and retrieved data successfully.


---

## ✅ Day 5 - SELECT, UPDATE and ORDER BY

### Topics Covered

- SELECT
- UPDATE
- WHERE
- LIKE
- ORDER BY
- ASC

### Practical Work

- Created `users` table.
- Inserted multiple records.
- Selected specific columns using SELECT.
- Updated employee/user records using UPDATE.
- Used WHERE condition with UPDATE.
- Used LIKE operator for email filtering.
- Sorted records using ORDER BY.
- Used ASC for ascending order.

### Files

- 5_SELECT_UPDATE_ORDER_BY.sql

### What I Learned

- Learned how to retrieve selected columns.
- Learned how to update existing records.
- Learned how to use WHERE with UPDATE.
- Learned how to use LIKE for pattern matching.
- Learned how to sort data using ORDER BY.


### Practical Work

- Created `users` table.
- Inserted multiple records.
- Selected specific columns using SELECT.
- Updated data using the pgAdmin toolbar.
- Used WHERE condition for updating specific records.
- Used LIKE for pattern matching.
- Sorted data using ORDER BY.
- Used ASC for ascending order.

---

## ✅ Day 6 - ALTER TABLE and Constraints

### Topics Covered

- ALTER TABLE
- ALTER COLUMN
- SET NOT NULL
- ADD CONSTRAINT
- CHECK Constraint
- RENAME TABLE
- INSERT INTO
- ORDER BY
- ASC

### Practical Work

- Changed the data type of a column using ALTER COLUMN.
- Added NOT NULL constraint to the city column.
- Added CHECK constraint to the age column.
- Inserted new records into the table.
- Renamed the `users` table to `customers`.
- Retrieved and sorted data using ORDER BY.

### Files

- 6_ALTER_TABLE_AND_CONSTRAINTS.sql

### What I Learned

- Learned how to modify an existing table using ALTER TABLE.
- Learned how to change column data types.
- Learned how to add NOT NULL and CHECK constraints.
- Learned how to rename a table.
- Learned how to sort records using ORDER BY.

---

---

## ✅ Day 7 - SQL Assignment 01

### Practical Work

- Practiced different SQL queries.
- Used SELECT statements.
- Used UPDATE queries.
- Used DELETE queries.
- Used ALTER TABLE commands.
- Practiced filtering and modifying employee data.

### Files

- `7_ASSIMENT_1.sql`

### What I Learned

- Practiced the SQL concepts learned so far.
- Improved understanding of SELECT, UPDATE, DELETE, and ALTER TABLE.
- Solved SQL practice questions independently.

---

## ✅ Day 8 - SQL Arithmetic Operations and Salary Calculations

### Topics Covered

- Arithmetic Operators
- Column Calculations
- AS (Alias)
- Salary Calculations
- Bonus Calculation
- Annual Salary
- Increment Salary
- New Salary

### Practical Work

- Created an `employees` table.
- Inserted employee records into the table.
- Retrieved employee data using `SELECT`.
- Calculated a 10% bonus based on salary.
- Calculated annual salary using monthly salary.
- Calculated a 5% salary increment.
- Calculated the new salary after increment.
- Used column aliases for calculated columns.

### Files

- `8_SQL Arithmetic Operations and Salary Calculations.sql`

### What I Learned

- Learned how to perform arithmetic calculations in SQL.
- Learned how to calculate bonus and annual salary.
- Learned how to calculate salary increments.
- Practiced using `*` and `+` operators.

---

## ✅ Day 9 - Comparison Operators

### Topics Covered

- Equal to `=`
- Not equal to `<>`
- Greater than `>`
- Less than `<`
- Greater than or equal to `>=`
- Less than or equal to `<=`

### Practical Work

- Practiced comparison operators in SQL.
- Compared employee salaries and ages.
- Retrieved records based on specific conditions.
- Used comparison operators with the `WHERE` clause.

### Files

- `9_COMPARISION OPERATOR.sql`

### What I Learned

- Learned how to compare values in SQL.
- Learned how to filter records using comparison operators.
- Practiced comparison operators with the `WHERE` clause.

---

## ✅ Day 10 - Logical Operators

### Topics Covered

- AND
- OR
- NOT
- Combining Multiple Conditions
- WHERE Clause

### Practical Work

- Practiced logical operators in SQL.
- Used `AND` to apply multiple conditions.
- Used `OR` to match multiple conditions.
- Used `NOT` to exclude conditions.
- Combined logical operators with the `WHERE` clause.

### Files

- `10_LOGICAL OPERATOR.sql`

### What I Learned

- Learned how to use `AND`, `OR`, and `NOT`.
- Learned how to combine multiple conditions.
- Practiced filtering data using logical operators.

---

## ✅ Day 11 - BETWEEN, LIKE and IN Operators

### Topics Covered

- BETWEEN
- LIKE
- IN
- Range Filtering
- Pattern Matching
- Multiple Value Filtering

### Practical Work

- Retrieved employees whose salary is between `40000` and `60000` using the `BETWEEN` operator.
- Added a new `email_address` column to the `employees` table.
- Updated email addresses for existing employees.
- Used the `LIKE` operator to filter employees based on email address patterns.
- Used the `IN` operator to retrieve employees from multiple departments.

### Files

- `11_BETWEEN_LIKE_IN_OPERATORS.sql`

### What I Learned

- Learned how to use `BETWEEN` to filter values within a range.
- Learned how to use `LIKE` for pattern matching.
- Learned how `%` works as a wildcard with `LIKE`.
- Learned how to use `IN` to filter multiple values.
- Practiced filtering employee records using different SQL operators.


---

## ✅ Day 12 - NULL, ORDER BY, LIMIT and DISTINCT

### Topics Covered

- NULL
- IS NULL
- ORDER BY
- ASC
- DESC
- LIMIT
- DISTINCT
- COUNT

### Practical Work

- Retrieved employee records from the `employees` table.
- Practiced checking for `NULL` values using `IS NULL`.
- Sorted employee records based on salary using `ORDER BY`.
- Used `ASC` and `DESC` for sorting data.
- Retrieved the top 5 employees based on salary using `LIMIT`.
- Counted unique departments using `COUNT(DISTINCT department)`.

### Files

- `12_NULL_ORDERBY_LIMIT_DISTINCT.sql`

### What I Learned

- Learned how to check `NULL` values using `IS NULL`.
- Learned how to sort records using `ORDER BY`.
- Practiced ascending and descending sorting using `ASC` and `DESC`.
- Learned how to limit the number of records using `LIMIT`.
- Learned how to find and count unique values using `DISTINCT`.

---

## ✅ Day 13 - Set Operators in SQL

### Topics Covered

- UNION
- UNION ALL
- INTERSECT
- EXCEPT

### Practical Work

- Created the `students_2023` table.
- Inserted student records for the year 2023.
- Created the `students_2024` table.
- Inserted student records for the year 2024.
- Retrieved records from both tables using `SELECT`.
- Used `UNION` to combine results and remove duplicate records.
- Used `UNION ALL` to combine results while keeping duplicate records.
- Used `INTERSECT` to find common records between both tables.
- Used `EXCEPT` to find records present in `students_2023` but not in `students_2024`.

### Files

- `13_SET_OPERATORS.sql`

### What I Learned

- Learned how to combine results from multiple tables using `UNION`.
- Learned the difference between `UNION` and `UNION ALL`.
- Learned how to find common records using `INTERSECT`.
- Learned how to find different records using `EXCEPT`.
- Practiced working with multiple tables using SQL set operators.

---

## ✅ Day 14 - Aggregate Functions in SQL

### Topics Covered

- SUM()
- COUNT()
- AVG()
- MAX()
- MIN()
- Aggregate Functions
- WHERE Clause
- LIKE Operator

### Practical Work

- Created a `products` table.
- Added product details such as product name, category, price, quantity, added date, and discount rate.
- Inserted multiple product records into the table.
- Retrieved all product records using `SELECT *`.
- Calculated the total quantity of all products using `SUM()`.
- Calculated the total quantity of products based on specific conditions.
- Counted the total number of products using `COUNT()`.
- Used `COUNT()` with the `LIKE` operator to count matching products.
- Calculated the average product price using `AVG()`.
- Calculated the average price based on specific conditions.
- Found the maximum product price using `MAX()`.
- Found the minimum product price using `MIN()`.

### Files

- `14_AGGREGATE_FUNCTIONS.sql`

### What I Learned

- Learned how to use aggregate functions in SQL.
- Practiced `SUM()` to calculate total values.
- Practiced `COUNT()` to count records.
- Learned how to calculate average values using `AVG()`.
- Learned how to find the highest and lowest values using `MAX()` and `MIN()`.
- Practiced using aggregate functions with the `WHERE` clause.

---

## ✅ Day 15 - Strings in SQL

### Topics Covered

- String Functions
- CONCAT()
- UPPER()
- LOWER()
- LENGTH()
- TRIM()
- SUBSTRING()
- REPLACE()

### Practical Work

- Practiced different string functions in SQL.
- Combined multiple string values using `CONCAT()`.
- Converted text to uppercase using `UPPER()`.
- Converted text to lowercase using `LOWER()`.
- Found the length of text using `LENGTH()`.
- Removed extra spaces using `TRIM()`.
- Extracted part of a string using `SUBSTRING()`.
- Replaced specific text using `REPLACE()`.

### Files

- `15_STRINGS IN SQL.sql`

### What I Learned

- Learned how to work with text and string data in SQL.
- Learned how to combine multiple columns using `CONCAT()`.
- Practiced changing text to uppercase and lowercase.
- Learned how to find the length of a string.
- Learned how to extract specific parts of a string.
- Learned how to replace text values using string functions.
---

## ✅ Day 16 - Date and Time Functions Part 1

### Topics Covered

- NOW()
- CURRENT_DATE
- Date Difference
- EXTRACT()
- AGE()
- TO_CHAR()
- Date Formatting

### Practical Work

- Retrieved product records from the `products` table.
- Used `NOW()` to get the current date and time.
- Used `CURRENT_DATE` to get the current date.
- Calculated the difference between the current date and `added_date`.
- Used `EXTRACT()` to retrieve the year, month, and day from `added_date`.
- Used `AGE()` to calculate the time difference between the current date and the product added date.
- Used `TO_CHAR()` to format dates in a custom format.
- Converted dates into the `DD-MONTH-YYYY` format.

### Files

- `16_DATE_AND_TIME_FUNCTIONS_PART_1.sql`

### What I Learned

- Learned how to work with date and time values in SQL.
- Practiced using `NOW()` and `CURRENT_DATE`.
- Learned how to calculate the difference between two dates.
- Learned how to extract year, month, and day using `EXTRACT()`.
- Practiced calculating date differences using `AGE()`.
- Learned how to format dates using `TO_CHAR()`.