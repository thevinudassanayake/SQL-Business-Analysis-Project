# SQL Business Analysis Project: Olist E-commerce

An end-to-end SQL analysis project on the Olist Brazilian E-commerce dataset. This project focuses on analyzing customer demographics, sales performance, payment methods, and product categories to uncover actionable business insights and key performance indicators (KPIs).

## 📂 Project Structure

```
SQL-Business-Analysis-Project/
├── dataset/                     # Raw CSV data files (Git-ignored)
│   ├── olist_customers_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_products_dataset.csv
│   └── olist_order_payments_dataset.csv
├── sql/                         # Modular SQL scripts
│   ├── 01_create_tables.sql     # Schema definition and table creation
│   ├── 02_data_validation.sql   # Data cleaning and integrity checks
│   ├── 03_exploration.sql       # Preliminary exploration and descriptive stats
│   └── 04_business_analysis.sql # Core business queries and KPI analysis
├── README.md                    # Project documentation
└── insights.md                  # Executive summary and business recommendations
```

## 📊 Database Schema & Relationships

The database models the Brazilian e-commerce operations with the following entities:
*   **Customers**: Location and unique identifiers of buyers.
*   **Orders**: Order status, purchase timestamps, and delivery details.
*   **Order Items**: Product details per order, seller info, shipping limits, and price.
*   **Products**: Product categories, descriptions, and physical dimensions.
*   **Order Payments**: Payment methods (credit card, boleto, voucher, debit card) and installments.

---

## 🚀 Getting Started

1. **Prerequisites**: Ensure you have a relational database system (e.g., PostgreSQL, MySQL, SQLite) set up.
2. **Setup**: Run `sql/01_create_tables.sql` to define the database schema.
3. **Data Loading**: Load the CSV datasets from the `dataset/` directory into the corresponding tables.
4. **Validation**: Execute `sql/02_data_validation.sql` to verify data consistency and clean any anomalies.
5. **Exploration & Analysis**: Run the scripts in `sql/03_exploration.sql` and `sql/04_business_analysis.sql` to generate insights.
