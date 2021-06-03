# Итоговый проект

1) Составить общее текстовое описание БД и решаемых ею задач;

    Аналитический портал яндекс недвижимость (карта недвижимости) бд решает следующие задачи:

      - объявления о недвижимости
      - район недвижимости
      - продавец недвижимости
      - фотографии недвижимости
      - характеристик недвижимости
      - инфраструктура и т.д.

2) минимальное количество таблиц - 10;
3) скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами);
5) скрипты наполнения БД данными;

    Дамп базы данных с данными находится в файле dump.sql

4) создать ERDiagram для БД;

    Диаграмма находится в файле ERDiagram.mwb и ее скриншоте ERDiagram.JPG

6) скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);

    Запросы находятся в файле selects.sql

7) представления (минимум 2);

````
# квартиры в бирюлево
CREATE OR REPLACE VIEW
    flats_in_birulevo
as
select c.name, reg.name latitude, longitude, address, price
from realty r
         inner join category c on r.category_id = c.category_id
         inner join region reg on r.code = reg.code
where reg.code = 3
  and c.category_id = 1;
;

CREATE OR REPLACE VIEW
    all_realty_view
as
select c.name, reg.name latitude, longitude, address, price
from realty r
         inner join Category c on r.category_id = c.category_id
         inner join Region reg on r.code = reg.code;
;

select *
from flats_in_birulevo;

select *
from all_realty_view;
````

8) хранимые процедуры / триггеры;

    Находятся в файле triggers-procedures.sql

