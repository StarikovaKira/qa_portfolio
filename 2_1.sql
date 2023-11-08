--1.создаём таблицу “sales”. Заполняем ее данными.
--id order_date count_product
--1 2022-01-01 156
--2 2022-01-02 180
--3 2022-01-03 21
--4 2022-01-04 124
--5 2022-01-05 341

DROP DATABASE IF EXISTS sales;
CREATE DATABASE sales;
USE sales;

--создаем таблицу
CREATE TABLE sales(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
order_date  DATE NOT NULL,
count_product INT NOT NULL
);

--Заполнение таблицы
INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

/*Для данных таблицы “sales” указываем тип заказа в зависимости от кол-ва :
   меньше 100 - Маленький заказ
   от 100 до 300 - Средний заказ
   больше 300 - Большой заказ
   */

ALTER TABLE sales
ADD COLUMN type_order VARCHAR(20);
UPDATE sales SET type_order = 'Маленький заказ' WHERE count_product < 100;
UPDATE sales SET type_order = 'Средний заказ' WHERE count_product BETWEEN 100 AND 300;
UPDATE sales SET type_order = 'Большой заказ' WHERE count_product > 300;
SELECT * FROM sales;--вывод всей таблицы с добавленными данными
