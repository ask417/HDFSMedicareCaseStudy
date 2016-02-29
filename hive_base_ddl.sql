DROP TABLE hospital;
CREATE EXTERNAL TABLE hospital(
	ProviderID      string,
	HospitalName string,
	Address string,
	City string,
	State string,
	ZIPCode string,
	CountyName string,
	PhoneNumber string,
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
LOCATION "/user/w205/hospital_compare/hospital";





DROP TABLE surveyresult;
CREATE EXTERNAL TABLE surveyresult(
	ProviderID string,
	HospitalName string,
	Address string,
	City string,
	State string,
	ZIPCode string,
	CountyName string,
	CommNursesAchPts string,
	CommNursesImpPts string,
	CommNursesDimScore string,
	CommDoctorsAchPts string,
	CommDoctorsImpPts string,
	CommDoctorsDimScore string,
	RespHospitalStaffAchPts string,
	RespHospitalStaffImpPts string,
	RespHospitalStaffDimScore string,
	PainMgmtAchPts string,
	PainMgmtImpPts string,
	PainMgmtDimScore string,
	CommaboutMedicinesAchPts string,
	CommaboutMedicinesImpPts string,
	CommaboutMedicinesDimScore string,
	CleanlinessQuietnessHospitalEnvAchPts string,
	CleanlinessQuietnessHospitalEnvImpPts string,
	CleanlinessQuietnessHospitalEnvDimScore string,
	DischargeInfoAchPts string,
	DischargeInfoImpPts string,
	DischargeInfoDimScore string,
	OverallRatingHospitalAchPts string,
	OverallRatingHospitalImpPts string,
	OverallRatingHospitalDimScore string,
	HCAHPSBaseScore string,
	HCAHPSConsistencyScore string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/surveyresult";



DROP TABLE measure;
CREATE EXTERNAL TABLE measure(
	MeasureName string,
	Measure_ID string,
	MeasureStartQuarter string,
	MeasureStartDate string,
	MeasureEndQuarter string,
	MeasureEndDate string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/measure";




DROP TABLE readmission;
CREATE EXTERNAL TABLE readmission(
	ProviderID string,
	HospitalName string,	
	Address string,
	City string,	
	State string,	
	ZIPCode string,	
	CountyName string,	
	PhoneNumber string,	
	MeasureName	 string,
	MeasureID	 string,
	ComparedtoNational string,	
	DenominatorScore	 string,
	LowerEstimate	 string,
	HigherEstimate	 string,
	Footnote	 string,
	MeasureStartDate string,	
	MeasureEndDate string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/readmission";



DROP TABLE timelyEffective;
CREATE EXTERNAL TABLE timelyEffective(
	ProviderID string,
	HospitalName string,	
	Address string,	
	City string,	
	State string,	
	ZIPCode string,
	CountyName string,	
	PhoneNumber string,	
	Condition string,	
	MeasureID string,	
	MeasureName string,	
	Score string,	
	Sample string,	
	Footnote string,	
	MeasureStartDate string,	
	MeasureEndDate string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/timelyEffective";



DROP TABLE readmissionState;
CREATE EXTERNAL TABLE readmissionState(
	State string,
	MeasureName string,
	MeasureID string,
	HospitalsWorse string,
	HospitalsSame string,
	HospitalsBetter string,
	HospitalsTooFew string,
	Footnote string,
	MeasureStartDate string,
	MeasureEndDate string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/readmissionState";


DROP TABLE timelyEffectiveState;
CREATE EXTERNAL TABLE timelyEffectiveState(
	state string,
	Condition string,	
	MeasureName string,	
	MeasureID string,	
	Score string,	
	Footnote string,	
	MeasureStartDate string,	
	MeasureEndDate string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/timelyEffectiveState";



