select
corr((b.avgScore+100-a.avgScore)/2,cast(c.overallratinghospitalachpts as int)) as avgAchCorr, 
corr((b.avgScore+100-a.avgScore)/2,cast(c.overallratinghospitalimppts as int)) as avgImpCorr, 
corr((b.avgScore+100-a.avgScore)/2,cast(c.overallratinghospitaldimscore as int)) as avgDimCorr,
corr((a.varScore + b.varScore)/2,cast(c.overallratinghospitalachpts as int)) as varAchCorr, 
corr((a.varScore + b.varScore)/2,cast(c.overallratinghospitalimppts as int)) as varImpCorr, 
corr((a.varScore + b.varScore)/2,cast(c.overallratinghospitaldimscore as int)) as varDimCorr
from 
(select hospitalname, sum(round(score,2)) as sumScore, avg(score) as avgScore, variance(score) as varScore, providerid from new_readmission group by providerid, hospitalname) as a
join
(select hospitalname, sum(round(score,2)) as sumScore, avg(score) as avgScore, variance(score) as varScore, providerid from new_timelyEffective where score < 100.001 group by providerid, hospitalname) as b
on a.providerid=b.providerid and a.hospitalname=b.hospitalname
join 
(select * from new_surveyresult) as c
on c.providerid=a.providerid and c.hospitalname=a.hospitalname
order by avgAchCorr
limit 100;
