DROP TABLE new_measure;
CREATE TABLE new_measure
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  MeasureName, Measure_ID, MeasureStartQuarter, to_date(MeasureStartDate) as startDate, MeasureEndQuarter, to_date(MeasureEndDate) as endDate
FROM measure;