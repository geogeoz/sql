SELECT SUM(findoc.netamnt) - (SELECT SUM(findoc.netamnt) 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- ��� ��� ��������
WHERE findoc.fprms in(7072) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4) as ������, SUM(findoc.vatamnt) - (SELECT SUM(findoc.vatamnt) 
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- ��� ��� ��������
WHERE findoc.fprms in(7072) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4) as ���
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- ������� ���������� 3001
WHERE findoc.fprms in(7071,7073,7074) and findoc.netamnt is not null and trdr.trdcategory=3001 and findoc.iscancel=0 and findoc.fiscprd=2014 and findoc.period<4;
--�������� ���������� �� �������� ��� ����������