select date_format(sales_date, '%Y-%m-%d') as sales_date
     , product_id
     , user_id
     , sales_amount
from ONLINE_SALE 
where SALES_DATE like '2022-03%'
union all
select date_format(sales_date, '%Y-%m-%d') as offline_date
     , product_id
     , null as user_id
     , sales_amount
from OFFLINE_SALE  
where SALES_DATE like '2022-03%'

order by sales_date, product_id, user_id 
