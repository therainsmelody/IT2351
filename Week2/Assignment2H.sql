-- Create a new query that joins the items and order details tables. Include the fields title, artist,
-- unit_price and order_qty with column aliases. Create a “Total with Tax” column that multiplies
-- order_qty, unit_price and a tax rate of 8.5% (multiply by 1.085). Round the output of your
-- calculation to two decimal places and remove duplicate rows using select distinct.

Select distinct order_details.order_id, items.title as 'Item Title', items.artist as 'Item Artist', items.unit_price as 'Unit Price', order_details.order_qty as 'Order Quantity',  
ROUND(order_details.order_qty*items.unit_price*1.085,2) as 'Total with Tax'
from Items
Inner Join order_details on order_details.item_id=items.item_id