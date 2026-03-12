-- View dataset
SELECT * FROM sales_data;

-- Total sales by region
SELECT region,
SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Total sales by product
SELECT product,
SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC;

-- Total orders
SELECT COUNT(*) AS total_orders
FROM sales_data;

-- Orders per region
SELECT region,
COUNT(*) AS total_orders
FROM sales_data
GROUP BY region;

-- Highest sales order
SELECT TOP 1 *
FROM sales_data
ORDER BY sales_amount DESC;

-- Average sales per product
SELECT product,
AVG(sales_amount) AS average_sales
FROM sales_data
GROUP BY product;