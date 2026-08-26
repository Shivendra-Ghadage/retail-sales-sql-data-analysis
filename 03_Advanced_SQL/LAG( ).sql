-- Part 34 - LAG()
use retail_sales;

-- Compare monthly sales
with monthly_sales as (
    select
        year(order_date) as year,
        month(order_date) as month,
        sum(total_amount) as sales
    from orders
    group by
        year(order_date),
        month(order_date)
)
select
    year,
    month,
    sales,
    LAG(sales) over (
        order by year, month
    ) as previous_month_sales
from monthly_sales;