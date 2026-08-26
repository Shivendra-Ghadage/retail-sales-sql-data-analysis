-- Part 28 - Null handling
use retail_sales;

-- Employees without managers
select
    employee_id,
    first_name,
    last_name
from employees
where manager_id is null;

-- Replace NULL manager
select
    concat(e.first_name, ' ', e.last_name) as employee_name,
    coalesce(
        concat(m.first_name, ' ', m.last_name),
        'No Manager'
    ) as manager_name
from employees e
left join employees m
    on e.manager_id = m.employee_id;