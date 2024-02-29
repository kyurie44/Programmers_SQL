# -- 2021년에 가입한 사람 
# SELECT COUNT(*) AS TOTAL_COUNT
# FROM USER_INFO 
# WHERE YEAR(JOINED) = 2021

-- 2021년에 가입한 사람 중 구매한 사람
SELECT YEAR(SALES_DATE) AS YEAR
    , MONTH(SALES_DATE) AS YEAR
    , COUNT(DISTINCT(USER_ID)) AS PUCHASED_USERS
    , ROUND(COUNT(DISTINCT(USER_ID)) / (
                                    SELECT COUNT(*) AS TOTAL_COUNT
                                    FROM USER_INFO 
                                    WHERE YEAR(JOINED) = 2021
                                  ) 
            , 1) AS PUCHASED_RATIO
FROM ONLINE_SALE 
WHERE USER_ID IN (
                    SELECT USER_ID
                    FROM USER_INFO 
                    WHERE YEAR(JOINED) = 2021
                    GROUP BY YEAR(JOINED), MONTH(JOINED)    
                    )
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE)
ORDER BY YEAR(SALES_DATE), MONTH(SALES_DATE)
;
