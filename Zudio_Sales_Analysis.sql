-- Author Shivani Sunarkari
-- Zudio_Sales_Analysis

CREATE DATABASE zudio_sales;
USE zudio_sales;
-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(20), -- Men, Women, Kids
    price INT
);

-- Stores Table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    city VARCHAR(50),
    store_size VARCHAR(20) -- Small, Medium, Large
);

-- Sales Table (Main Transaction Table)
CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    store_id INT,
    order_date DATE,
    quantity INT,
    total_amount INT,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);
SHOW TABLES;
INSERT INTO customers VALUES
(1, 'Aisha Khan', 'Female', 24, 'Mumbai'),
(2, 'Ravi Sharma', 'Male', 30, 'Delhi'),
(3, 'Neha Patel', 'Female', 27, 'Bangalore'),
(4, 'Arjun Reddy', 'Male', 35, 'Hyderabad'),
(5, 'Meera Iyer', 'Female', 29, 'Chennai'),
(6, 'Karan Singh', 'Male', 22, 'Pune'),
(7, 'Sneha Joshi', 'Female', 31, 'Mumbai'),
(8, 'Rahul Verma', 'Male', 28, 'Delhi'),
(9, 'Priya Nair', 'Female', 26, 'Bangalore'),
(10, 'Amit Gupta', 'Male', 33, 'Hyderabad');
INSERT INTO products VALUES
(1, 'Men T-Shirt', 'Men', 799),
(2, 'Men Jeans', 'Men', 1499),
(3, 'Women Dress', 'Women', 1299),
(4, 'Women Top', 'Women', 699),
(5, 'Kids T-Shirt', 'Kids', 499),
(6, 'Kids Shorts', 'Kids', 399),
(7, 'Men Shirt', 'Men', 1199),
(8, 'Women Kurti', 'Women', 999);
INSERT INTO stores VALUES
(1, 'Mumbai', 'Large'),
(2, 'Delhi', 'Large'),
(3, 'Bangalore', 'Medium'),
(4, 'Hyderabad', 'Medium'),
(5, 'Chennai', 'Small'),
(6, 'Pune', 'Small');
select * from customers;
select * from products;
select * from stores;
DELETE FROM sales;
INSERT INTO sales VALUES
(1,1,1,1,'2025-01-03',2,1598),
(2,2,2,2,'2025-01-05',1,1499),
(3,3,3,3,'2025-01-07',2,2598),
(4,4,4,4,'2025-01-10',3,2097),
(5,5,5,5,'2025-01-12',4,1996),
(6,6,6,6,'2025-01-15',3,1197),
(7,7,7,1,'2025-01-18',2,2398),
(8,8,8,2,'2025-01-20',1,999),
(9,9,1,3,'2025-01-22',2,1598),
(10,10,2,4,'2025-01-25',1,1499),

(11,1,3,1,'2025-02-02',2,2598),
(12,2,4,2,'2025-02-05',3,2097),
(13,3,5,3,'2025-02-08',2,998),
(14,4,6,4,'2025-02-10',4,1596),
(15,5,7,5,'2025-02-14',2,2398),
(16,6,8,6,'2025-02-18',1,999),
(17,7,1,1,'2025-02-20',3,2397),
(18,8,2,2,'2025-02-22',2,2998),
(19,9,3,3,'2025-02-25',1,1299),
(20,10,4,4,'2025-02-28',2,1398),

(21,1,5,1,'2025-03-02',3,1497),
(22,2,6,2,'2025-03-05',2,798),
(23,3,7,3,'2025-03-08',1,1199),
(24,4,8,4,'2025-03-12',2,1998),
(25,5,1,5,'2025-03-15',4,3196);
INSERT INTO sales VALUES
(26,6,2,6,'2025-03-18',2,2998),
(27,7,3,1,'2025-03-20',1,1299),
(28,8,4,2,'2025-03-22',2,1398),
(29,9,5,3,'2025-03-25',3,1497),
(30,10,6,4,'2025-03-28',4,1596),

(31,1,7,1,'2025-04-02',2,2398),
(32,2,8,2,'2025-04-05',1,999),
(33,3,1,3,'2025-04-07',3,2397),
(34,4,2,4,'2025-04-10',2,2998),
(35,5,3,5,'2025-04-12',1,1299),

