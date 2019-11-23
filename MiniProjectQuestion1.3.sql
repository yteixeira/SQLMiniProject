SELECT Products.*, Suppliers.CompanyName, Suppliers.Country FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE QuantityPerUnit Like '%bottle%'