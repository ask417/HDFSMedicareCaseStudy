DROP TABLE new_readmission;
CREATE TABLE new_readmission
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  ProviderID,	HospitalName, Address,	City,	State,	ZIPCode,	CountyName,	PhoneNumber,	MeasureName,	MeasureID,	ComparedtoNational,	cast(Denominator as int) as denominator,	cast(Score as double) as double,	cast(LowerEstimate as double) as lowerEstimate,	cast(HigherEstimate	as double) as higherEstimate, Footnote,	MeasureStartDate, MeasureEndDate
FROM readmission;