(36,6,4,6,'2025-04-15',2,1398),
(37,7,5,1,'2025-04-18',4,1996),
(38,8,6,2,'2025-04-20',3,1197),
(39,9,7,3,'2025-04-22',2,2398),
(40,10,8,4,'2025-04-25',1,999),

(41,1,1,1,'2025-05-02',2,1598),
(42,2,2,2,'2025-05-05',3,4497),
(43,3,3,3,'2025-05-07',2,2598),
(44,4,4,4,'2025-05-10',1,699),
(45,5,5,5,'2025-05-12',4,1996),

(46,6,6,6,'2025-05-15',3,1197),
(47,7,7,1,'2025-05-18',2,2398),
(48,8,8,2,'2025-05-20',1,999),
(49,9,1,3,'2025-05-22',3,2397),
(50,10,2,4,'2025-05-25',2,2998);
INSERT INTO sales VALUES
(51,1,3,1,'2025-06-02',2,2598),
(52,2,4,2,'2025-06-05',1,699),
(53,3,5,3,'2025-06-08',3,1497),
(54,4,6,4,'2025-06-10',2,798),
(55,5,7,5,'2025-06-12',1,1199),

(56,6,8,6,'2025-06-15',2,1998),
(57,7,1,1,'2025-06-18',3,2397),
(58,8,2,2,'2025-06-20',1,1499),
(59,9,3,3,'2025-06-22',2,2598),
(60,10,4,4,'2025-06-25',3,2097),

(61,1,5,1,'2025-07-02',4,1996),
(62,2,6,2,'2025-07-05',2,798),
(63,3,7,3,'2025-07-08',1,1199),
(64,4,8,4,'2025-07-10',2,1998),
(65,5,1,5,'2025-07-12',3,2397),

(66,6,2,6,'2025-07-15',2,2998),
(67,7,3,1,'2025-07-18',1,1299),
(68,8,4,2,'2025-07-20',2,1398),
(69,9,5,3,'2025-07-22',3,1497),
(70,10,6,4,'2025-07-25',4,1596),

(71,1,7,1,'2025-08-02',2,2398),
(72,2,8,2,'2025-08-05',1,999),
(73,3,1,3,'2025-08-08',3,2397),
(74,4,2,4,'2025-08-10',2,2998),
(75,5,3,5,'2025-08-12',1,1299);
INSERT INTO sales VALUES
(76,6,4,6,'2025-08-15',2,1398),
(77,7,5,1,'2025-08-18',4,1996),
(78,8,6,2,'2025-08-20',3,1197),
(79,9,7,3,'2025-08-22',2,2398),
(80,10,8,4,'2025-08-25',1,999),

(81,1,1,1,'2025-09-02',2,1598),
(82,2,2,2,'2025-09-05',1,1499),
(83,3,3,3,'2025-09-08',2,2598),
(84,4,4,4,'2025-09-10',3,2097),
(85,5,5,5,'2025-09-12',4,1996),

(86,6,6,6,'2025-09-15',3,1197),
(87,7,7,1,'2025-09-18',2,2398),
(88,8,8,2,'2025-09-20',1,999),
(89,9,1,3,'2025-09-22',3,2397),
(90,10,2,4,'2025-09-25',2,2998),

(91,1,3,1,'2025-10-02',2,2598),
(92,2,4,2,'2025-10-05',3,2097),
(93,3,5,3,'2025-10-08',2,998),
(94,4,6,4,'2025-10-10',4,1596),
(95,5,7,5,'2025-10-12',2,2398),

(96,6,8,6,'2025-10-15',1,999),
(97,7,1,1,'2025-10-18',3,2397),
(98,8,2,2,'2025-10-20',2,2998),
(99,9,3,3,'2025-10-22',1,1299),
(100,10,4,4,'2025-10-25',2,1398);
select count(*) from sales;
-- Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM sales;
-- Revenue By category
SELECT p.category, SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
-- Revenue By city
SELECT st.city, SUM(s.total_amount) AS revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
GROUP BY st.city
ORDER BY revenue DESC;
-- Top 5 Products
SELECT p.product_name, SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;
-- Monthly Revenue trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
-- Average order value
SELECT AVG(total_amount) AS avg_order_value
FROM sales;
-- High value Orders
SELECT *
FROM sales
WHERE total_amount >3000;
-- Exporting data to Excel
SELECT 
    s.order_id,
    s.order_date,
    c.customer_name,
    c.gender,
    c.city,
    p.product_name,
    p.category,
    p.price,
    s.quantity,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id;
