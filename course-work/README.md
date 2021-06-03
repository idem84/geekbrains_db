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

    Диаграмма находится в файле ERDiagram.mwb и ее скриншот ERDiagram.JPG

6) скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);
````
select reg.name, sum(price) as 'сумма недвижимости по району'
from realty r
         inner join category c on r.category_id = c.category_id
         inner join region reg on r.code = reg.code
group by reg.name;
````
````
select (select name from seller where realty.seller_id = seller.seller_id) as 'продавец',
       longitude,
       latitude,
       address,
       price
from realty;
````

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
````
````
CREATE OR REPLACE VIEW
    all_realty_view
as
select c.name, reg.name latitude, longitude, address, price
from realty r
         inner join Category c on r.category_id = c.category_id
         inner join Region reg on r.code = reg.code;
;
````

8) хранимые процедуры / триггеры;
````
DELIMITER $$

CREATE PROCEDURE `increment_count_realty_by_type`(IN type2 INT)
BEGIN
    set @currentCnt = 0;
    select count into @currentCnt from totalrealty where totalrealty.type = type2;
    IF @currentCnt is null then
        insert into totalrealty (count, type) values (1, type2);
    ELSE
        update totalrealty set count = @currentCnt where totalrealty.type = type2;
    END IF;
END$$

DROP TRIGGER IF EXISTS count_realty;
CREATE TRIGGER count_realty after insert ON realty
    FOR EACH ROW BEGIN
    call increment_count_realty_by_type(new.category_id);
END$$

DELIMITER ;
````

