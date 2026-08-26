-- Part 22 - Payment analysis
use retail_sales;

-- Order by payment method
select 
	payment_method,
    count(*) as total_orders
from orders
group by payment_method
order by total_orders desc;

-- Revenue buy payment method
select 
	payment_method,
    sum(total_amount) as total_sales
from orders
group by payment_method
order by total_sales desc;

