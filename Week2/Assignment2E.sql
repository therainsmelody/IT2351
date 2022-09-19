SELECT concat(customers.customer_first_name," ", customers.Customer_last_name) as "Customer Name", orders.order_id, order_details.item_id, order_details.order_qty, DATE_FORMAT(orders.order_date, "%c/%d/%y") as 'Order Date', DATE_FORMAT(orders.shipped_date, "%c/%d/%y") as 'Shipped Date' 
from orders
INNER JOIN customers ON customers.customer_id=orders.customer_id
INNER JOIN order_details ON order_details.order_id=orders.order_id
order by 
customer_last_name asc, order_details.order_qty asc