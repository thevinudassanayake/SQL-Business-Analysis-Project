/*
SQL Business Analysis Project
File: 03_exploration.sql

Purpose:
Explore the dataset and understand the available data before analysis.

Includes:
- Table previews
- Dataset size
- Product categories
- Order status analysis
- Payment analysis
*/

USE business_analysis;


-- Preview customers table
SELECT *
FROM customers
LIMIT 10;


-- Preview orders table
SELECT *
FROM orders
LIMIT 10;


-- Preview order items table
SELECT *
FROM order_items
LIMIT 10;


-- Preview products table
SELECT *
FROM products
LIMIT 10;


-- Preview payments table
SELECT *
FROM payments
LIMIT 10;


-- Count customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- Count orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- Count products
SELECT COUNT(*) AS total_products
FROM products;


-- Count order items
SELECT COUNT(*) AS total_order_items
FROM order_items;


-- Count payments
SELECT COUNT(*) AS total_payments
FROM payments;


-- Count unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM customers;


-- Count unique products
SELECT COUNT(DISTINCT product_id) AS unique_products
FROM products;


-- Display product categories
SELECT DISTINCT product_category_name
FROM products
ORDER BY product_category_name;


-- Number of products by category
SELECT product_category_name, COUNT(*) AS total_products
FROM products
GROUP BY product_category_name
ORDER BY total_products DESC;


-- Order status analysis
SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- Payment method analysis
SELECT payment_type, COUNT(*) AS total_payments
FROM payments
GROUP BY payment_type
ORDER BY total_payments DESC;


-- Payment statistics
SELECT ROUND(AVG(payment_value),2) AS average_payment,
ROUND(MAX(payment_value),2) AS highest_payment,
ROUND(MIN(payment_value),2) AS lowest_payment
FROM payments;


-- Top 20 highest payments
SELECT order_id, payment_type, payment_value
FROM payments
ORDER BY payment_value DESC
LIMIT 20;


-- Average number of installments by payment type
SELECT payment_type, ROUND(AVG(payment_installments),2) AS average_installments
FROM payments
GROUP BY payment_type
ORDER BY average_installments DESC;


-- Find products without categories
SELECT *
FROM products
WHERE product_category_name IS NULL;


-- Find orders that are not delivered
SELECT *
FROM orders
WHERE order_status <> 'delivered';