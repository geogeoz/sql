SELECT  trdr.afm as ���, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ���� , COUNT(trdr.afm) AS ������, SUM(findoc.vatamnt) as ���, trdr.city as ����, trdr.trdcategory as ���������, findoc.fprms as stoixeio, findoc.expn,
case 
when findoc.fprms IN (7071,7073,7074)  then 'normal'
else 'credit'
end as �����
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7071,7073,7074,7072)  and findoc.netamnt<>0 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4
GROUP BY afm, name, city, trdcategory, fprms, expn;