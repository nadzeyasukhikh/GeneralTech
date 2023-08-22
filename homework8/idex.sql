Удалить всех клиентов из China и Brazil

DELETE FROM Customers
WHERE Country IN ('China', 'Brazil');

Вывести название категории, где самая высокая средняя стоимость товаров

SELECT Categories.CategoryName,
AVG(Products.Price) 
FROM Categories 
JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName
ORDER BY Products.Price DESC
LIMIT 1;

Вывести названия трех товаров, которые продаются хуже всего

SELECT Products.ProductName,
SUM(OrderDetails.Quantity) 
FROM Products 
LEFT JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY OrderDetails.Quantity ASC

Вывести название одного перевозчика, у которого меньше всего заказов

SELECT Shippers.ShipperName, 
COUNT(Orders.OrderID) AS NumberOrders
FROM Shippers
LEFT JOIN Orders ON Shippers.ShipperID = Orders.ShipperID
GROUP BY Shippers.ShipperName
ORDER BY  NumberOrders ASC
LIMIT 1;

Вывести товары, добавив поле "цена со скидкой" (на англ.) в 15.5%

SELECT 
    ProductName,
    Price,
    Price * 0.845 AS DiscountPrice
FROM Products;
