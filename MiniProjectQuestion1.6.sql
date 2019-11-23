SELECT ROUND(SUM([ORDER DETAILS].UnitPrice * [ORDER DETAILS].Quantity),2) AS Total, 
Region.RegionDescription FROM Orders
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
INNER JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
INNER JOIN Region ON Territories.RegionID = Region.RegionID
GROUP BY Region.RegionDescription HAVING SUM([ORDER DETAILS].UnitPrice * [ORDER DETAILS].Quantity) > 1000000