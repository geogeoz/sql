SELECT  trdr.afm as ���, trdr.name as ONOMA,  findoc.netamnt AS ���� , findoc.vatamnt as ���,  trdr.trdcategory as ���������, findoc.fprms as stoixeio, findoc.expn as �����,
case 
when findoc.fprms IN (7061, 7062, 7067, 7074, 7077, 7078, 7081, 7083, 7091, 7092, 7760)  then 'normal'
else 'credit'
end as �����,
case when trdr.kepyosts =1 then '���'  
else '���'
end as ��������
, findoc.trndate as �����
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- prosthesi 7074 gia pelati nikou
WHERE findoc.fprms in(7061, 7062, 7067, 7074, 7077, 7078, 7081, 7083, 7091, 7092, 7760) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(3000, 3005)  and findoc.fiscprd=2014 and findoc.period<4
ORDER BY trndate, name
; --��������� ��������� ���������
