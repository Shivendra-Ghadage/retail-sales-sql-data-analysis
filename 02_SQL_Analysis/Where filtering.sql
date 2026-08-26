-- PART 3 — WHERE FILTERING
use retail_sales;

-- Customers from Pune
select * from customers
where city='Pune';

-- Customers from Pune and its count
select count('Pune') 
from customers
where city = 'Pune';

-- Customers from Mumbai
select * from customers
where city = 'Mumbai';

-- Products above ₹50,000
select product_name, price
from products
where price > 50000;

-- Products below ₹5,000
select product_name, price
from products
where price < 5000;

-- Products between ₹1,000 and ₹10,000
select product_name, price
from products
where price between 1000 and 10000;

-- Delivered orders
select * from orders
where order_status = 'Delivered';

-- Cancelled orders
select * from orders
where order_status = 'Cancelled';

-- Multiple conditions
select product_name, price, stock_quantity
from products
where price < 10000 and
	  stock_quantity < 20;