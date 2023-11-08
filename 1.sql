/* 
Создаём таблицу с мобильными телефонами
*/
DROP DATABASE IF EXISTS db;
CREATE DATABASE db;
USE db;
-- создание таблиц
CREATE TABLE mobile_phones(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
product_name VARCHAR(30) NOT NULL, 
manufacturer VARCHAR(20) NOT NULL,
product_count INT,
price decimal
);

-- наполнение нужными данными
INSERT INTO mobile_phones (product_name, manufacturer, product_count, price)
VALUES
('IPhone X', 'Apple', 3, 76000),
('IPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);


-- выборки данных

-- Вывести название, производителя и цену для товаров, количество которых превышает 2
select product_name, manufacturer, price from mobile_phones where product_count >2;

-- Вывести весь ассортимент товаров марки “Samsung”
select product_name, manufacturer, price from mobile_phones where manufacturer = 'Samsung';



