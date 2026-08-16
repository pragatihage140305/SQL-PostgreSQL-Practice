SELECT * FROM products;

-- PART 1

-- 1 now() get current date and time
SELECT NOW() AS CURRENT_DATETIME;

-- 2 current_date
SELECT CURRENT_DATE AS CURRENT_DATE;

SELECT Added_date,current_date,(CURRENT_DATE - added_date) AS Days_difference
FROM products;


-- 3 EXTRACT() EXTRACT PARTS OD A DATE
SELECT product_name,
    EXTRACT(YEAR FROM added_date) AS YEAR_added,
	EXTRACT(MONTH FROM added_date) AS MONTH_added,
	EXTRACT(DAY FROM added_date) AS DAY_added
from products;

-- 4 CALCULATE AGE BETWEEN DATE
-- FORMATE ADDED_DATE IN A CUSTOM FORMATE(DD-MON-YYYY)
SELECT product_name,
   AGE(CURRENT_DATE , added_date) AS Age_since_added
FROM products;

-- to_char ()
SELECT product_name,
   TO_CHAR(added_date,('DD-MONTH-YYYY')) AS formated_date
FROM products;



