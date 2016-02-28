drop table new_timelyEffective;
CREATE TABLE new_timelyEffective
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  ProviderID,	HospitalName, Address,	City,	State,	ZIPCode,	CountyName,	PhoneNumber,	Condition,	MeasureID,	MeasureName,	cast(Score as int) as score,	cast(Sample as int) as sample,	Footnote,	MeasureStartDate, MeasureEndDate
FROM timelyEffective;
