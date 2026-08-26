-- PART 4 — ORDER BY
use retail_sales;

-- Most expensive products
select product_name, price
from products
order by price desc;

-- Cheapest products
select product_name, price
from products
order by price asc;

-- Top 10 expensive products
select product_name, price
from products
order by price desc
limit 10;

-- Newest customers
select customer_id, first_name, last_name, registration_date
from customers
order by registration_date desc
limit 1;