SELECT COUNT(ProductID) AS 'Number_of_Products', Categories.CategoryName FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName ORDER BY Number_of_Products DESC