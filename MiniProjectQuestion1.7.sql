SELECT COUNT(OrderID) FROM Orders
WHERE Freight > 100.00 AND (ShipCountry = 'USA' OR ShipCountry = 'UK')