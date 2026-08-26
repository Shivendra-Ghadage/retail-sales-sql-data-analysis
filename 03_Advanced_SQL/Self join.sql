-- Part 27 - Self join
use retail_sales;

-- Employee and manager
select
    concat(e.first_name, ' ', e.last_name) as employee_name,
    concat(m.first_name, ' ', m.last_name) as manager_name,
    e.department
from employees e
left join employees m
    on e.manager_id = m.employee_id;