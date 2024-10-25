select b.AUTHOR_ID
     , c.AUTHOR_NAME
     , b.CATEGORY
     , sum(a.sales * b.price) as TOTAL_SALES  #같은 작가의 다른 book_id책이 category 같을 경우 생각해야함 
     # 따라서, 각각 곱해서 나온 값을 모두 더해야하는 것 
from BOOK_SALES a
join BOOK b
    using (book_id)
join AUTHOR c
    using (author_id)
where a.SALES_DATE like '2022-01%'
# WHERE DATE_FORMAT(a.SALES_DATE, '%Y-%m') = '2022-01'
group by b.author_id, b.category
order by b.author_id, b.category desc