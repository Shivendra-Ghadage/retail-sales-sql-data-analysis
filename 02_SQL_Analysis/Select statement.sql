-- PART 2 — SELECT STATEMENT
use retail_sales;

-- display all customers
select * from customers;

-- select specific columns 
select customer_id, first_name, last_name, city
from customers;

-- Display products
select product_id, product_name, price, stock_quantity
from products;

-- Display orders
select order_id, customer_id, order_date, order_status, total_amount
from orders;

