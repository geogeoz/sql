select trdr.afm as ¡÷Ã, trdr.name as ONOMA,  sum(findoc.netamnt) as ¡Œ…¡ , sum(findoc.vatamnt) as ÷–¡, count(trdr.afm) as –À«»œ”, trdr.city as –œÀ« 
from findoc
left join trdr on findoc.trdr=trdr.trdr 
where (findoc.fprms=7062 and findoc.fiscprd=2014 and findoc.period between 1 and 3 and trdr.afm<>' ') 
group by afm, name, city;
