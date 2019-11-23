SELECT TOP 10 CompanyName, SUM([Shipped Value]) AS 'Value Shipped In 1998' FROM 
(SELECT Orders.OrderID, ShippedDate, ROUND(SUM(UnitPrice * Quantity * (1 - Discount)),0) AS 'Shipped Value'
FROM Orders
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY Orders.OrderID, ShippedDate
HAVING YEAR(ShippedDate) = 1998) AS A

JOIN

(SELECT OrderID, CompanyName FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID) AS B
ON A.OrderID = B.OrderID
GROUP BY CompanyName
ORDER BY SUM([Shipped Value]) DESC;