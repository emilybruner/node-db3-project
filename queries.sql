-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Product.ProductName , Category.CategoryName
FROM Product
JOIN Category on Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [Order].Id, Shipper.CompanyName 
FROM [Order]
JOIN Shipper on [Order].ShipVia = Shipper.Id
WHERE OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT OrderDetail.Quantity, Product.ProductName FROM OrderDetail
JOIN Product on Product.Id = OrderDetail.ProductId
WHERE OrderId = 10251


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


SELECT [Order].Id, Customer.CompanyName, Employee.LastName FROM [Order]
JOIN Customer on Customer.Id = [Order].CustomerId
JOIN Employee on Employee.Id = [Order].EmployeeId

-- STRETCH 

-- Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.

SELECT Category.CategoryName, COUNT(Category.Id) as Count
FROM Product
JOIN Category on Category.Id = Product.categoryId
GROUP BY category.Id

-- Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.

