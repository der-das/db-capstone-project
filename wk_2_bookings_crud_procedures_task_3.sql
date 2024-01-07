DROP PROCEDURE IF EXISTS CancelBooking;
SET DELIMITER //
CREATE PROCEDURE CancelBooking(bookID INT)
BEGIN
	DELETE FROM bookings WHERE bookingID = bookID;
    SELECT CONCAT("Booking ", bookID, ", if existed, has been cancelled") as Confirmation;
END//
SET DELIMITER ;