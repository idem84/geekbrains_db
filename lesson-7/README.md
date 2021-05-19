# LESSON 7
## Тема “Сложные запросы”

1) Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

````
SELECT * FROM users where id in (SELECT user_id from orders);
````

2) Выведите список товаров products и разделов catalogs, который соответствует товару.
