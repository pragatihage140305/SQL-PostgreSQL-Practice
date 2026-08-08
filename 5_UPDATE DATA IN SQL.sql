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


SELECT username, city FROM users;

UPDATE users 
SET age=20
WHERE username='Neha';



UPDATE users
SET city='Amravati'
WHERE age >=30;

UPDATE users
SET age=27 ,city='Hiwerkhed'
WHERE username='Anjali';



UPDATE users
SET age=age+1
WHERE email LIKE '@gamail.com';

SELECT * FROM users ORDER BY users_id ASC;