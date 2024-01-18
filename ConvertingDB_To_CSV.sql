-- Define column names
(SELECT 'CategoryID', 'CategoryName', 'Description')
UNION
-- Retrieve actual data
(SELECT CategoryID, CategoryName, Description
 FROM categories)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/categories.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'CustomerID', 'CustomerName', 'ContactName', 'Address' , 'City', 'PostalCode', 'Country')
UNION
-- Retrieve actual data
(SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country
 FROM customers)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'EmployeeID', 'FirstName', 'LastName', 'BirthDate' , 'Photo', 'Notes')
UNION
-- Retrieve actual data
(SELECT EmployeeID, FirstName, LastName, BirthDate, Photo, Notes
 FROM employees)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/employees.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'OrderDetailID', 'OrderID', 'ProductID', 'Quantity')
UNION
-- Retrieve actual data
(SELECT OrderDetailID, OrderID, ProductID, Quantity
 FROM order_details)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_details.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'OrderID', 'CustomerID', 'EmployeeID', 'OrderDate' , 'ShipperID')
UNION
-- Retrieve actual data
(SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShipperID
 FROM orders)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'ProductID', 'ProductName', 'SupplierID', 'CategoryID' , 'Unit', 'Price')
UNION
-- Retrieve actual data
(SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price
 FROM products)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'ShipperID', 'ShipperName', 'Phone')
UNION
-- Retrieve actual data
(SELECT ShipperID, ShipperName, Phone
 FROM shippers)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/shippers.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- Define column names
(SELECT 'SupplierID', 'SupplierName', 'ContactName', 'Address' , 'City', 'PostalCode', 'Country', 'Phone')
UNION
-- Retrieve actual data
(SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone
 FROM suppliers)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/suppliers.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';
