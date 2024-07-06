-- 코드를 작성해주세요
select count(*) as FISH_COUNT
     , b.fish_name
from fish_info a
join fish_name_info b
using (fish_type)
group by a.FISH_TYPE, b.fish_name
order by FISH_COUNT desc