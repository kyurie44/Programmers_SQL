-- 코드를 입력하세요
-- VIEWS가 최대인 BOARD_ID가 필요한 것 
SELECT CONCAT('/home/grep/src/', A.BOARD_ID, '/', B.FILE_ID, B.FILE_NAME, B.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD A
JOIN USED_GOODS_FILE B USING (BOARD_ID)
WHERE VIEWS = (
                    SELECT MAX(VIEWS)
                    FROM USED_GOODS_BOARD
                                
                 )
ORDER BY B.FILE_ID DESC
;