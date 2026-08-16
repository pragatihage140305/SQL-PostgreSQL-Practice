SELECT * FROM products;


-- GET ALL THE CATEGIRIOES IN UPPER CASE
SELECT UPPER(category) AS category_capital
FROM products;


-- GET ALL THE CATEGIRIOES IN UPPER CASE
SELECT LOWER(category) AS category_capital
FROM products;

-- join product name add category text with hypen
SELECT CONCAT(product_name, '-' , category) AS product_details
FROM products;

-- Extract the 5 char
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;

-- count length
SELECT product_name,LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;

-- remove the leading and trailing spaces from string
SELECT LENGTH(TRIM('  MONITOR   ')) AS Trimmed_Text;
SELECT LENGTH('  MONITOR   ') AS Trimmed_Text;

-- replace the word phone to device
SELECT REPLACE(product_name,'phone','device') AS update
FROM products;

-- lect or right
SELECT RIGHT(category,3) AS category_capital
FROM products;

SELECT LEFT(category,3) AS category_capital
FROM products;
