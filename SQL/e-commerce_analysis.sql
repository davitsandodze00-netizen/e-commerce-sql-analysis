--E-COMMERCE SQL ANALYSIS PROJECT


--1. BASIC BUSINESS METRICS

--Query 1: Total Revenue

SELECT
	SUM(total_amount) AS total_revenue
FROM
	orders;


--Query 2: Total Number of Orders

SELECT 
	COUNT(order_id) AS total_orders
FROM
	orders;


--Query 3: Average Order Value

SELECT 
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM
    orders;


--Query 4: Highest Single Order Value

SELECT 
    MAX(total_amount) AS highest_order_value
FROM
    orders;


--Query 5: Lowest Single Order Value

SELECT 
    MIN(total_amount) AS lowest_order_value
FROM
    orders;


--Query 6: Revenue by Payment Method

SELECT 
    payment_method,
	SUM(total_amount) AS total_revenue
FROM
    orders
GROUP BY
	payment_method;


--Query 7: Revenue by Order Status

SELECT 
    order_status,
	SUM(total_amount) AS total_revenue
FROM
    orders
GROUP BY
	order_status;


--Query 8: Order Count by Status

SELECT 
	order_status,
	COUNT(order_id) AS order_count
FROM
    orders
GROUP BY
	order_status;


-- 2. PRODUCT PERFORMANCE ANALYSIS


--Query 9: Revenue by Category

SELECT
    p.category,
	SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM
    products p
JOIN
    order_items oi
ON
    p.product_id = oi.product_id
GROUP BY
    p.category;


--Query 10: Top Selling Products by Quantity

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_units_sold
FROM
    products p
JOIN
    order_items oi
ON
    p.product_id = oi.product_id
GROUP BY
    p.product_name;


--Query 11: Revenue by Brand

SELECT
    p.brand,
    SUM(oi.quantity*oi.unit_price) AS total_revenue
FROM
    products p
JOIN
    order_items oi
ON
    p.product_id = oi.product_id
GROUP BY
    p.brand;


--Query 12: Average Product Rating by Category

SELECT
	category,
    ROUND(AVG(rating), 2) AS average_rating
FROM
    products
GROUP BY
    category;


--Query 13: Average Price by Category

SELECT
	category,
	ROUND(AVG(price), 2) AS average_price
FROM
	products
GROUP BY 
	category;


--Query 14: Total Inventory Value by Category

SELECT 
	category,
	SUM(cost*stock_quantity) AS inventory_value
FROM 
	products
GROUP BY 
	category;


--Query 15: Products Below Reorder Level

SELECT
    product_name,
    stock_quantity,
    reorder_level
FROM
    products
WHERE
    stock_quantity < reorder_level;


-- 3. CUSTOMER & SALES ANALYSIS


--Query 16: Top 10 Highest Value Orders

SELECT
	order_id,
	total_amount
FROM
	orders
ORDER BY 
	total_amount DESC
LIMIT 
	10;


--Query 17: Top 10 Customers by Revenue

SELECT
	c.customer_id,
	SUM(o.total_amount) AS total_customer_revenue
FROM
	orders o
JOIN
	customers c
ON
	o.customer_id=c.customer_id
GROUP BY
    c.customer_id
ORDER BY 
	total_customer_revenue DESC
LIMIT
	10;


--Query 18: Average Order Value by Payment Method

SELECT
	payment_method,
	ROUND(AVG(total_amount), 2) AS average_order_value
FROM
	orders 
GROUP BY
	payment_method
ORDER BY 
	average_order_value DESC;


--Query 19: Monthly Revenue Trend

--(Version 1)
SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(total_amount), 2) AS monthly_revenue
FROM
    orders
GROUP BY
    month
ORDER BY
    month;

--(Version 2) 
SELECT
	TO_CHAR(order_date, 'Month YYYY') AS month,
    ROUND(SUM(total_amount), 2) AS monthly_revenue
FROM
    orders
GROUP BY
    TO_CHAR(order_date, 'Month YYYY')
ORDER BY
    MIN(order_date);


--Query 20: Customer Order Frequency

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM
    orders 
GROUP BY
    customer_id
ORDER BY 
    total_orders DESC
LIMIT
    10;