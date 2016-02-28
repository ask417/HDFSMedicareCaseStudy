DROP TABLE new_hospital;
CREATE TABLE new_hospital
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT  *
FROM hospital;