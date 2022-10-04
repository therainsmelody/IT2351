CREATE VIEW items_ordered
    AS    
Select count(distinct order_items.product_id) as 'Quantity', products.product_name, products.list_price as 'Quantity' from  order_items
Join products on products.product_id = order_items.product_id
group by order_items.product_id