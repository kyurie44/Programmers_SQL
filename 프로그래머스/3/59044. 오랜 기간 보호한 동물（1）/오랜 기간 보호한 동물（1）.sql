-- 코드를 입력하세요
-- 가장 오래 보호소에 있었다 = DATETIME 가장 적은 순 
SELECT A.NAME
    ,A.DATETIME
FROM ANIMAL_INS A
LEFT JOIN ANIMAL_OUTS B USING (ANIMAL_ID)
WHERE B.ANIMAL_ID IS NULL 
ORDER BY A.DATETIME 
LIMIT 3
;