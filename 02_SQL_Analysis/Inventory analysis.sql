-- PART 8 — INVENTORY ANALYSIS
use retail_sales; 

-- Total inventory units
select sum(stock_quantity) as total_stock
from products;

-- Inventory value
select sum(stock_quantity * cost_price) as total_stock_value
from products;

-- Low-stock products
select product_name,
	   stock_quantity
from products
where stock_quantity < 10
order by stock_quantity;