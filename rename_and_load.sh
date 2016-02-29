mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/HospitalGeneralInformation.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/hospital.csv

mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/TimelyandEffectiveCare-Hospital.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/timelyEffective.csv

mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/ReadmissionsandDeaths-Hospital.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/readmission.csv

mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/MeasureDates.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/measure.csv

mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/hvbp_hcahps_05_28_2015.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/surveyresult.csv

mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/TimelyandEffectiveCare-State.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/timelyEffectiveState.csv
          
mv /home/w205/HDFSMedicareCaseStudy/modified_csvs/ReadmissionsandDeaths-State.csv /home/w205/HDFSMedicareCaseStudy/modified_csvs/readmissionState.csv

hdfs dfs -mkdir /user/w205/hospital_compare/hospital
hdfs dfs -mkdir /user/w205/hospital_compare/timelyEffective
hdfs dfs -mkdir /user/w205/hospital_compare/readmission
hdfs dfs -mkdir /user/w205/hospital_compare/measure
hdfs dfs -mkdir /user/w205/hospital_compare/surveyresult
hdfs dfs -mkdir /user/w205/hospital_compare/timelyEffectiveState
hdfs dfs -mkdir /user/w205/hospital_compare/readmissionState

hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/hospital.csv /user/w205/hospital_compare/hospital
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/timelyEffective.csv /user/w205/hospital_compare/timelyEffective
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/readmission.csv /user/w205/hospital_compare/readmission
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/measure.csv /user/w205/hospital_compare/measure
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/surveyresult.csv /user/w205/hospital_compare/surveyresult
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/timelyEffectiveState.csv /user/w205/hospital_compare/timelyEffectiveState
hdfs dfs -put /home/w205/HDFSMedicareCaseStudy/modified_csvs/readmissionState.csv /user/w205/hospital_compare/readmissionState






