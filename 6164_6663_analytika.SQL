SELECT  findoc.fprms as stoixeio, trdr.name as ONOMA,  findoc.netamnt AS аниа , findoc.vatamnt as жпа,  findoc.comments,  findoc.expn as енода, findoc.netamnt+findoc.expn as TOTAL,
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
WHERE findoc.fprms in(6164, 6663) and  findoc.netamnt<>0 and iscancel=0  and findoc.fiscprd=2014 and findoc.period<4
ORDER BY trndate, name
; --6164, 6663 амакутийа