SELECT order_id, customer_id, DATE_FORMAT(order_date, "%c/%d/%y") as 'Order Date', DATE_FORMAT(shipped_date, "%c/%d/%y") as 'Shipped Date' FROM orders; 

