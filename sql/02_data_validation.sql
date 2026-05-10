/*
SQL Business Analysis Project
File: 02_data_validation.sql

Purpose:
Validate imported data before performing analysis.

Checks:
- Record counts
- Duplicate records
- Missing values
- Invalid values
- Data consistency
*/

USE business_analysis;


-- Count records in each table
SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT COUNT(*) AS total_order_items
FROM order_items;

SELECT COUNT(*) AS total_products
FROM products;

SELECT COUNT(*) AS total_payments
FROM payments;


-- Check duplicate customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Check duplicate order IDs
SELECT order_id, COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;


-- Check duplicate product IDs
SELECT product_id, COUNT(*) AS duplicate_count
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;


-- Check missing customer IDs
SELECT *
FROM customers
WHERE customer_id IS NULL;


-- Check missing order IDs
SELECT *
FROM orders
WHERE order_id IS NULL;


-- Check missing product IDs
SELECT *
FROM products
WHERE product_id IS NULL;


-- Check missing payment values
SELECT *
FROM payments
WHERE payment_value IS NULL;


-- Check negative payment values
SELECT *
FROM payments
WHERE payment_value < 0;


-- Check products without categories
SELECT *
FROM products
WHERE product_category_name IS NULL;


-- Order status distribution
SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- Payment type distribution
SELECT payment_type, COUNT(*) AS total_payments
FROM payments
GROUP BY payment_type
ORDER BY total_payments DESC;


-- Payment statistics
SELECT ROUND(MIN(payment_value),2) AS minimum_payment,
ROUND(MAX(payment_value),2) AS maximum_payment,
ROUND(AVG(payment_value),2) AS average_payment
FROM payments;