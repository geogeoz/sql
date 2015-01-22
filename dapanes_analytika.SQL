SELECT  trdr.afm as ажл, trdr.name as ONOMA,  findoc.netamnt AS аниа , findoc.vatamnt as жпа,  trdr.trdcategory as ЙАТГЦОЯъА, findoc.fprms as stoixeio, findoc.expn as енода, findoc.netamnt+findoc.expn as TOTAL,
case 
when findoc.fprms IN (1010)  then 'credit'
else 'normal'
end as тупос,
case when trdr.kepyosts =1 then 'маи'  
else 'ови'
end as уповяеос
, findoc.trndate as глмиа
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- 8009
WHERE findoc.fprms in(8009, 1001, 3201, 1010) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(5000, 5300, 5301, 5302, 5303)  and findoc.fiscprd=2014 and findoc.period<4
ORDER BY trndate, name
; --дапамес амакутийа