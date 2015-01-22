SELECT  trdr.afm as ¡÷Ã, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ¡Œ…¡ , COUNT(trdr.name) AS –À«»œ”, SUM(findoc.vatamnt) as ÷–¡, trdr.city as –œÀ«, trdr.trdcategory as Í·ÙÁ„ÔÒﬂ·,  findoc.expn,
case 
when findoc.fprms IN (7071,7073,7074)  then 'normal'
else 'credit'
end as ‘’–œ”
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
-- ¡–œƒ≈…Œ≈…” GROUPED B 3MINO