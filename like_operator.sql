select * 
from customers
where last_name like 'b%';

-- task 5

select * 
from customers 
where address like '%TRAIL%' or 
	  address like '%AVENUE%'