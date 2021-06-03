select reg.name, sum(price) as 'сумма недвижимости по району'
from realty r
         inner join category c on r.category_id = c.category_id
         inner join region reg on r.code = reg.code
group by reg.name;

select (select name from seller where realty.seller_id = seller.seller_id) as 'продавец',
       longitude,
       latitude,
       address,
       price
from realty;