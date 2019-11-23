SELECT A.EmployeeID, A.FirstName + ' ' + A.LastName AS 'Full Name', B.FirstName + ' '+ B.LastName AS 'Reports To' FROM Employees A
LEFT JOIN Employees B ON A.ReportsTo = B.EmployeeID


