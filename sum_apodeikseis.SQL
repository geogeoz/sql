SELECT SUM(findoc.netamnt)
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7071,7073,7074) and findoc.netamnt is not null and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4;