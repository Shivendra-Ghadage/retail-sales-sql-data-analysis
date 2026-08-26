-- PART 9 — GROUP BY
use retail_sales;

-- Products by category
select category_id,
	   count(*) as product_count
from products
group by category_id;

-- Average price by category
select category_id,
	   avg(price) as average_price
from products
group by category_id;

-- Total stock by category
select category_id,
	   sum(stock_quantity) as total_stock
from products
group by category_id;

