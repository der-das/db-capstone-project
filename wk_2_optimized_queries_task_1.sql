DROP PROCEDURE IF EXISTS GetMaxQuantity;
SET DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(quantity) AS 'Max Quantity In Order' FROM Orders;
END//
SET DELIMITER ;
CALL GetMaxQuantity();