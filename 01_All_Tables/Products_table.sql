use retail_sales;

create table products(
	product_id int primary key,
    product_name varchar(100) not null,
    category_id int not null,
    price decimal(10,2) not null,
    cost_price decimal(10,2) not null,
    stock_quantity int not null,
    supplier_name varchar(100),
    product_status varchar(20),
    created_date date,
    foreign key (category_id)
		references categories(category_id)
);

insert into products
(product_id, product_name, category_id, price, cost_price, stock_quantity, supplier_name, product_status, created_date)
values
(1, 'Samsung Galaxy S24', 2, 74999.00, 62000.00, 25, 'Samsung India', 'Active', '2024-01-10'),
(2, 'iPhone 15', 2, 69999.00, 58000.00, 20, 'Apple India', 'Active', '2024-01-15'),
(3, 'OnePlus 12', 2, 59999.00, 49000.00, 30, 'OnePlus India', 'Active', '2024-02-01'),
(4, 'Google Pixel 8', 2, 65999.00, 54000.00, 18, 'Google India', 'Active', '2024-02-05'),
(5, 'Samsung Galaxy A55', 2, 42999.00, 35000.00, 35, 'Samsung India', 'Active', '2024-02-10'),
(6, 'Dell Inspiron 15', 3, 65999.00, 54000.00, 15, 'Dell India', 'Active', '2024-02-15'),
(7, 'HP Pavilion 15', 3, 72999.00, 60000.00, 18, 'HP India', 'Active', '2024-02-20'),
(8, 'Lenovo IdeaPad Slim', 3, 55999.00, 46000.00, 22, 'Lenovo India', 'Active', '2024-03-01'),
(9, 'ASUS Vivobook 15', 3, 61999.00, 50000.00, 16, 'ASUS India', 'Active', '2024-03-05'),
(10, 'Acer Aspire 5', 3, 52999.00, 43000.00, 20, 'Acer India', 'Active', '2024-03-10'),
(11, 'Sony WH-1000XM5', 1, 29999.00, 23000.00, 12, 'Sony India', 'Active', '2024-03-15'),
(12, 'Boat Rockerz 450', 1, 1499.00, 900.00, 80, 'Boat India', 'Active', '2024-03-20'),
(13, 'JBL Tune 760NC', 1, 5999.00, 4200.00, 45, 'JBL India', 'Active', '2024-03-25'),
(14, 'Samsung 55 Inch TV', 1, 54999.00, 44000.00, 12, 'Samsung India', 'Active', '2024-04-01'),
(15, 'LG 43 Inch Smart TV', 1, 38999.00, 31000.00, 15, 'LG India', 'Active', '2024-04-05'),
(16, 'LG Washing Machine', 4, 42999.00, 35000.00, 10, 'LG India', 'Active', '2024-04-10'),
(17, 'Samsung Refrigerator', 4, 48999.00, 40000.00, 8, 'Samsung India', 'Active', '2024-04-15'),
(18, 'Whirlpool Refrigerator', 4, 45999.00, 37000.00, 9, 'Whirlpool India', 'Active', '2024-04-20'),
(19, 'Philips Air Fryer', 4, 8999.00, 6500.00, 25, 'Philips India', 'Active', '2024-05-01'),
(20, 'Bajaj Mixer Grinder', 4, 4999.00, 3500.00, 30, 'Bajaj India', 'Active', '2024-05-05'),
(21, 'Office Chair', 5, 7999.00, 5500.00, 35, 'Featherlite', 'Active', '2024-05-10'),
(22, 'Study Table', 5, 6999.00, 4800.00, 20, 'Nilkamal', 'Active', '2024-05-15'),
(23, 'Wooden Bookshelf', 5, 9999.00, 7000.00, 15, 'Wakefit', 'Active', '2024-06-01'),
(24, 'Office Desk', 5, 11999.00, 8200.00, 18, 'Ikea India', 'Active', '2024-06-05'),
(25, 'Computer Table', 5, 8499.00, 5800.00, 25, 'Nilkamal', 'Active', '2024-06-10'),
(26, 'Men T-Shirt', 6, 999.00, 550.00, 100, 'Puma India', 'Active', '2024-06-15'),
(27, 'Women Kurti', 6, 1499.00, 800.00, 90, 'Biba India', 'Active', '2024-06-20'),
(28, 'Men Jeans', 6, 1999.00, 1100.00, 70, 'Levis India', 'Active', '2024-06-25'),
(29, 'Women Dress', 6, 2499.00, 1400.00, 65, 'Westside', 'Active', '2024-07-01'),
(30, 'Sports Jacket', 6, 2999.00, 1800.00, 50, 'Puma India', 'Active', '2024-07-05'),
(31, 'Running Shoes', 7, 3999.00, 2700.00, 50, 'Nike India', 'Active', '2024-07-10'),
(32, 'Yoga Mat', 7, 1299.00, 700.00, 70, 'Decathlon', 'Active', '2024-07-15'),
(33, 'Cricket Bat', 7, 5999.00, 4000.00, 25, 'SG Sports', 'Active', '2024-07-20'),
(34, 'Football', 7, 1499.00, 900.00, 45, 'Nivia Sports', 'Active', '2024-07-25'),
(35, 'Badminton Racket', 7, 2499.00, 1600.00, 40, 'Yonex India', 'Active', '2024-08-01'),
(36, 'SQL for Data Analysis', 8, 799.00, 400.00, 60, 'Tech Books', 'Active', '2024-08-05'),
(37, 'Python Programming', 8, 899.00, 450.00, 55, 'Tech Books', 'Active', '2024-08-10'),
(38, 'Power BI Guide', 8, 699.00, 350.00, 75, 'Tech Books', 'Active', '2024-08-15'),
(39, 'Data Science Handbook', 8, 999.00, 500.00, 45, 'Tech Books', 'Active', '2024-08-20'),
(40, 'Machine Learning Basics', 8, 899.00, 450.00, 50, 'Tech Books', 'Active', '2024-08-25'),
(41, 'Non Stick Pan', 9, 1499.00, 900.00, 50, 'Prestige India', 'Active', '2024-09-01'),
(42, 'Pressure Cooker', 9, 2499.00, 1600.00, 35, 'Hawkins India', 'Active', '2024-09-05'),
(43, 'Electric Kettle', 9, 1799.00, 1100.00, 40, 'Prestige India', 'Active', '2024-09-10'),
(44, 'Dinner Set', 9, 2999.00, 1900.00, 30, 'Cello India', 'Active', '2024-09-15'),
(45, 'Mixer Grinder', 9, 3999.00, 2700.00, 25, 'Bajaj India', 'Active', '2024-09-20'),
(46, 'Face Wash', 10, 399.00, 220.00, 100, 'Himalaya', 'Active', '2024-09-25'),
(47, 'Moisturizer', 10, 599.00, 350.00, 90, 'Nivea India', 'Active', '2024-10-01'),
(48, 'Sunscreen', 10, 699.00, 400.00, 80, 'Lakme India', 'Active', '2024-10-05'),
(49, 'Shampoo', 10, 499.00, 280.00, 120, 'Dove India', 'Active', '2024-10-10'),
(50, 'Perfume', 10, 1499.00, 900.00, 60, 'Fogg India', 'Active', '2024-10-15');

select * from products;

select count(*) as total_product
from products;

SELECT
    product_id,
    product_name,
    price,
    cost_price,
    price - cost_price AS profit
FROM products;