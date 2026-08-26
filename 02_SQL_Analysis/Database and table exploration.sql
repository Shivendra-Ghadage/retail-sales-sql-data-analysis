-- select database
use retail_sales;

-- show all tables
show tables;

-- check table structure
describe customers;
describe employees;
describe categories;
describe orders;
describe products;
describe order_items;

-- count records in every table.
select 'customers' as table_name, count(*) as total_records
from customers
union all
select 'employees', count(*)
from employees
union all
select 'categories', count(*)
from categories
union all
select 'products', count(*)
from products
union all
select 'orders', count(*)
from orders
union all 
select 'order_items', count(*)
from order_items;

