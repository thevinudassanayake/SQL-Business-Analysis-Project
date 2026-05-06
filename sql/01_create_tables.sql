/*
SQL BUSINESS ANALYSIS PROJECT
Dataset : Olist Brazilian E-Commerce Dataset
Database: business_analysis

Purpose:
This file prepares the SQL environment and verifies that all imported
tables are available before analysis begins.
*/
-- Select database
USE business_analysis;

-- Display all tables
SHOW TABLES;

-- Check structure of Customers table
DESCRIBE customers;
SHOW CREATE TABLE customers;

-- Check structure of Orders table
DESCRIBE orders;
SHOW CREATE TABLE orders;

-- Check structure of Order Items table
DESCRIBE order_items;
SHOW CREATE TABLE order_items;

-- Check structure of Products table
DESCRIBE products;
SHOW CREATE TABLE products;

-- Check structure of Payments table
DESCRIBE payments;
SHOW CREATE TABLE payments;
