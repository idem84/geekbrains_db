# БАЗЫ ДАННЫХ. ПРОЕКТНОЕ ЗАДАНИЕ 

## Практическое задание по теме “Оптимизация запросов”

1) Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
````
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(45) NOT NULL,
	str_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;

DROP TRIGGER IF EXISTS log_users;
delimiter //
CREATE TRIGGER log_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
delimiter ;

DROP TRIGGER IF EXISTS log_catalogs;
delimiter //
CREATE TRIGGER log_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
delimiter ;

delimiter //
CREATE TRIGGER log_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //
delimiter ;

````

## Практическое задание по теме “NoSQL”
1) В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
````
SADD ip '127.0.0.1' '127.0.0.2' '127.0.0.3'
SMEMBERS ip
SCARD ip
````

2) При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
````
set idem84@me.com dmitriy 
set dmitriy idem84@me.com

get idem84@me.com
get dmitriy
````

3) Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
````
use products
db.products.insert({"name": "Intel Core i3-8100", "description": "Процессор для настольных ПК", "price": "8000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}) 

db.products.insertMany([
	{"name": "AMD FX-8320", "description": "Процессор для настольных ПК", "price": "4000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "AMD FX-8320E", "description": "Процессор для настольных ПК", "price": "4500.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}])

db.products.find().pretty()
db.products.find({name: "AMD FX-8320"}).pretty()


// *** Табл. catalogs ***
use catalogs
db.catalogs.insertMany([{"name": "Процессоры"}, {"name": "Мат.платы"}, {"name": "Видеокарты"}])
````
