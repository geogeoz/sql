SELECT  trdr.afm as ажл, trdr.name as ONOMA,  findoc.netamnt AS аниа , findoc.vatamnt as жпа,  trdr.trdcategory as ЙАТГЦОЯъА, findoc.fprms as stoixeio, findoc.expn as енода,
case 
when findoc.fprms IN (7061, 7062, 7067, 7077, 7078, 7081, 7083, 7091, 7092, 7760)  then 'normal'
else 'credit'
end as тупос,
case when trdr.kepyosts =1 then 'маи'  
else 'ови'
end as уповяеос
, findoc.trndate as глмиа
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7063, 7064, 7066, 7068, 7069) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(3000, 3005)  and findoc.fiscprd=2014 and findoc.period<4
;
