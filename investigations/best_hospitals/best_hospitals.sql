select a.providerid, round(a.sumScore+b.sumScore,2) as totalScore, round((b.avgScore+100-a.avgScore)/2,2) as totalMeanScore, round((a.varScore + b.varScore)/2,2) as totalVariance, a.hospitalname
from 
(select hospitalname, sum(round(score,2)) as sumScore, avg(score) as avgScore, variance(score) as varScore, providerid from new_readmission group by providerid, hospitalname) as a
join
(select hospitalname, sum(round(score,2)) as sumScore, avg(score) as avgScore, variance(score) as varScore, providerid from new_timelyEffective where score < 100.001 group by providerid, hospitalname) as b
on a.providerid=b.providerid and a.hospitalname=b.hospitalname
order by totalScore desc
limit 10;
