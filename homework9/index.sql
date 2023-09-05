Описать таблицу shippers с исп. механизма Constraints

CREATE TABLE IF NOT EXISTS Shippers (
    shipper_id INT AUTO_INCREMENT PRIMARY KEY,
   shipper_name VARCHAR(64) NOT NULL,
  phone VARCHAR(20) UNIQUE
);

Вывести заказы, сделанные с 1 мая 2022 по 20 мая 2022 

SELECT * 
FROM orders 
WHERE
	created_at BETWEEN '2022-05-01' AND '2022-05-22'

    Описать схему БД "онлайн-тестирование" с помощью инструмента онлайн-проектирования БД.
     Необходимо предусмотреть регистрацию пользователя и выбор им тем для прохождения тестирования.

     https://dbdiagram.io/d/64f747fb02bd1c4a5e02a8b2