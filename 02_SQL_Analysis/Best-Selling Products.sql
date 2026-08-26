-- Part 16 - Best-Selling Products
use retail_sales;

-- Unit sold by product
select
	p.product_name,
    sum(oi.quantity) as units_sold
from order_items as oi
inner join products as p
	on oi.product_id = p.product_id
group by
	p.product_id,
    p.product_name
order by units_sold desc;

-- Top 10 products by units
select
	p.product_name,
    sum(oi.quantity) as units_sold
from order_items as oi
inner join products as p
	on oi.product_id = p.product_id
group by
	p.product_id,
    p.product_name
order by units_sold desc
limit 10;
