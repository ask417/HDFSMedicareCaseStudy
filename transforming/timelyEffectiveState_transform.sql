DROP TABLE new_timelyEffectiveState;
CREATE TABLE new_timelyEffectiveState
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  state,	Condition,	MeasureName, MeasureID,case when (MeasureName like '%Time%' or MeasureName like '%ED1%' or MeasureName like '%ED2%' or MeasureName like '%OP18%' or MeasureName like '%OP20%') then 1 else 0 end as timeMeasure, cast(Score as int) as score,	Footnote,	MeasureStartDate, MeasureEndDate
FROM timelyEffectiveState;

