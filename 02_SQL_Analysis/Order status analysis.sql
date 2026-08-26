-- Part 21 - Order status analysis
use retail_sales;

-- Orders by status
select
	order_status,
    count(*) as total_orders
from orders
group by order_status
order by total_orders desc;

-- Sales by order status
select 
	order_status,
    sum(total_amount) as total_sales
from orders
group by order_status
order by total_sales desc;