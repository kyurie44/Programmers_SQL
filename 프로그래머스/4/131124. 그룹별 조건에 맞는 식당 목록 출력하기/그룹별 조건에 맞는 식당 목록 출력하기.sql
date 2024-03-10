-- 코드를 입력하세요
SELECT A.MEMBER_NAME
    , B.REVIEW_TEXT
    , DATE_FORMAT(B.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE A
JOIN REST_REVIEW B USING (MEMBER_ID)
WHERE MEMBER_ID IN (SELECT MEMBER_ID
                    FROM (  SELECT MEMBER_ID, COUNT(*), DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS rnk
                            FROM REST_REVIEW 
                            GROUP BY MEMBER_ID
                         ) T
                    WHERE rnk = 1
                    )
ORDER BY REVIEW_DATE, B.REVIEW_TEXT
;