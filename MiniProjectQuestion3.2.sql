SELECT s.CompanyName,  
	ROUND(SUM((od.UnitPrice * od.Quantity) * (1 - od.Discount)),2) AS 'Total Sales' 
FROM [Order Details] od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY S.CompanyName
HAVING ROUND(SUM((od.UnitPrice * od.Quantity) * (1 - od.Discount)),2) > 10000
ORDER BY [Total Sales] ASC