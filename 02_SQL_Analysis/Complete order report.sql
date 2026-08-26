-- Part 12 - Multiple join
use retail_sales;

-- Complete order report
select 
	order_id,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    concat(e.first_name, ' ', e.last_name) as employee_name,
    order_date,
    order_status,
    payment_method,
    total_amount
from orders o
inner join customers as c
	on o.customer_id = c.customer_id
inner join employees as e
	 on o.employee_id = e.employee_id;
     