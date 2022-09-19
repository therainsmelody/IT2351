SELECT sum(unit_price*order_qty) as Total, concat(customers.customer_first_name," ", customers.Customer_last_name) as "Customer Name", orders.order_id, items.artist, items.unit_price, order_details.order_qty, DATE_FORMAT(orders.order_date, "%c/%d/%y") as 'Order Date', DATE_FORMAT(orders.shipped_date, "%c/%d/%y") as 'Shipped Date' 
from orders
INNER JOIN customers ON customers.customer_id=orders.customer_id
INNER JOIN order_details ON order_details.order_id=orders.order_id
JOIN items ON items.item_id=order_details.item_id
where shipped_date is NULL
group by items.artist
order by 
customer_last_name asc, order_details.order_qty asc