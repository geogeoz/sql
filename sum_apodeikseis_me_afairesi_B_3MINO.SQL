SELECT SUM(findoc.netamnt) - (SELECT SUM(findoc.netamnt) 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- циа тгм ажаияесг
WHERE findoc.fprms in(7072) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period IN(4, 5, 6)) as йахаяг, SUM(findoc.vatamnt) - (SELECT SUM(findoc.vatamnt) 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- циа тгм ажаияесг
WHERE findoc.fprms in(7072) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period IN (4, 5, 6)) as жпа
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- пекатес йатгцояиас 3001
WHERE findoc.fprms in(7071,7073,7074) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period IN (4, 5, 6);
--ахяоисла аподеинеым ле ажаияесг тым епистяожым B 3MHNO