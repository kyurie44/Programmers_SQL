select REST_ID
     , REST_NAME
     , FOOD_TYPE
     , FAVORITES
     , ADDRESS
     # , b.review_score, b.review_id
     , round(avg(b.REVIEW_SCORE), 2) as SCORE
from REST_INFO as a
join REST_REVIEW as b
using (rest_id)
where a.address like '서울%'
group by rest_id
order by score desc, favorites desc;

# select *
# from rest_review
# where rest_id in (00001, 00005, 0008)

# select *
# from rest_info  #서울시, 서울특별시도 존재 