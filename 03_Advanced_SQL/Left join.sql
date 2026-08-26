-- Part 29 - Left join
use retail_sales;

-- Customers with or without orders
select
    c.customer_id,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    count(o.order_id) as total_orders
from customers c
left join orders o
    on c.customer_id = o.customer_id
group by
    c.customer_id,
    c.first_name,
    c.last_name
order by total_orders desc;

-- Customers who never ordered
select
    c.customer_id,
    concat(c.first_name, ' ', c.last_name) as customer_name
from customers c
left join orders o
    on c.customer_id = o.customer_id
where o.order_id is null;