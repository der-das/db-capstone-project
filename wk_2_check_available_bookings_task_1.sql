USE LittleLemonDB;
DELETE FROM Customers WHERE customerID in (1, 2, 3, 4);
INSERT INTO Customers(customerID, customerFirstName, customerLastName, customerPhone, customerEmail)
	VALUES (0, "Anon", "Anon", "0000000000", "anon"),
		(1, "John", "Doe", "1111111111", "smol@smol.com"),
		(2, "Jane", "Doe", "1111111111", "smol2@smol.com"),
        (3, "Jimmy", "Dean", "2913029384", "jimmydean@gmail.com"),
        (4, "Sam", "Winchester", "392837490", "sam.winchester@hunter.com");
DELETE FROM Bookings WHERE bookingID in (1, 2, 3, 4);
INSERT INTO Bookings(bookingID, bookingDate, tableNumber, customerID) 
	VALUES (1, '2022-10-10', 5, 1),
    (2, '2022-11-12', 3, 3),
    (3, '2022-10-11', 2, 2),
    (4, '2022-10-13', 2, 1);