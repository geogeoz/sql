SELECT  trdr.afm as ���, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ���� , COUNT(trdr.name) AS ������, SUM(findoc.vatamnt) as ���, trdr.city as ����, trdr.trdcategory as ���������,  findoc.expn,
case 
when findoc.fprms IN (7071,7073,7074)  then 'normal'
else 'credit'
end as �����
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7071,7073,7074,7072)  and findoc.netamnt<>0 and trdr.trdcategory=3001  and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period IN(4, 5, 6)
GROUP BY afm, name, city, trdcategory, expn,
case 
when findoc.fprms IN (7071,7073,7074)  then 'normal'
else 'credit'
end
;
-- ���������� GROUPED B 3MINO