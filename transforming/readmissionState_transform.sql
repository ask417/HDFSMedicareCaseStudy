DROP TABLE new_readmissionState;
CREATE TABLE new_readmissionState
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  state, MeasureName,	MeasureID,	cast(HospitalsWorse as int) as HospitalsWorse,	cast(HospitalsSame as double) as HospitalsSame,	cast(HospitalsBetter as double) as HospitalsBetter,	cast(HospitalsTooFew as double) as HospitalsTooFew, Footnote,	to_date(MeasureStartDate) as startDate,	to_date(MeasureEndDate) as endDate
FROM readmissionState;



