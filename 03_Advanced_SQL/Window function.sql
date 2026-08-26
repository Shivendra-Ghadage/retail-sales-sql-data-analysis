-- Part 30 - Window function
use retail_sales;

-- Rank products by revenue
with product_sales as (
    select
        p.product_id,
        p.product_name,
        sum(
            oi.quantity *
            oi.unit_price *
            (1 - oi.discount_percent / 100)
        ) as revenue
    from products p
    inner join order_items oi
        on p.product_id = oi.product_id
    group by
        p.product_id,
        p.product_name
)
select
    product_name,
    revenue,
    rank() over (
        order by revenue desc
    ) as revenue_rank
from product_sales;