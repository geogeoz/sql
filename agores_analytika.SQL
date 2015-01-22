SELECT  trdr.afm as ажл, trdr.name as ONOMA,  findoc.netamnt AS аниа , findoc.vatamnt as жпа,  trdr.trdcategory as ЙАТГЦОЯъА, findoc.fprms as stoixeio, findoc.expn as енода, findoc.netamnt+findoc.expn as TOTAL,
case 
when findoc.fprms IN (2065, 2066, 2069)  then 'credit'
else 'normal'
end as тупос,
case when trdr.kepyosts =1 then 'маи'  
else 'ови'
end as уповяеос
, findoc.trndate as глмиа
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- prosthesi 7074 gia pelati nikou
WHERE findoc.fprms in(2060, 2061, 2062, 2151, 2717, 2718, 2065, 2066, 2069) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(5000)  and findoc.fiscprd=2014 and findoc.period<4
ORDER BY trndate, name
; --Aцояес амакутийа
