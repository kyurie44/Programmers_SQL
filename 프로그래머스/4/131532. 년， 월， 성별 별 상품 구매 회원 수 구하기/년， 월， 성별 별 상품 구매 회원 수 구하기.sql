select year(a.SALES_DATE) AS YEAR
     , month(a.SALES_DATE) AS MONTH
     , b.gender AS GENDER
     , count(distinct user_id) AS USERS
from ONLINE_SALE a
join USER_INFO b
    using (user_id)
group by year(a.SALES_DATE)
       , month(a.SALES_DATE)
       , b.gender
having gender is not null