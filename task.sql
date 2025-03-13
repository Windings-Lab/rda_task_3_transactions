-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)
INSERT INTO Orders(ID, CustomerID, Date)
    VALUES (1,1, DEFAULT);

-- Start the transaction 
START TRANSACTION; 

-- And some data should be created inside the transaction
INSERT INTO OrderItems(OrderID, ProductID, Count)
    VALUES (1, 1, 1);
UPDATE Products SET WarehouseAmount = WarehouseAmount - 1
WHERE ID = 1;

COMMIT; 