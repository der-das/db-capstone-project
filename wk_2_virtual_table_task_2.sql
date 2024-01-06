SELECT 
	o.customerID,
	CONCAT(c.customerFirstName, ' ', c.customerLastName) as FullName,
	o.orderID,
	o.totalCost,
	m.menuName,
	mi.courseName
FROM
		(SELECT
			customerID, orderID, totalCost, menuItem
		 FROM
			Orders
		 WHERE
			totalCost > 150) AS o
	INNER JOIN
		Customers c ON
			c.customerID = o.customerID
	INNER JOIN
		Menu m ON
			o.menuItem = m.menuID
	INNER JOIN
		MenuItems mi ON
			m.menuItem = mi.MenuItemID
WHERE
	o.totalCost > 150
ORDER BY
	o.totalCost ASC;
	