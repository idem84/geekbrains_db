# LESSON 6

## Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. Агрегация данных”

1) Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).

Да вроде все нормально

2) Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

Тут задачу можно слегка поразному итерпритировать, ход моих мыслей такой: в моем понимании пользователь это recipient_id, 
тот человек с которым захотел дружить initiator_user_id, в своем решении я выбираю того кто больше всего из initiator_user_id из тех кто с нами захотел дружить,
написал нам больше сообщений.


Тут я сразу несколько решений сделал этой задачи, самое легкое, тут нам даже не нужна таблица users:

```
SELECT
	m.to_user_id as recipient_id, -- для пользователя
    m.from_user_id as sender_id, -- от пользователя
	count(*) as count -- кол-во сообщений
FROM 
	messages m -- сообщения
WHERE
	m.from_user_id in ( -- где отправитель, является другом получателя
		SELECT
			initiator_user_id -- id того кто захоте стать другом
		FROM
			friend_requests fr 
		WHERE 
			fr.status = 'approved' -- статус того что дружба была подтверждена
    )
AND
	m.to_user_id = 10;
```

Для пользователя 10, больше всего сообщений от пользователя 1

Можно сделать проверку на то есть ли пользователь в таблице users:

```
SELECT
	m.to_user_id as recipient_id, -- для пользователя
    m.from_user_id as sender_id, -- от пользователя
	count(*) as count -- кол-во сообщений
FROM 
	messages m -- сообщения
INNER JOIN
	users u on (u.id = m.to_user_id)
WHERE
	m.from_user_id in ( -- где отправитель, является другом получателя
		SELECT
			initiator_user_id -- id того кто захоте стать другом
		FROM
			friend_requests fr 
		WHERE 
			fr.status = 'approved' -- статус того что дружба была подтверждена
    )
AND
	m.to_user_id = 10;
```

3) Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

Тут тоже можно по разному трактовать задачу, общие количество лайков для каждого из них или в сумме?

Если для каждого то:

```
SELECT
	u.id,
	p.birthday,
	(SELECT count(*) from likes l where l.user_id = u.id) as total_likes
FROM 
	users u
INNER JOIN 
	`profiles` p on (p.user_id = u.id)
ORDER BY 
	p.birthday desc
LIMIT 10;
```

Если в сумме то:

```
SELECT
	count(*) as total_likes
FROM
	likes l
INNER JOIN (
	SELECT
		u.id
	FROM 
		users u
	INNER JOIN 
		`profiles` p on (p.user_id = u.id)
	ORDER BY 
		p.birthday desc
	LIMIT 10
	) as ij ON (ij.id = l.user_id)
LIMIT 1;
```

4) Определить кто больше поставил лайков (всего) - мужчины или женщины?

