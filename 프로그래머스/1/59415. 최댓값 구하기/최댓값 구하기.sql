-- 코드를 입력하세요
# SELECT datetime AS '시간'
# FROM ANIMAL_INS
# WHERE datetime = (
#                     SELECT MAX(datetime)
#                     FROM ANIMAL_INS
#                  );
SELECT MAX(datetime) AS '시간'   #이게 더 짧은 코드 (결과가 시간만 보여주면 되니까. 다른 값도 보여주려면 위처럼 작성 필요함.)
FROM ANIMAL_INS;