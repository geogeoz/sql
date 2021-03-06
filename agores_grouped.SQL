SELECT  trdr.afm as ���, trdr.name as ONOMA,  SUM(findoc.netamnt + findoc.expn ) AS ���� ,  SUM(findoc.vatamnt) as ���, COUNT(trdr.afm) AS ������, trdr.trdcategory as ���������,
CASE WHEN trdr.kepyosts =1 then '���'  
ELSE '���'
END as ��������,
CASE
WHEN findoc.fprms IN (2065, 2066, 2069)  then 'credit'
ELSE 'normal'
END as �����
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(2060, 2061, 2062, 2151, 2717, 2718, 2065, 2066, 2069)   and afm is not null and findoc.netamnt<>0 and trdr.trdcategory in(5000) and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4
GROUP BY afm, name, trdcategory,
 case when trdr.kepyosts =1 then '���'  
else '���'
end,
CASE
when findoc.fprms IN (2065, 2066, 2069)  then 'credit'
else 'normal'
END
ORDER BY name ASC, ����� DESC;
--AGORES GROUPED 