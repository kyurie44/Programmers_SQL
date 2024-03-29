-- 코드를 입력하세요
# WITH A AS (
#         SELECT (@rownum := @rownum + 1) -1 AS HOUR
#         FROM ANIMAL_OUTS
#             , (select @rownum := 0) AS HOUR
#         WHERE @rownum < 24
#         ),
#     B AS (
#         SELECT CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED) AS HOUR
#             , IFNULL(COUNT(*), 0) AS COUNT
#         FROM ANIMAL_OUTS 
#         GROUP BY HOUR
#         ORDER BY HOUR    
#     )
    
# SELECT A.HOUR
#     , IFNULL(B.COUNT, 0) AS COUNT
# FROM A
# LEFT JOIN B
# ON A.HOUR = B.HOUR
# ;

SELECT HOUR
    , COUNT(ANIMAL_ID) AS COUNT
FROM ( 
       SELECT (ROW_NUMBER() OVER () - 1) AS HOUR
       FROM ANIMAL_OUTS
       LIMIT 24
     ) A
LEFT JOIN ANIMAL_OUTS B 
ON A.HOUR = HOUR(B.DATETIME)

GROUP BY A.HOUR
ORDER BY A.HOUR