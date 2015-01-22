SELECT  trdr.afm as ¡÷Ã, trdr.name as ONOMA,  SUM(findoc.netamnt) AS ¡Œ…¡ ,  SUM(findoc.vatamnt) as ÷–¡, COUNT(trdr.afm) AS –À«»œ”, trdr.trdcategory as Í·ÙÁ„ÔÒﬂ·, findoc.expn as ≈Œœƒ¡,
CASE
WHEN findoc.fprms IN (7061, 7062, 7067,7074,  7077, 7078, 7081, 7082, 7083, 7091, 7092, 7760)  then 'normal'
ELSE 'credit'
END as ‘’–œ”
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7061, 7062, 7067, 7074, 7077, 7078, 7081, 7082, 7083, 7091, 7092, 7760, 7063, 7064, 7066, 7068, 7069)   and afm is not null and findoc.netamnt<>0 and trdr.trdcategory in(3000, 3005) and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period IN(4, 5, 6)
GROUP BY afm, name, trdcategory, expn,
CASE
when findoc.fprms IN (7061, 7062, 7067, 7074, 7077, 7078, 7081, 7082, 7083, 7091, 7092, 7760)  then 'normal'
else 'credit'
END
ORDER BY name ASC, ‘’–œ” DESC;
--TIMOLOGIA GROUPED B 3MINO
