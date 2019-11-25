
SELECT CONCAT(MONTH(ShippedDate), ' / ', YEAR(ShippedDate) - 1900) AS 'Shipped Date',
	AVG(DAY(ShippedDate)) AS 'Average Shipping Day'
FROM [Order Details]
JOIN Orders ON Orders.OrderID = [Order Details].OrderID
GROUP BY MONTH(ShippedDate),
	YEAR(ShippedDate)
HAVING YEAR(ShippedDate) IS NOT NULL