select *
from customers
order by first_name desc;

-- task7

select *, quantity * unit_price as 'total price'
from order_items
where order_id = 2
order by 'total price' desc
limit 1,2