select a.APNT_NO
     , b.PT_NAME
     , a.PT_NO
     , a.MCDP_CD
     , c. DR_NAME
     , a.APNT_YMD
from APPOINTMENT a
join PATIENT     b
    using (PT_NO)
join DOCTOR      c
    on a.MDDR_ID = c.DR_ID
where a.APNT_YMD like '2022-04-13%'
and a.APNT_CNCL_YN = 'N'
and a.MCDP_CD = 'CS'
order by a.APNT_YMD