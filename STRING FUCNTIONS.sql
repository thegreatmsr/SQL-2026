create table products(

product_id serial primary key,
product_name varchar (100),
category varchar (50),
price numeric(10,2),
quantity int,
added_date date,
discount_rate numeric(5,2)

);
insert into products(product_name, category, price, quantity,added_date,discount_rate) values
('Laptop', 'Electronic', 780000, 10, '2024-01-15', 10.00),
('TV', 'Electronic', 45000, 10, '2024-01-15', 5.00),
('Headphones', 'Accessories', 780000, 10, '2024-02-17', 15.00),
('Chair', 'Furniture', 5500, 10, '2024-01-15', 20.00);

--Get all the categories in uppercase

select upper (category) as Category_New
from products;
-- Join products name and category with hypen.
select concat(product_name,'_', category)as prodcut_details
from products;
alter table prodcuts
rename to products

-- Replace Functions:-

select replace(product_name, 'phone','device')as new_name
from products;

