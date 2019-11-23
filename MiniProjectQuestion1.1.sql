SELECT CustomerID, CompanyName, [Address], City, Region, PostalCode, Country  FROM Customers
WHERE City = 'London' OR City = 'Paris'