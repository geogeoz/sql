SELECT  trdr.afm as ���, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ���� , COUNT(trdr.afm) AS ������, SUM(findoc.vatamnt) as ���, trdr.city as ����, trdr.trdcategory as ��������� 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE (findoc.fprms=7062 and (trdr.trdcategory=3005 or trdr.trdcategory=3000) and findoc.netamnt<>0 and iscancel=0  and findoc.fiscprd=2014 and findoc.period<4)
GROUP BY afm, name, city, trdcategory;
