select a.state, rankHospBetter, rankHospWorst, rankTimeTaken, rankRateEfficacy, (rankHospBetter+rankHospWorst+rankTimeTaken+rankRateEfficacy)/4 as jointRank
from 
(select state, sumHospWorst, rank() over (order by cast(sumHospWorst as int) desc) as rankHospWorst
from
(select state, sum(cast(HospitalsWorse as int)) as sumHospWorst from new_readmissionState group by state) as a) 
as a
join
(select state, sumHospBetter, rank() over (order by cast(sumHospBetter as int) desc) as rankHospBetter
from
(select state, sum(cast(HospitalsBetter as int)) as sumHospBetter from new_readmissionState group by state) as b) 
as b
on a.state=b.state
join
(select state, avgTimeTaken, rank() over (order by cast(avgTimeTaken as double) asc) as rankTimeTaken
from
(select state, avg(cast(score as int)) as avgTimeTaken from new_timelyEffectiveState where timeMeasure=1 group by state) as c) 
as c
on b.state=c.state
join
(select state, avgRate, rank() over (order by cast(avgRate as double) asc) as rankRateEfficacy
from
(select state, avg(cast(score as int)) as avgRate from new_timelyEffectiveState where timeMeasure=0 group by state) as d) 
as d
on c.state=d.state 
order by jointRank asc
limit 10;




