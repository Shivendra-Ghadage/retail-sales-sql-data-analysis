-- part 24 - Case satament
use retail_sales;

-- Product price segmentation
select
	product_name,
    price,
    case
		when price >= 50000 then 'Premium'
        when price >= 10000 then 'Mid range'
        else 'budget'
	end as price_category
from products;

-- Order value segmentation
select
	order_id,
    total_amount,
    case
		when total_amount >= 50000 then 'High value'
        when total_amount >= 10000 then 'Mid value'
        else 'Low value'
	end as order_category
from orders;

