SELECT  trdr.afm as ���, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ���� , COUNT(trdr.afm) AS ������, SUM(findoc.vatamnt) as ���,  trdr.trdcategory as ���������, SUM(findoc.expn) as �����,
CASE 
WHEN findoc.fprms IN (7061, 7062, 7067, 7074, 7077, 7078, 7081, 7083, 7091, 7092, 7760)  then 'normal'
ELSE 'credit'
END as �����,
CASE when trdr.kepyosts =1 then '���'  
ELSE '���'
END as ��������
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- ������ ���� <>0, ��� ���������, ������� 3000,3005, 1-3/2014
WHERE findoc.fprms in(7061, 7062, 7067, 7074, 7077, 7078, 7081, 7083, 7091, 7092, 7760) and findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(3000, 3005) and findoc.fiscprd=2014 and findoc.period<4
GROUP BY afm, name, kepyosts, trdcategory,
CASE
WHEN findoc.fprms IN (7061, 7062, 7067, 7074, 7077, 7078, 7081, 7083, 7091, 7092, 7760)  then 'normal'
ELSE 'credit'
END 
ORDER BY name
;-- XREOSTIKA GROUPED
