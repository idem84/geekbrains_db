# LESSON 7
## Тема “Сложные запросы”

1) Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
````
SELECT * FROM users where id in (SELECT user_id from orders);
````

2) Выведите список товаров products и разделов catalogs, который соответствует товару.
````
select 
  id, 
  name, 
  description, 
  (SELECT `name` from catalogs where id = products.catalog_id LIMIT 1) as category_name, 
  price, 
  created_at, 
  updated_at 
FROM products;
````
3) (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.
````
SELECT 
	`from` as from_eng,
	(SELECT c.`name` from cities c where c.`label` = f.`from` LIMIT 1) as `from_rus`,
    `to` as `to_eng`,
	(SELECT c.`name` from cities c where c.`label` = f.`to` LIMIT 1) as `to_rus` 
FROM flights f;
````
