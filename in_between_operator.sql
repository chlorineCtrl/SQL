select * 
from products 
where quantity_in_stock in (49,38,72);

select *
from customers
where points between 1000 and 3000;

-- task4

select * 
from customers
where birth_date between '1990-01-01' and '2000-01-01'