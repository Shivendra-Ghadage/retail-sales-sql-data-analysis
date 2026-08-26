# 🛒 Retail Sales SQL Data Analysis

## 📌 About the Project

This is an end-to-end SQL data analysis project based on a retail sales business.

I created this project to practice SQL in a practical, real-world way instead of working only with small individual queries. The project starts with creating the database and tables, inserting data, exploring the data, and then using SQL to answer different business questions.

The main focus of this project is to understand how a Data Analyst can use SQL to work with customer, product, order, employee, and sales data and turn that data into useful business insights.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Build a relational retail sales database using MySQL
- Understand relationships between different tables
- Practice SQL from basic to advanced level
- Explore and analyze retail sales data
- Analyze customers, products, orders, employees, and categories
- Calculate sales, revenue, discounts, profit, and KPIs
- Practice different types of JOINs
- Use subqueries, CTEs, and window functions
- Perform ranking and sales-growth analysis
- Solve real-world business questions
- Practice SQL interview-level problems

---

## 🗄️ Database Overview

**Database Name:** `retail_sales`

The database contains six main tables:

| Table | Purpose |
|---|---|
| `customers` | Stores customer information |
| `employees` | Stores employee and manager information |
| `categories` | Stores product category information |
| `products` | Stores product, pricing, cost, and inventory information |
| `orders` | Stores customer order information |
| `order_items` | Stores individual products included in each order |

### Approximate Dataset Size

| Table | Records |
|---|---:|
| customers | 120 |
| employees | 25 |
| categories | 10 |
| products | 50 |
| orders | 150 |
| order_items | 300 |

---

## 🔗 Entity Relationship Diagram

The database is designed using relationships between customers, orders, employees, products, categories, and order items.

![Retail Sales ER Diagram](retail_sales_erd.png)

### Main Relationships

- One customer can place many orders.
- One employee can handle many orders.
- One order can contain many order items.
- One product can appear in many order items.
- One category can contain many products.
- Employees can have a manager relationship through `manager_id`.

---

## 📂 Project Structure

The project is organized into three main folders:
<img width="1190" height="1322" alt="ChatGPT Image Aug 27, 2026, 01_13_43 AM" src="https://github.com/user-attachments/assets/ed8ebfc1-5cde-4375-b218-f42d2b0e4adf" />

```text
retail-sales-sql-data-analysis/
│
├── 01_All_Tables/
│   ├── 01_database.sql
│   ├── 02_customer_table.sql
│   ├── 03_employees_table.sql
│   ├── 04_categories_table.sql
│   ├── 05_products_table.sql
│   ├── 06_orders_table.sql
│   └── 07_order_items_table.sql
│
├── 02_SQL_Analysis/
│   ├── 01_database_table_exploration.sql
│   ├── 02_select_statement.sql
│   ├── 03_where_filtering.sql
│   ├── 04_order_by.sql
│   ├── 05_distinct.sql
│   ├── 06_aggregate_functions.sql
│   ├── 07_product_profit_analysis.sql
│   ├── 08_inventory_analysis.sql
│   ├── 09_group_by.sql
│   ├── 10_having.sql
│   ├── 11_inner_join.sql
│   ├── 12_complete_order_report.sql
│   ├── 13_product_sales.sql
│   ├── 14_sales_calculation.sql
│   ├── 15_total_sales_kpis.sql
│   ├── 16_best_selling_products.sql
│   ├── 17_revenue_by_product.sql
│   ├── 18_order_status_analysis.sql
│   ├── 19_payment_analysis.sql
│   ├── 20_city_analysis.sql
│   ├── 21_case_statements.sql
│   └── 22_date_functions.sql
│
└── 03_Advanced_SQL/
    ├── 01_subqueries.sql
    ├── 02_self_join.sql
    ├── 03_null_handling.sql
    ├── 04_left_join.sql
    ├── 05_window_functions.sql
    ├── 06_row_number.sql
    ├── 07_cte.sql
    ├── 08_top_product_per_category.sql
    ├── 09_lag.sql
    ├── 10_sales_growth.sql
    ├── 11_final_business_report.sql
    └── 12_interview_questions.sql
