SELECT FirstName as Employee_FirstName, LastName as Employee_LastName, sum(Quantity * Price) As Sold_Most_Beverages
FROM employees
INNER JOIN
	Orders ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN 
	order_details ON order_details.OrderID = orders.OrderID
INNER JOIN
	products ON order_details.ProductID = products.ProductID
INNER JOIN
	categories ON products.CategoryID = categories.CategoryID 
Where CategoryName = 'Beverages'
GROUP BY Employee_FirstName,Employee_LastName
ORDER BY Sold_Most_Beverages DESC;
