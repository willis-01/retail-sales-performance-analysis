--create table superstore_sales
CREATE TABLE superstore_sales (
    row_id INT,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(255),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name TEXT,
    sales DECIMAL(10,2)
);

SELECT FROM * superstores_stores;

--DATA CLEANING
--Checking for null values
SELECT *
FROM superstore_sales
WHERE sales IS NULL;

--Check duplicate orders
SELECT order_id,
       COUNT(*)
FROM superstore_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

--Verify Date Range
SELECT
MIN(order_date) AS first_order,
MAX(order_date) AS last_order
FROM superstore_sales;

--Exploratory Data Analysis
--Total Revenue
SELECT
ROUND(SUM(sales),2) AS total_revenue
FROM superstore_sales;

--Total Orders
SELECT
COUNT(DISTINCT order_id)
AS total_orders
FROM superstore_sales;


































