SELECT  trdr.afm as ¡÷Ã, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ¡Œ…¡ , COUNT(trdr.afm) AS –À«»œ”, SUM(findoc.vatamnt) as ÷–¡, trdr.city as –œÀ«, trdr.trdcategory as Í·ÙÁ„ÔÒﬂ· 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE (findoc.fprms=7062 and (trdr.trdcategory=3005 or trdr.trdcategory=3000) and findoc.netamnt<>0 and iscancel=0  and findoc.fiscprd=2014 and findoc.period<4)
GROUP BY afm, name, city, trdcategory;
