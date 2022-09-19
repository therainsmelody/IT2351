select concat(customer_first_name," ", Customer_last_name) as "Customer Name", customer_state
from customers
where customer_state = 'OH'
OR Customer_state = 'NY'
ORDER BY customer_state,customer_last_name,customer_first_name;