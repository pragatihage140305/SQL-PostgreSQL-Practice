SELECT * FROM products;


-- ADDING DISCOUNT_PRICE columns with null vaules in it
--  lets simulate a senario where discount_price in null f
-- for same product we will display price discount_price us null

ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);

UPDATE products
SET discount_price = NULL
WHERE product_name IN ('laptop','desk');

UPDATE products
SET discount_price = price *0.9
WHERE product_name NOT IN ('Laptop','Desk');
SELECT * FROM products;

SELECT product_name,
    COALESCE(discount_price, price) AS final_price
FROM products;