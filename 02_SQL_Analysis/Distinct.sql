-- PART 5 — DISTINCT
use retail_sales;

-- Cities
select distinct city
from customers;

-- Payment methods
select distinct payment_method
from orders;

-- Order statuses
select distinct order_status
from orders;

-- Product suppliers
select distinct supplier_name
from products;