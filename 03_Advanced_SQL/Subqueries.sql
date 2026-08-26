-- PART 26 — Subqueries
use retail_sales;

-- Products above average price
select
    product_name,
    price
from products
where price > (
    select avg(price)
    from products
)
order by price desc;

-- Most expensive product
select
    product_name,
    price
from products
where price = (
    select MAX(price)
    from products
);

-- Orders above average order value
select
    order_id,
    customer_id,
    total_amount
from orders
where total_amount > (
    select avg (total_amount)
    from orders
)
order by total_amount desc;