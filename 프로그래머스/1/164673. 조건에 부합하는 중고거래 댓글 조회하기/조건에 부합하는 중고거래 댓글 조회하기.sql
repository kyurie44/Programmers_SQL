-- 코드를 입력하세요
-- 두 테이블 통합시? 열 추가로 합칠 것 -> UNION 아닌 JOIN 
-- 조건? 키? 
SELECT B.TITLE
    , B.BOARD_ID
    , R.REPLY_ID
    , R.WRITER_ID
    , R.CONTENTS
    , DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS B
JOIN USED_GOODS_REPLY AS R
ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE LIKE '2022-10%'
ORDER BY R.CREATED_DATE, B.TITLE;