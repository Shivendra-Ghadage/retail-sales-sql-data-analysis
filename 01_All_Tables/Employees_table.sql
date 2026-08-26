use retail_sales;

create table employees (
    employee_id int primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique,
    department varchar(50),
    job_title varchar(50),
    salary decimal(10, 2),
    hire_date date,
    manager_id int,
    foreign key (manager_id)
		references employees(employee_id)
);

show tables;
describe employees;

INSERT INTO employees
(employee_id, first_name, last_name, email, department, job_title, salary, hire_date, manager_id)
VALUES
(1, 'Raj', 'Mehta', 'raj.mehta@retail.com', 'Sales', 'Sales Manager', 75000.00, '2021-01-10', NULL),
(2, 'Sunita', 'Shah', 'sunita.shah@retail.com', 'Sales', 'Sales Manager', 72000.00, '2021-03-15', NULL),
(3, 'Vikas', 'Patil', 'vikas.patil@retail.com', 'Operations', 'Operations Manager', 80000.00, '2020-06-20', NULL),
(4, 'Neeraj', 'Kulkarni', 'neeraj.kulkarni@retail.com', 'IT', 'IT Manager', 85000.00, '2020-08-15', NULL),
(5, 'Pooja', 'Desai', 'pooja.desai@retail.com', 'HR', 'HR Manager', 70000.00, '2021-02-20', NULL),
(6, 'Aman', 'Joshi', 'aman.joshi@retail.com', 'Sales', 'Sales Executive', 42000.00, '2022-02-10', 1),
(7, 'Priti', 'More', 'priti.more@retail.com', 'Sales', 'Sales Executive', 40000.00, '2022-05-15', 1),
(8, 'Rohan', 'Kale', 'rohan.kale@retail.com', 'Sales', 'Sales Executive', 45000.00, '2023-01-12', 2),
(9, 'Komal', 'Pawar', 'komal.pawar@retail.com', 'Sales', 'Sales Executive', 43000.00, '2023-04-18', 2),
(10, 'Vijay', 'Mane', 'vijay.mane@retail.com', 'Operations', 'Operations Executive', 46000.00, '2022-08-10', 3),
(11, 'Snehal', 'Desai', 'snehal.desai@retail.com', 'Operations', 'Operations Executive', 44000.00, '2023-03-20', 3),
(12, 'Arjun', 'Kulkarni', 'arjun.kulkarni@retail.com', 'IT', 'IT Support', 50000.00, '2022-11-05', 4),
(13, 'Kiran', 'Patil', 'kiran.patil@retail.com', 'IT', 'Developer', 58000.00, '2023-01-15', 4),
(14, 'Nikhil', 'Shinde', 'nikhil.shinde@retail.com', 'IT', 'Data Analyst', 60000.00, '2023-06-10', 4),
(15, 'Swati', 'Jadhav', 'swati.jadhav@retail.com', 'HR', 'HR Executive', 42000.00, '2022-09-12', 5),
(16, 'Akshay', 'Pawar', 'akshay.pawar@retail.com', 'HR', 'Recruiter', 45000.00, '2023-02-18', 5),
(17, 'Tejas', 'More', 'tejas.more@retail.com', 'Sales', 'Sales Executive', 41000.00, '2023-07-20', 1),
(18, 'Riya', 'Kadam', 'riya.kadam@retail.com', 'Sales', 'Sales Executive', 43000.00, '2024-01-10', 2),
(19, 'Sagar', 'Chavan', 'sagar.chavan@retail.com', 'Operations', 'Operations Executive', 47000.00, '2023-10-05', 3),
(20, 'Meena', 'Thorat', 'meena.thorat@retail.com', 'IT', 'Database Administrator', 62000.00, '2024-02-15', 4),
(21, 'Omkar', 'Bhosale', 'omkar.bhosale@retail.com', 'IT', 'Software Engineer', 57000.00, '2024-03-10', 4),
(22, 'Aarti', 'Kore', 'aarti.kore@retail.com', 'HR', 'HR Executive', 43000.00, '2024-04-12', 5),
(23, 'Vishal', 'Mane', 'vishal.mane@retail.com', 'Sales', 'Sales Executive', 44000.00, '2024-05-18', 1),
(24, 'Neha', 'Joshi', 'neha.joshi@retail.com', 'Operations', 'Operations Executive', 45000.00, '2024-06-20', 3),
(25, 'Pratik', 'Gaikwad', 'pratik.gaikwad@retail.com', 'Sales', 'Sales Executive', 42000.00, '2024-07-15', 2);

select * from employees;

-- total employees
select count(*) as total_employees
from employees;

