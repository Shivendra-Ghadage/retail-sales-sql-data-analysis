-- Part 23 - City analysis
use retail_sales;

-- Order by city
select
	shipping_city,
    count(*)as total_orders,
    sum(total_amount) as total_sales
from orders 
group by shipping_city
order by total_sales desc;
