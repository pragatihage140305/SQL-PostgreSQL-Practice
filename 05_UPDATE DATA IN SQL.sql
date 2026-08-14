DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
   users_id SERIAL PRIMARY KEY,
   username VARCHAR(50) NOT NULL,
   email VARCHAR(30),
   age INT,
   city VARCHAR(50)
);

SELECT * FROM users;

INSERT INTO users (username, email, age, city)
VALUES
('Rahul', 'rahul@gmail.com', 22, 'Nagpur'),
('Pragati', 'pragati@gmail.com', 25, 'Pune'),
('Amit', 'amit@gmail.com', 28, 'Mumbai'),
('Sneha', 'sneha@gmail.com', 24, 'Nashik'),
('Rohan', 'rohan@gmail.com', 30, 'Nagpur'),
('Neha', 'neha@gmail.com', 26, 'Pune'),
('Vikas', 'vikas@gmail.com', 32, 'Aurangabad'),
('Pooja', 'pooja@gmail.com', 23, 'Amravati'),
('Karan', 'karan@gmail.com', 27, 'Mumbai'),
('Anjali', 'anjali@gmail.com', 29, 'Nagpur');

-- to rename the username column to Full_Name
ALTER TABLE users
RENAME COLUMN username TO full_name;


-- to change to old columns to data type from INT to AMALLINT
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

-- TO ADD NOT NULL CONSTRANT TO CITY COLUMN
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

-- TO ADD CHECK CONTRAINT TO AGE COLUMN
ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

INSERT INTO USERS (full_name,age,city) 
VALUES('Rahul', 19, 'Nagpur');

ALTER TABLE users 
RENAME TO customers;

SELECT * FROM customers ORDER BY users_id ASC;

