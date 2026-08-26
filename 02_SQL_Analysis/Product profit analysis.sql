-- PART 7 — PRODUCT PROFIT ANALYSIS
use retail_sales;

-- Profit per product
select product_name, 
	   cost_price, 
       price,
       price - cost_price
from products;

-- Highest-profit products
select product_name, 
	   cost_price,
       price,
       price - cost_price as profit
from products
order by profit desc
limit 1;

-- Top 10 profitable products
select product_name,
	   cost_price,
       price,
       price - cost_price as profit
from products
order by profit desc
limit 10;

-- 