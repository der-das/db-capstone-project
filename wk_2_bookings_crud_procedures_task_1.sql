USE LittleLemonDB;
DROP PROCEDURE IF EXISTS AddBooking;
SET DELIMITER //
CREATE PROCEDURE AddBooking(bookID INT, custID INT, bookDate DATE, tableNo INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		SELECT "Failed to add booking" as Confirmation;
		ROLLBACK;
    END;
    
	START TRANSACTION;
	INSERT INTO Bookings(bookingID, customerID, bookingDate, tableNumber) VALUES (bookID, custID, bookDate, tableNo);
	SELECT "New booking added" AS Confirmation;
	COMMIT;
END//
SET DELIMITER ;