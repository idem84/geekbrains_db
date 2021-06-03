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
