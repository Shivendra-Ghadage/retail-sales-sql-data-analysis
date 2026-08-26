-- PART 10 — HAVING
use retail_sales;

-- Categories with more than 4 products
select category_id,
	   count(*) as product_count
from products
group by category_id
having count(*) > 4;

-- Employees handling more than 5 orders
select employee_id,
	   count(*) as total_orders
from orders
group by employee_id
having total_orders > 5;

-- 