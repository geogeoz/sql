select trdr.afm as ���, trdr.name as ONOMA,  sum(findoc.netamnt) as ���� , sum(findoc.vatamnt) as ���, count(trdr.afm) as ������, trdr.city as ���� 
from findoc
left join trdr on findoc.trdr=trdr.trdr 
where (findoc.fprms=7062 and findoc.fiscprd=2014 and findoc.period between 1 and 3 and trdr.afm<>' ') 
group by afm, name, city;
