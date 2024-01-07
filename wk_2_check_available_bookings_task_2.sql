DROP PROCEDURE IF EXISTS CheckBooking;
SET DELIMITER //
CREATE PROCEDURE CheckBooking(bookDate DATE, tableNo INT)
BEGIN
	IF EXISTS(SELECT bookingDate FROM Bookings WHERE bookingDate = bookDate AND tableNumber = tableNo)
		THEN SELECT CONCAT("Table ", tableNo, " is already booked for ", bookDate) AS "Booking Status";
    ELSE
		SELECT CONCAT("Table ", tableNo, " is available on ", bookDate) AS "Booking Status";
    END IF;
END//
SET DELIMITER ;