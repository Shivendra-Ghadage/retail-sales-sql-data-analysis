-- Part 35 - Sales growth
use retail_sales;

-- Month-over-month growth
with monthly_sales as (
    select
        year(order_date) as year,
        month(order_date) as month,
        sum(total_amount) as sales
    from orders
    group by
        year(order_date),
        month(order_date)
),
sales_comparison as (
    select
        year,
        month,
        sales,
        LAG(sales) over (
            order by year, month
        ) as previous_sales
    from monthly_sales
)
select
    year,
    month,
    sales,
    previous_sales,
    round(
        (sales - previous_sales)
        / previous_sales * 100,
        2
    ) as growth_percentage
from sales_comparison;