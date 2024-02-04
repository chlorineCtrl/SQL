select *
from order_items
join products on order_items.product_id = products.product_id;