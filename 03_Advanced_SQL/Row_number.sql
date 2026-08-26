-- Part 31 - Row_number
use retail_sales;

-- Rank every product uniquely
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
    row_number() over (
        order by revenue desc
    ) as row_num
from product_sales;