select *
from customers
where last_name regexp '^brush|mac|caffrey$';

-- task6

select *
from customers
where first_name regexp 'ekla|ambur|ey$|on$|' and last_name regexp 'b[ru]'