SELECT SUM(findoc.netamnt)
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(7061, 7062, 7067, 7077,  7078, 7081, 7082, 7083,  7091, 7092, 7760) and trdr.trdcategory in (3000, 3005) and findoc.netamnt is not null and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4;