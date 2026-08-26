-- Part13 - Product Sales
use retail_sales;

-- order items with product names
select 
	order_item_id,
    order_id,
    product_name,
    quantity,
    unit_price,
    discount_percent
from order_items as oi
inner join products as p
	on oi.product_id = p.product_id;
    
-- Order items with category names
select
	order_id,
    product_name,
    category_name,
    quantity,
    unit_price
from order_items as oi
inner join products as p
	on oi.product_id = p.product_id
inner join categories as c
	on p.category_id = c.category_id;