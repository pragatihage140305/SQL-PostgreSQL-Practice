-- =========================================
-- ONLINE BOOKSTORE SQL PROJECT
-- =========================================


-- Delete old tables
DROP TABLE IF EXISTS books;
-- =========================================
-- CREATE BOOKS TABLE
-- =========================================

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    price NUMERIC(10,2),
    stock INT
);

-- =========================================
-- IMPORT DATA INTO BOOKS TABLE
-- =========================================

COPY books (
    book_id,
    title,
    author,
    genre,
    published_year,
    price,
    stock
)
FROM 'C:\Users\Acer\Downloads\ST - SQL ALL PRACTICE FILES SD61 (1)\Books.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT * FROM books;



DROP TABLE IF EXISTS customers;

-- =========================================
-- CREATE CUSTOMERS TABLE
-- =========================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- =========================================
-- IMPORT DATA INTO CUSTOMERS TABLE
-- =========================================

COPY customers (
    customer_id,
    name,
    email,
    phone,
    city,
    country
)
FROM 'C:/Users/Acer/Downloads/ST - SQL ALL PRACTICE FILES SD61 (2) (1)/ST - SQL ALL PRACTICE FILES-2/All Excel Practice Files/Customers.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

-- =========================================
-- CHECK DATA
-- ========================================

SELECT * FROM customers;

---------------------

-- Delete old tables
DROP TABLE IF EXISTS orders;

-- =========================================
-- CREATE ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    book_id INT REFERENCES books(book_id),
    order_date DATE,
    quantity INT,
    total_amount NUMERIC(10,2)
);


-- =========================================
-- IMPORT DATA INTO ORDERS TABLE
-- =========================================

COPY orders (
    order_id,
    customer_id,
    book_id,
    order_date,
    quantity,
    total_amount
)
FROM 'C:/Users/Acer/Downloads/ST - SQL ALL PRACTICE FILES SD61 (2) (1)/ST - SQL ALL PRACTICE FILES-2/All Excel Practice Files/Orders.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);


-- =========================================
-- CHECK DATA
-- ========================================

SELECT * FROM orders;

-- BASIC Questions
-- Retrieve all books in the "Fiction" genre.
SELECT * FROM Books
WHERE genre = 'Fiction';

-- Find books published after the year 1950.
SELECT * FROM Books
WHERE published_year > 1950;


-- List all customers from India .
SELECT * FROM customers
WHERE country = 'India';


-- Show orders placed in November 2023.
SELECT * from orders
WHERE order_date between '2023-11-01' AND '2023-11-30';


-- Retrieve the total stock of books available.
SELECT SUM(STOCK) AS total_price FROM Books;

-- Find the details of the most expensive book.
SELECT * from Books
ORDER BY price
LIMIT 1;


-- Show all customers who ordered more than 1 quantity of a book.
SELECT * FROM orders 
Where quantity > 1;


-- Retrieve all orders where the total amount exceeds $20.
SELECT * From orders
where total_amount > 20;


-- List all genres available in the Books table.
SELECT DISTINCT genre
FROM books;

-- Find the book with the lowest stock.
SELECT * FROM Books
order by stock;


-- Calculate the total revenue generated from all orders.

SELECT SUM(total_amount) AS total_revenue
FROM orders;


-- ADVANCE QUERY
-- Retrieve the total number of books sold for each genre.
SELECT * FROM orders;

select b.Genre,SUM(o.quantity) AS Total_Books_sold 
from orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.Genre;

-- Find the average price of books in the "Fantasy" genre.
SELECT AVG(price) AS Average_price
FROM Books
WHERE Genre = 'Fantasy';

-- List customers who have placed at least 2 orders.
SELECT o.customer_id ,c.name,COUNT(o.order_id) AS Order_count 
FROM Orders o
JOIN customers c on o.customer_id =c.customer_id
GROUP BY o.customer_id,c.name
HAVING COUNT(order_id)>2;


-- Find the most frequently ordered book.
SELECT o.book_id,b.title,COUNT(o.order_id) AS order_count
FROM orders o
JOIN books b on o.book_id = b.book_id
Group by o.book_id,b,title
ORDER BY order_count DESC
LIMIT 1; 

-- Show the top 3 most expensive books of the "Fantasy" genre.
SELECT * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 1;

-- Retrieve the total quantity of books sold by each author.
SELECT b.author, SUM(o.quantity) AS Total_Books_sold
FROM orders o
JOIN books b 
ON o.book_id = b.book_id
GROUP BY b.author
ORDER BY b.author;


-- List the cities where customers who spent over $30 are located.
SELECT DISTINCT c.city
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.city
HAVING SUM(o.total_amount) > 30;

-- Find the customer who spent the most on orders.
SELECT c.customer_id, c.name,
       SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 1;

-- Calculate the stock remaining after fulfilling all orders.

SELECT b.book_id,
       b.title,
       b.stock - COALESCE(SUM(o.quantity), 0) AS remaining_stock
FROM books b
LEFT JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title, b.stock;






