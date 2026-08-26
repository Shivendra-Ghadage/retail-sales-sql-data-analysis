-- Part 15- Total Sales KPIs
use retail_sales;

-- Gross sales
select sum(quantity * unit_price) as gross_sales
from order_items;

-- Total discount
select sum(
	quantity * unit_price * discount_percent / 100
    ) as total_discount
from order_items;

-- Net sales
select
	sum(
		quantity * unit_price * (1 - discount_percent/ 100)
        ) as net_sales
from order_items;

-- Total units sold
select
	sum(quantity) as total_units_sold
from order_items;
