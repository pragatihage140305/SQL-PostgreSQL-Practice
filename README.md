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

## ✅ Day 7 - SQL Arithmetic Operations and Salary Calculations

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
- Used column aliases to give meaningful names to calculated columns.

### Files

- 7_SQL_ARITHMETIC_OPERATIONS_AND_SALARY_CALCULATIONS.sql

### What I Learned

- Learned how to perform arithmetic calculations in SQL.
- Learned how to calculate bonus using salary.
- Learned how to calculate annual salary.
- Learned how to calculate salary increments.
- Learned how to create calculated columns using `AS`.
- Practiced using mathematical operators such as `*` and `+` in SQL.
---

## ✅ Day 8 - Comparison Operators

### Topics Covered

- Equal to `=`
- Not equal to `<>`
- Greater than `>`
- Less than `<`
- Greater than or equal to `>=`
- Less than or equal to `<=`

### Practical Work

- Practiced comparison operators in SQL.
- Compared employee salaries.
- Compared employee ages.
- Retrieved records based on specific conditions.
- Used comparison operators with the `WHERE` clause.

### Files

- `7_COMPARISON_OPERATORS.sql`

### What I Learned

- Learned how to compare values in SQL.
- Learned how to filter records using comparison operators.
- Practiced using comparison operators with numeric and text data.


---

## ✅ Day 9 - Logical Operators

### Topics Covered

- AND
- OR
- NOT
- Combining Multiple Conditions
- WHERE Clause

### Practical Work

- Practiced logical operators in SQL.
- Used `AND` to apply multiple conditions together.
- Used `OR` to match any one of multiple conditions.
- Used `NOT` to exclude specific conditions.
- Combined logical operators with the `WHERE` clause.
- Filtered employee records using multiple conditions.

### Files

- `9_LOGICAL_OPERATORS.sql`

### What I Learned

- Learned how to combine multiple conditions in SQL.
- Learned how to use `AND`, `OR`, and `NOT`.
- Learned how to filter data using multiple conditions.
- Practiced logical operators with the `WHERE` clause.