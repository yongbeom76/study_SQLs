SELECT COUNT(EmployeeID)
FROM Orders
WHERE EmployeeID IN(SELECT EmployeeID
                 FROM Employees
            	 WHERE EmployeeID IN (7, 9));