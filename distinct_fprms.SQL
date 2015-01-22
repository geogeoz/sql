SELECT distinct findoc.fprms
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE (findoc.fprms between 7061 and 7760 and findoc.netamnt<>0 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4);