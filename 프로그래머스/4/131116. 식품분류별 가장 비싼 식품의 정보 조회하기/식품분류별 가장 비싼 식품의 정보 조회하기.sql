select a.CATEGORY,	a.PRICE,	a.PRODUCT_NAME
from FOOD_PRODUCT a
join (
          select CATEGORY
               , max(price) as MAX_PRICE
          from FOOD_PRODUCT
          group by CATEGORY
         ) b
on a.CATEGORY = b.CATEGORY
and a.price = b.MAX_PRICE
where a.CATEGORY in ('과자', '국', '김치', '식용유')
order by a.PRICE desc