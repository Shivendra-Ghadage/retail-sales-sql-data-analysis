-- PART 11 — INNER JOIN
use retail_sales;

-- Products with category names
select product_id,
	   product_name,
       category_name
from products as p
inner join categories as c
on p.product_id=c.category_id;

-- Orders with customer names
select order_id,
	   first_name,
       last_name,
       order_date,
       total_amount
from orders as o
inner join customers as c
		on o.customer_id = o.customer_id;
        
-- Orders with employee names
select order_id,
	   first_name,
       last_name,
       order_date,
       total_amount
from orders as o
inner join employees as e
		on o.employee_id = e.employee_id;