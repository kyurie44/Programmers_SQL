-- 코드를 작성해주세요
SELECT ITEM_ID
    , ITEM_NAME
FROM ITEM_TREE A
    JOIN ITEM_INFO B USING (ITEM_ID)
WHERE PARENT_ITEM_ID IS NULL
ORDER BY ITEM_ID
;