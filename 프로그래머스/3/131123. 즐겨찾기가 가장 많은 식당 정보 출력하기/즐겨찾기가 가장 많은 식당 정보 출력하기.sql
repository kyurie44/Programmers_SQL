# -- 코드를 입력하세요
# SELECT FOOD_TYPE
#     , REST_ID
#     , REST_NAME
#     , FAVORITES
# FROM REST_INFO AS A
# WHERE (FOOD_TYPE, FAVORITES) IN (
#                                 SELECT FOOD_TYPE
#                                     , MAX(FAVORITES) AS FAVORITES
#                                 FROM REST_INFO AS B
#                                 GROUP BY FOOD_TYPE
#                                 ) 
# ORDER BY FOOD_TYPE DESC
# ;
SELECT B.FOOD_TYPE
    , A.REST_ID
    , A.REST_NAME
    , B.FAVORITES 
FROM REST_INFO AS A
JOIN (
        SELECT FOOD_TYPE
            , MAX(FAVORITES) AS FAVORITES
        FROM REST_INFO
        GROUP BY FOOD_TYPE
     ) AS B
ON A.FOOD_TYPE = B.FOOD_TYPE
AND A.FAVORITES = B.FAVORITES
ORDER BY A.FOOD_TYPE DESC
;