Use courtneys_guitar_shop;
Drop trigger if exists products_before_update;
-- Change statement delimiter
delimiter //
-- Create trigger named products_before_update
Create trigger products_before_update
	before update on products
	for each row
-- Check to see if the new list price is between 200 and 1100 and return an error if it's outside that range
BEGIN
  IF NEW.list_price < 200 or NEW.list_price > 1100
  THEN
   SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Warning: list price must be between 200 and 1100';
  END IF;
END //

    Update products
    Set `list_price` = '150'
    where product_id = 2
    