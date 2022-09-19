SELECT orders.order_id, customers.customer_last_name, DATE_FORMAT(orders.order_date, "%c/%d/%y") as 'Order Date', DATE_FORMAT(orders.shipped_date, "%c/%d/%y") as 'Shipped Date' 
from orders
INNER JOIN customers ON customers.customer_id=orders.customer_id
order by customer_last_name asc