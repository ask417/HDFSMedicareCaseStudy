DROP TABLE Hospital;
CREATE EXTERNAL TABLE Hospital(
	ProviderID	int,
	HospitalName string,
	Address string,
	City string,
	State string,
	ZIPCode int,
	CountyName string,
	PhoneNumber int,
	HospitalType string,
	HospitalOwnership string,
	EmergencyServices string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";





DROP TABLE SurveyResult;
CREATE EXTERNAL TABLE SurveyResult(
ProviderID int,
CommNursesAchPts int,
CommNursesImpPts int,
CommNursesDimScore int,
CommDoctorsAchPts int,
CommDoctorsImpPts int,
CommDoctorsDimScore int,
RespHospitalStaffAchPts int,
RespHospitalStaffImpPts int,
RespHospitalStaffDimScore int,
PainMgmtAchPts int,
PainMgmtImpPts int,
PainMgmtDimScore int,
CommaboutMedicinesAchPts int,
CommaboutMedicinesImpPts int,
CommaboutMedicinesDimScore int,
CleanlinessQuietnessHospitalEnvAchPts int,
CleanlinessQuietnessHospitalEnvImpPts int,
CleanlinessQuietnessHospitalEnvDimScore int,
DischargeInfoAchPts int,
DischargeInfoImpPts int,
DischargeInfoDimScore int,
OverallRatingHospitalAchPts int,
OverallRatingHospitalImpPts int,
OverallRatingHospitalDimScore int,
HCAHPSBaseScore int,
HCAHPSConsistencyScore int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";





DROP TABLE Procedure;
CREATE EXTERNAL TABLE Procedure(
ProviderID	int,
Condition string,
Measure_ID string,
MeasureName string,
Score int,
Sample int,
Footnote string,
MeasureStartDate date,
MeasureEndDate date
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = "," ,
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";





DROP TABLE Measure;
CREATE EXTERNAL TABLE Measure(
Measure_ID int,
MeasureName string,
MeasureStartQuarter string,
MeasureStartDate date,
MeasureEndQuarter string,
MeasureEndDate date
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";


