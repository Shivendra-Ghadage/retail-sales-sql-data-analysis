-- Part 17 Revenue by product
use retail_sales;

-- Product revenue
select
    p.product_name,
    sum(
        quantity *
        unit_price *
        (1 - discount_percent / 100)
    ) as revenue
from order_items as oi
inner join products as p
    on oi.product_id = p.product_id
group by
    p.product_id,
    p.product_name
order by revenue desc;

-- Top 10 product by revenue
select
    p.product_name,
    sum(
        quantity *
        unit_price *
        (1 - discount_percent / 100)
    ) as revenue
from order_items as oi
inner join products as p
    on oi.product_id = p.product_id
group by
    p.product_id,
    p.product_name
order by revenue desc
limit 10;


