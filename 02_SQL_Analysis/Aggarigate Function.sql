-- PART 6 — AGGREGATE FUNCTIONS
-- Now we start doing actual business analysis.
use retail_sales;

-- Number of customers
select count(*) as total_customers
from customers;

-- Number of products
select count(*) as total_products
from products;

-- Number of orders
select count(*) as total_orders
from orders;

-- Average product price
select avg(price) as average_product_price
from products;

-- Maximum product price
select max(price) as maximum_product_price
from products;

-- Minimum product price
select min(price) as lowest_price
from products;

-- Total product price
select sum(price) as Total_price
from products;
