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
````
CREATE VIEW 
  `prod` AS select p.`name`, c.`name` as `catalog_name` from `products` p inner join `catalogs` c on (c.id = p.catalog_id);
````
  
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
1) Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

````
USE shop;

DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NOT DETERMINISTIC
BEGIN
	DECLARE hour INT;
	SET hour = HOUR(NOW());
	CASE
		WHEN hour BETWEEN 0 AND 6 THEN RETURN "Доброй ночи";
		WHEN hour BETWEEN 6 AND 12 THEN RETURN "Доброе утро";
		WHEN hour BETWEEN 12 AND 18 THEN RETURN "Добрый день";
		WHEN hour BETWEEN 18 AND 0 THEN RETURN "Добрый вечер";
	END CASE;
END//
````

2) В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

````
CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Both name and description are NULL';
	END IF;
END//
````
