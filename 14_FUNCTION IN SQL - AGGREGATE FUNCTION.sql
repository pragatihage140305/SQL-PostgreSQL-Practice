DROP TABLE IF EXISTS product;
CREATE TABLE products (
   PRODUCT_id SERIAL PRIMARY KEY,
   product_name VARCHAR(30),
   category VARCHAR(50),
   price NUMERIC(10,2),
   quantity INT,
   added_date DATE,
   discount_rate NUMERIC(5,2) 
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.00, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-01-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-12-01', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Mouse', 'Accessories', 750.00, 40, '2024-02-01', 7.50),
('Keyboard', 'Accessories', 2500.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;


-- total quantity of product
SELECT SUM(quantity) AS toatal_quantity
FROM products;

-- QUNATY OF ELECTRONIC PRODUCT
SELECT SUM(quantity) AS toatal_quantity
FROM products
WHERE category='electronics' AND price > 20000 ;


--SELECT SUM(quantity) AS toatal_quantity
SELECT count(*) AS total_quantity
FROM products;

-- count wnith condition
SELECT count(*) AS total_quantity
FROM products
WHERE product_name LIKE '%phone%';

-- Average price of product
SELECT AVG(price) AS average_price
FROM products;

-- Average price of product with condition
SELECT AVG(price) AS average_price
FROM products
WHERE category='Accessories' OR added_date > '2024-02-01';

-- maxi and min
SELECT MAX(price) AS MAX_PRICE,
    MIN(PRICE) AS MIN_PRICE
FROM products;



