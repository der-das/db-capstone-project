CREATE VIEW OrdersView AS (
	SELECT orderID, quantity, totalCost
    FROM Orders o
    WHERE o.quantity > 2
);
SELECT * FROM OrdersView;