select * 
from customers 
where not birth_date > '1990-01-01' and points > 1000
								or customer_id > 5
                                and first_name = 'Elka';
                                
-- task3

select * 
from order_items
where order_id = 6 and quantity * unit_price > 30
	
