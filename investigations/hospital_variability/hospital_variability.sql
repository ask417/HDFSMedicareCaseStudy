select a.measureID, variance(a.score) as varScore
from
(select measurename, measureID, score from new_readmission  where score <>''
union all
select measurename, measureID, score from new_timelyEffective where score <>'') as a
where a.score <>'' and a.measurename not like '%time%' and a.measurename not like '%ED1%' and a.measurename not like '%ED2%' and a.measurename not like '%OP%' and a.score is not null
group by a.measureID
order by varScore desc
limit 10;
