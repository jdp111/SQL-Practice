-- Comments in SQL Start with dash-dash --
-- Comments in SQL Start with dash-dash --
INSERT INTO products 
  (name, price, can_be_returned)
Values
('chair',44.00,0),  --add chair--
('stool',25.99,1),   --add stool--
('table',124.00,0); --add table--

SELECT * FROM products;   --show entire products table--
select name from products; --display all product names--
select name, price from products;

INSERT INTO products 
  (name, price, can_be_returned)
Values
('Blahaj Shark',12,0);


select * from products where can_be_returned; --shows products that can be returned--
select * from products where price < 44; --shows price lees than 44--
select * from products where price between 22.50 and 99.99; --shows between 22.50 and 99.99--

update products
set price = price - 20;      --takes $20 off for products over $20--


delete from products where price < 5; --removes products that were <25$ before the sale--

update products
set price = price + 20;    --adds back the 20$ off--

update products
can_be_returned =1;  --make all returnable--


