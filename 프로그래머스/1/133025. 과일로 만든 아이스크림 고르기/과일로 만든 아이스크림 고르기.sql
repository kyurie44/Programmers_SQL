-- 코드를 입력하세요
SELECT F.flavor
FROM FIRST_HALF AS F
JOIN ICECREAM_INFO AS I
WHERE F.flavor = I.flavor
AND F.TOTAL_ORDER > 3000
AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;