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

---

## ✅ Day 19 - COALESCE() Function in SQL

### Topics Covered

- COALESCE()
- NULL Values
- ALTER TABLE
- ADD COLUMN
- UPDATE
- IN
- NOT IN

### Practical Work

- Added a new `discount_price` column to the `products` table.
- Simulated `NULL` values for selected products.
- Updated the discount price for other products.
- Used the `IN` operator to select specific products.
- Used the `NOT IN` operator to exclude specific products.
- Used `COALESCE()` to display the `discount_price` when available.
- Displayed the original `price` when `discount_price` was `NULL`.

### Files

- `19_COALESCE_FUNCTION_IN_SQL.sql`

### What I Learned

- Learned how to handle `NULL` values in SQL.
- Learned how to use the `COALESCE()` function.
- Understood that `COALESCE()` returns the first non-NULL value.
- Practiced adding and updating columns in an existing table.
- Used `IN` and `NOT IN` operators with `UPDATE` queries.