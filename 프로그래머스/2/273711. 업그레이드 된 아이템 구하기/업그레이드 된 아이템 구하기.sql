-- 코드를 작성해주세요
SELECT B.ITEM_ID, A.ITEM_NAME, A.RARITY
FROM ITEM_TREE B
JOIN ITEM_INFO A USING (ITEM_ID)
WHERE PARENT_ITEM_ID IN (SELECT ITEM_ID
                         FROM ITEM_INFO 
                         WHERE RARITY = 'RARE'
                        )
ORDER BY 1 DESC
;