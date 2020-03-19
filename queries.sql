-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
FROM Product as p
JOIN Category as c ON p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id as OrderID, s.CompanyName
FROM [Order] as o
JOIN Shipper as s ON s.Id = o.ShipVia
WHERE o.OrderDate < "2012-08-09";


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, od.Quantity
FROM OrderDetail as od
JOIN Product as p ON p.ID = od.ProductId
WHERE od.OrderId = 10251
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id as OrderID, c.CompanyName, e.LastName as EmployeeLastName
FROM [Order] as o
JOIN Customer as c ON c.Id = o.CustomerId
JOIN Employee as e ON e.id = o.EmployeeId;
