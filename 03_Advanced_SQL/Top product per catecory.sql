-- Part 33 - Top product per catecory
use retail_sales;

-- Highest-revenue product in every category
with product_sales as (
    select
        c.category_name,
        p.product_name,
        sum(
            oi.quantity *
            oi.unit_price *
            (1 - oi.discount_percent / 100)
        ) as revenue
    from order_items oi
    inner join products p
        on oi.product_id = p.product_id
    inner join categories c
        on p.category_id = c.category_id
    group by
        c.category_name,
        p.product_id,
        p.product_name
),
ranked_products as (
    select
        category_name,
        product_name,
        revenue,
        row_number() over (
            partition by category_name
            order by revenue desc
        ) as rn
    from product_sales
)
select
    category_name,
    product_name,
    revenue
from ranked_products
where rn = 1;