-- Part14 - Sales Calculation
use retail_sales;

-- Gross amount per item
select 
	order_item_id,
    order_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as gross_amount
from order_items;

-- Discount amount
select
	order_item_id,
    quantity,
    unit_price,
    discount_percent,
    quantity * unit_price * discount_percent * 100 as discount_amount
from order_items;

-- Net sales per item
select
	order_item_id,
    quantity,
    unit_price,
    discount_percent,
    quantity * unit_price * 
			(1 - discount_percent/100) as net_sales
from order_items;
