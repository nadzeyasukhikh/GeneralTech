--Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.

SELECT Phone
FROM Suppliers
WHERE
NOT Country IN ("Germany", "France")

--Добавить два произвольных товара.

INSERT INTO Products(ProductName)
VALUES
("NEW 1"),
("NEW 2");

--Удалить поставщиков из USA и Germany.

DELETE FROM Suppliers
WHERE
Country IN ("USA", "Germany")

--Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.

SELECT * 
FROM Products
WHERE
CategoryID IN (3, 6)
AND
Price <= 20
ORDER BY Price DESC

--Вывести номера трех последних заказов.

SELECT *
FROM Orders
ORDER BY OrderDate DESC 
LIMIT 3 
