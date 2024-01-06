PREPARE GetOrderDetail FROM 'SELECT 
	orderID, quantity, totalCost 
    FROM orders 
    WHERE orderID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;