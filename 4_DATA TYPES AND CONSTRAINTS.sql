DROP TABLE IF EXISTS users;

CREATE TABLE users(
   user_id INT PRIMARY KEY,
   name VARCHAR(50),
   email VARCHAR(50),
   age INTEGER CHECK (age >= 18),
   reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- INSRT DATA INTO TABLE 
INSERT INTO users (user_id, name, email, age)
VALUES (1, 'Rahul', 'rahul@gmail.com', 22);

INSERT INTO users (user_id, name, email, age)
VALUES (2, 'pragati', 'pragati@gmail.com', 25);


SELECT * FROM users;