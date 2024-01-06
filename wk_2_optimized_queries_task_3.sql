DROP PROCEDURE IF EXISTS CancelOrder;
SET DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderNo INT)
BEGIN
	IF NOT EXISTS(SELECT orderID FROM Orders WHERE orderID = orderNo)
		THEN 
			SELECT CONCAT('Order with ID ', OrderNo, ' does not exist') AS Confirmation;
	ELSE
		DELETE FROM Orders WHERE orderID = orderNo;
		SELECT CONCAT('Order ', OrderNo, ' is cancelled') AS Confirmation;
    END IF;
END //
SET DELIMITER ;