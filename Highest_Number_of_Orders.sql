SELECT FirstName AS Employee_FirstName, LastName AS Employee_LastName, COUNT(OrderID) AS TotalOrders
FROM employees
INNER JOIN
	Orders ON employees.EmployeeID = Orders.EmployeeID
GROUP BY Employee_FirstName, Employee_LastName
ORDER BY TotalOrders DESC
LIMIT 10;
