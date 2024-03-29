SELECT A.FOOD_TYPE
    , A.REST_ID
    , A.REST_NAME
    , A.FAVORITES 
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
# SELECT B.FOOD_TYPE
#     , A.REST_ID
#     , A.REST_NAME
#     , B.FAVORITES 
# FROM REST_INFO AS A
# JOIN (
#         SELECT FOOD_TYPE
#             , MAX(FAVORITES) AS FAVORITES
#         FROM REST_INFO
#         GROUP BY FOOD_TYPE
#      ) AS B
# USING (FOOD_TYPE, FAVORITES)
# ORDER BY A.FOOD_TYPE DESC
# ;