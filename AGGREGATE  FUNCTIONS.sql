create table prodcuts(

product_id serial primary key,
product_name varchar (100),
category varchar (50),
price numeric(10,2),
quantity int,
added_date date,
discount_rate numeric(5,2)

);
insert into prodcuts(product_name, category, price, quantity,added_date,discount_rate) values
('Laptop', 'Electronic', 780000, 10, '2024-01-15', 10.00),
('TV', 'Electronic', 45000, 10, '2024-01-15', 5.00),
('Headphones', 'Accessories', 780000, 10, '2024-02-17', 15.00),
('Chair', 'Furniture', 5500, 10, '2024-01-15', 20.00);
-- Total Quantity available of all products
select sum (quantity) as total_quantity
from prodcuts;

select sum (quantity) as total_quantity_electronic
from prodcuts 
where category = 'Electronic' and price>20000;


