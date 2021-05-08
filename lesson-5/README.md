# LESSON 5

## Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

1) Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.
```
update users set created_at = now();
update users set updated_at = now();
```
2) Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения 
в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее 
значения.

Нужно сделать две колонки с верным типом datetime с временынми названиями, и перенести в них
даные их старых колонок, с выборкой в верном формате:
```
update `users` set date1 = (SELECT DATE_FORMAT(STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'), '%Y-%m-%d %H:%m:%s'));
update `users` set date2 = (SELECT DATE_FORMAT(STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i'), '%Y-%m-%d %H:%m:%s'));
```
Послу удалить старые колонки и переименовать колонки date1 и date2 в created_at и updated_at

3) В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех 
```
SELECT * FROM storehouses_products order by if(`value` = 0,1,0), `value`;
```
5) (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
```
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2); 
```

## Практическое задание теме «Агрегация данных»

1) Подсчитайте средний возраст пользователей в таблице users.
```
SELECT name, timestampdiff(YEAR, birthday_at, NOW()) as age FROM eshop.users;
```
2) Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.
```
SELECT
 dayname(concat(YEAR(NOW()), '-', substring(birthday_at, 6, 10))) as days,
 count(dayname(concat(YEAR(NOW()), '-', substring(birthday_at, 6, 10)))) as amount
 FROM users
 group by days;
 ```
 3) (по желанию) Подсчитайте произведение чисел в столбце таблицы.
```
select round(exp(sum(log(value)))) as factorial FROM numbers;
```
