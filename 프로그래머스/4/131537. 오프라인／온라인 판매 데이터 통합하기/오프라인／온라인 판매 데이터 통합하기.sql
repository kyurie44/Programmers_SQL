-- 코드를 입력하세요
SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') AS sales_date
    , product_id
    , user_id
    , sales_amount
FROM ONLINE_SALE 
WHERE sales_date LIKE '2022-03-%'

UNION ALL

SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') AS sales_date
    , product_id
    , NULL AS user_id
    , sales_amount
FROM OFFLINE_SALE 
WHERE YEAR(sales_date) = '2022'
AND MONTH(sales_date) = '03'

ORDER BY sales_date, product_id, user_id;