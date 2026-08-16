SELECT * FROM products;

-- 6 DATE_PART()
SELECT product_name, added_date,
    DATE_PART('month',added_date) AS day_of_week
FROM products;

-- 7 DATE_TRUNC() trunc function
SELECT product_name,added_date,
   DATE_TRUNC('month',added_date) AS Month_start,
   DATE_PART('isodow',added_date) AS day_of_week
 FROM products;

 -- 8 interval add krne ke liye help
SELECT product_name,added_date,
   added_date + INTERVAL '6 days' AS new_dates
 FROM products; 

 -- 9 CURRENT_TIME()
 SELECT CURRENT_TIME AS current_time;

 -- 10 TO_DATE
 SELECT TO_DATE('28-11-2024','DD-MM-YYYY') AS CONVERTED_DATE
 FROM products;
