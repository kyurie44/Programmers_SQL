select b.AUTHOR_ID
     , c.AUTHOR_NAME
     , b.CATEGORY
     , sum(a.sales * b.price) as TOTAL_SALES
from BOOK_SALES a
join BOOK b
    using (book_id)
join AUTHOR c
    using (author_id)
where a.SALES_DATE like '2022-01%'
group by b.author_id, b.category
order by b.author_id, b.category desc