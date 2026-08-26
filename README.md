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

<img width="1190" height="1322" alt="ChatGPT Image Aug 27, 2026, 01_13_43 AM" src="https://github.com/user-attachments/assets/fde06316-b113-4d77-b32e-a7013c132170" />

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

<img width="1173" height="1341" alt="ChatGPT Image Aug 27, 2026, 01_13_55 AM" src="https://github.com/user-attachments/assets/8516b013-c050-4e67-a800-ff6613b59c33" />

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
```
---

## 📚 SQL Concepts Covered

The project covers SQL concepts from basic querying to advanced analytical SQL techniques.
<img width="1536" height="1024" alt="ChatGPT Image Aug 27, 2026, 01_13_33 AM" src="https://github.com/user-attachments/assets/37526070-68aa-4b62-abd8-696bb1db11fa" />

### 🔹 Basic SQL

- `SELECT`
- `WHERE`
- `ORDER BY`
- `DISTINCT`
- `LIMIT`

### 🔹 Aggregation

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `GROUP BY`
- `HAVING`

### 🔹 JOINs

- `INNER JOIN`
- `LEFT JOIN`
- `SELF JOIN`
- Multiple-table JOINs

### 🔹 Advanced SQL

- Subqueries
- Common Table Expressions (CTEs)
- `CASE` statements
- Window Functions
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- `PARTITION BY`
- Running Totals
- Top-N Analysis

---

## 📊 Key Business Questions

This project uses SQL to answer practical business questions related to retail sales.

### 🛍️ Sales Analysis

- What are the total sales and net sales?
- What is the gross sales amount?
- How much discount was given?
- What is the average order value?
- Which month generated the highest sales?
- How is sales performance changing over time?
- What is the monthly sales growth?

### 📦 Product Analysis

- Which products sell the most units?
- Which products generate the highest revenue?
- Which products have the highest profit?
- Which products have low inventory?
- Which products have never been sold?
- Which category generates the highest revenue?
- What are the top 3 products in each category?

### 👥 Customer Analysis

- How many customers are registered?
- Which customers have placed the most orders?
- Which customers spend the most?
- Which customers have never placed an order?
- What is the average order value for each customer?
- What is each customer's first order date?
- What is each customer's most recent order date?

### 👨‍💼 Employee Analysis

- Which employee handles the most orders?
- Which employee handles the highest order value?
- Which employees report to which managers?

### 🧾 Order Analysis

- How many orders are in each order status?
- Which payment method is used most frequently?
- Which city generates the highest sales?
- What is the distribution of order values?

---

## 🚀 Advanced Business Analysis

The project also includes advanced SQL problems and analytical queries such as:

- Finding the second-highest product price
- Finding the third-highest product price
- Finding the second-highest revenue-generating product
- Finding customers who placed more than two orders
- Finding the highest-revenue category
- Finding the employee with the highest number of orders
- Finding products that have never been sold
- Finding customers who have never placed an order
- Finding the top 3 products in every category
- Finding each customer's first order
- Finding each customer's latest order
- Finding customers whose spending is above average
- Finding the highest-selling product for each month
- Calculating monthly revenue growth
- Calculating category contribution to total revenue
- Calculating cumulative revenue
- Calculating running monthly sales totals

---

## 📈 Project Highlights

This project helped me practice SQL from basic queries to advanced business analysis using a single retail sales database.

### Key Areas Covered

- Relational database design
- Data exploration
- Data filtering and sorting
- Data aggregation
- Multi-table analysis
- Sales and revenue calculations
- Customer analysis
- Product performance analysis
- Inventory analysis
- Employee performance analysis
- Advanced SQL queries
- Window functions
- Business KPI generation
- SQL interview problem solving

The project focuses not only on writing SQL queries, but also on understanding the business problem behind each analysis.

---

## 🛠️ Tools & Technologies

- **MySQL**
- **MySQL Workbench**
- **SQL**
- **Relational Database Concepts**
- **Data Analysis**

---

## 💡 Skills Demonstrated

Through this project, I practiced and demonstrated:

- SQL Query Writing
- MySQL
- Database Design
- Relational Data Modeling
- Data Exploration
- Data Analysis
- Business Analysis
- Sales Analytics
- Customer Analytics
- Product Analytics
- Advanced SQL
- Analytical Thinking
- Problem Solving

---

## 🔮 Future Improvements

I plan to extend this project further by:

- Connecting the SQL database with Power BI
- Creating an interactive retail sales dashboard
- Adding more historical sales data
- Performing customer segmentation
- Adding sales forecasting
- Analyzing customer retention
- Creating monthly and yearly KPI dashboards
- Optimizing queries using indexes
- Creating SQL views for frequently used reports

---

## 👨‍💻 Author

**Shivendra Ghadage**

Data Analyst | SQL | MySQL | Power BI | Python

### GitHub

[Shivendra-Ghadage](https://github.com/Shivendra-Ghadage)

---

## ⭐ Conclusion

This project was created as a practical SQL learning and portfolio project.

It helped me move from basic SQL concepts to advanced analytical techniques while working with a realistic retail sales database.

Through this project, I practiced how SQL can be used to explore data, identify trends, calculate business KPIs, analyze customer and product performance, and answer real-world business questions.

⭐ Thank you for visiting this project!
