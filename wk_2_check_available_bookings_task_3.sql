DROP PROCEDURE IF EXISTS AddValidBooking;
SET DELIMITER //
CREATE PROCEDURE AddValidBooking(prosDate DATE, prosTable INT)
BEGIN
	DECLARE bookingStatus VARCHAR(63);
    START TRANSACTION;
	INSERT INTO bookings(tableNumber, bookingDate, customerID) 
		VALUES (prosTable, prosDate, 0);
    IF (SELECT COUNT(tableNumber) FROM bookings WHERE bookingDate = prosDate AND tableNumber = prosTable) = 1
		THEN
			SET bookingStatus = CONCAT('Table ', prosTable, ' is open - booking for ', prosDate);
			COMMIT;
    ELSE
		SET bookingStatus = CONCAT('Table ', prosTable, ' is already booked for ', prosDate);
		ROLLBACK;
    END IF;
    SELECT bookingStatus;
END//
SET DELIMITER ;