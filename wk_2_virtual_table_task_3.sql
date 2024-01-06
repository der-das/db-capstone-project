SELECT
	m.menuName
FROM
	Menu m
WHERE
	m.menuID = ANY(
		SELECT menuItem
		FROM Orders
		WHERE quantity > 2
	);