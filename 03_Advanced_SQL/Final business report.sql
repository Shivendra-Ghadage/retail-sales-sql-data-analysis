-- part 36 - Final business report
use retail_sales;

-- Executive KPI
select
    (select count(*) from customers) as total_customers,
    (select count(*) from products) as total_products,
    (select count(*) from orders) as total_orders,
    (select sum(quantity) from order_items) as units_sold,
    (select sum(quantity * unit_price)
     from order_items) as gross_sales,
    (select sum(
        quantity * unit_price *
        discount_percent / 100
     )
     from order_items) as total_discount,
    (select sum(
        quantity * unit_price *
        (1 - discount_percent / 100)
     )
from order_items) as net_sales;
     
-- Category Performance Report
select
    c.category_name,
    count(distinct p.product_id) as product_count,
    sum(oi.quantity) as units_sold,
    sum(
        oi.quantity *
        oi.unit_price *
        (1 - oi.discount_percent / 100)
    ) as revenue
from categories c
inner join products p
    on c.category_id = p.category_id
inner join order_items oi
    on p.product_id = oi.product_id
group by
    c.category_id,
    c.category_name
order by revenue desc;

-- Customer Performance Report
select
    c.customer_id,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    count(o.order_id) as total_orders,
    sum(o.total_amount) as total_spending,
    avg(o.total_amount) as average_order_value
from customers c
left join orders o
    on c.customer_id = o.customer_id
group by
    c.customer_id,
    c.first_name,
    c.last_name
order by total_spending desc;

-- Product Performance Report
select
    p.product_id,
    p.product_name,
    c.category_name,
    sum(oi.quantity) as units_sold,
    sum(
        oi.quantity *
        oi.unit_price *
        (1 - oi.discount_percent / 100)
    ) as revenue,
    avg(oi.unit_price) as average_selling_price
from products p
inner join categories c
    on p.category_id = c.category_id
inner join order_items oi
    on p.product_id = oi.product_id
group by
    p.product_id,
    p.product_name,
    c.category_name
order by revenue desc;