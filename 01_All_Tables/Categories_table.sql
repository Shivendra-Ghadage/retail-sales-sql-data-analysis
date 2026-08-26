use retail_sales;

create table categories(
	category_id int primary key,
    category_name varchar(50) not null unique,
    description varchar(255)
);

insert into categories
(category_id, category_name, description)
values
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Mobiles', 'Smartphones and mobile accessories'),
(3, 'Laptops', 'Laptops and computer devices'),
(4, 'Home Appliances', 'Appliances for home use'),
(5, 'Furniture', 'Home and office furniture'),
(6, 'Fashion', 'Clothing and fashion products'),
(7, 'Sports', 'Sports and fitness products'),
(8, 'Books', 'Books and educational materials'),
(9, 'Kitchen', 'Kitchen tools and equipment'),
(10, 'Beauty', 'Beauty and personal care products');

select * from categories;

show tables;
describe categories;

select count(*) as total_categories
from categories;