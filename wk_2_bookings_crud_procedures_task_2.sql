DROP PROCEDURE IF EXISTS UpdateBooking;
SET DELIMITER //
CREATE PROCEDURE UpdateBooking(bookID INT, bookDate DATE)
BEGIN
DECLARE bookStatus VARCHAR(63);
DECLARE tableNo INT;
SET tableNo = (SELECT tableNumber FROM bookings WHERE bookingID = bookID);
IF EXISTS(SELECT tableNumber FROM bookings WHERE bookingDate = bookDate AND tableNumber = tableNo)
	THEN SET bookStatus = CONCAT("Not updating - table ", tableNo, " already booked for ", bookDate);
ELSE
	UPDATE bookings
		SET bookingDate = bookDate
		WHERE bookingID = bookID;
    SET bookStatus = CONCAT("Booking ", bookID, " updated.");
END IF; 
SELECT bookStatus as "Confimation";
END//
SET DELIMITER ;