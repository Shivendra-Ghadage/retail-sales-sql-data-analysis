-- PART 25 — Date functions
use retail_sales;

-- Orders by year
select
    year(order_date) as order_year,
    count(*) as total_orders
from orders
group by year(order_date)
order by order_year;

-- Orders by month
select
    year(order_date) as order_year,
    month(order_date) as order_month,
    count(*) as total_orders
from orders
group by
    year(order_date),
    month(order_date)
order by
    order_year,
    order_month;
    
-- Monthly revenue
select
    year(order_date) as order_year,
    month(order_date) as order_month,
    sum(total_amount) as monthly_sales
from orders
group by
    year(order_date),
    month(order_date)
order by
    order_year,
    order_month;