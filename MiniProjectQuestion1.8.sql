SELECT top 1 [Order Details].OrderID, SUM(UnitPrice*Quantity) AS TotalPrice, ROUND(SUM((UnitPrice*Quantity)*Discount),2) AS Deducted 
FROM [Order Details] 
GROUP BY OrderID ORDER BY Deducted DESC;