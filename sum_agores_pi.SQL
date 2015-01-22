SELECT SUM(findoc.netamnt+findoc.expn)
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
WHERE findoc.fprms in(2065, 2066, 2069) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(5000)  and findoc.fiscprd=2014 and findoc.period<4;
-- SUM OF KATHARI AKSIA + EKSODA пистытийым