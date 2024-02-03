select 
	last_name, 
	first_name, 
    points,
    points - 100 as 'discount factor'
from customers;

select distinct state
from customers;

-- task1

select 
	name,
    unit_price,
    unit_price * 20 as 'new price'
from products
    
    