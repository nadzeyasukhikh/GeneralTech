-- Вывести информацию о заказах клиентов не из Germany и не из China
SELECT Orders *
	    
FROM Orders

JOIN Customers ON Orders.CustomerID=Customers.CustomerID 

WHERE
	Customers.Country NOT IN ('Germany','China')

    -- Вывести два самых дорогих товара из категории Beverages

SELECT Products.ProductName 
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
WHERE
Categories.CategoryName = 'Beverages'
ORDER BY Price DESC
LIMIT 2

-- Удалить поставщиков из China. 

DELETE FROM Suppliers
WHERE
Country = 'China'

-- Вывести все заказы клиента 10, которые повезет Federal Shipping

SELECT *
FROM Orders
 JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID
WHERE Orders.CustomerID = 10 AND Shippers.ShipperName = 'Federal Shipping'

-- Вывести два самых дорогих напитка из UK
SELECT *  
FROM Products 
 JOIN Categories
ON Products.CategoryID = Categories.CategoryID
 JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryID = 1 AND Suppliers.Country = 'UK'
ORDER BY Products.Price DESC
LIMIT 2

-- Вывести страны-поставщики напитков

SELECT
  Suppliers.Country
FROM Products 
 JOIN Categories
ON Products.CategoryID = Categories.CategoryID
 JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName = 'Beverages'



