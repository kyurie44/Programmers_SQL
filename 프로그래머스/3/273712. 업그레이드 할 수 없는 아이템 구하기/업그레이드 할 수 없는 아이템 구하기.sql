-- 업그레이드 불가능한 아이템 = 끝 아이템 = ?
SELECT ITEM_ID
    , ITEM_NAME
    , RARITY
FROM ITEM_TREE A
JOIN ITEM_INFO B USING (ITEM_ID)
WHERE ITEM_ID NOT IN (
                        SELECT DISTINCT(PARENT_ITEM_ID)
                        FROM ITEM_TREE 
                        WHERE PARENT_ITEM_ID IS NOT NULL
                     )
ORDER BY ITEM_ID DESC
;
                        # SELECT ITEM_ID
                        # FROM ITEM_TREE 
                        # WHERE ITEM_ID NOT IN (0, 1, NULL)