-- Part 32 - CTE
use retail_sales;

-- Create a reusable sales calculation
with sales as (
    select
        oi.order_id,
        oi.product_id,
        oi.quantity,
        oi.quantity * oi.unit_price *
        (1 - oi.discount_percent / 100) as net_sales
    from order_items oi
)
select
    sum(net_sales) as total_net_sales
from sales;