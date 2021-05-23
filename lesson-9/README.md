# LESSON 9
## Практическое задание по теме “Транзакции, переменные, представления”

1) В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
````
START TRANSACTION;

INSERT INTO `sample`.`users` (name, birthday_at)
VALUES (SELECT name, birthday_at FROM `shop`.`users` WHERE id = 1);

COMMIT;
````

2) Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
CREATE VIEW 
  `prod` AS select p.`name`, c.`name` as `catalog_name` from `products` p inner join `catalogs` c on (c.id = p.catalog_id);
  
## Практическое задание по теме “Администрирование MySQL”
1) Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.

````
CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'shop'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON eshop2.* TO 'shop_read'@'localhost';
GRANT ALL PRIVILEGES ON eshop2.* TO 'shop'@'localhost';

FLUSH PRIVILEGES;
````

## Практическое задание по теме “Хранимые процедуры и функции, триггеры"
1)
