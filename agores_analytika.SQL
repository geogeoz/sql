SELECT  trdr.afm as ���, trdr.name as ONOMA,  findoc.netamnt AS ���� , findoc.vatamnt as ���,  trdr.trdcategory as ���������, findoc.fprms as stoixeio, findoc.expn as �����, findoc.netamnt+findoc.expn as TOTAL,
case 
when findoc.fprms IN (2065, 2066, 2069)  then 'credit'
else 'normal'
end as �����,
case when trdr.kepyosts =1 then '���'  
else '���'
end as ��������
, findoc.trndate as �����
FROM findoc
LEFT JOIN trdr 
ON findoc.trdr=trdr.trdr 
-- prosthesi 7074 gia pelati nikou
WHERE findoc.fprms in(2060, 2061, 2062, 2151, 2717, 2718, 2065, 2066, 2069) and  findoc.netamnt<>0 and iscancel=0 and trdr.trdcategory in(5000)  and findoc.fiscprd=2014 and findoc.period<4
ORDER BY trndate, name
; --A����� ���������
