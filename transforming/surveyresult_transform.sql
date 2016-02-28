DROP TABLE new_surveyresult;
CREATE TABLE new_surveyresult
   ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
   STORED AS textfile
   AS
SELECT providerid, hospitalname, address, city, state, zipcode, countyname, cast(trim(substr(commnursesachpts,0,2)) as int) as commnursesachpts, cast(trim(substr(commnursesimppts,0,2)) as int) as commnursesimppts, cast(trim(substr(commnursesdimscore,0,2)) as int) as commnursesdimscore, cast(trim(substr(commdoctorsachpts,0,2)) as int) as commdoctorsachpts, cast(trim(substr(commdoctorsimppts,0,2)) as int) as commdoctorsimppts, cast(trim(substr(commdoctorsdimscore,0,2)) as int) as commdoctorsdimscore, cast(trim(substr(resphospitalstaffachpts,0,2)) as int) as resphospitalstaffachpts, cast(trim(substr(resphospitalstaffimppts,0,2)) as int) as resphospitalstaffimppts, cast(trim(substr(resphospitalstaffdimscore,0,2)) as int) as resphospitalstaffdimscore, cast(trim(substr(painmgmtachpts,0,2)) as int) as painmgmtachpts, cast(trim(substr(painmgmtimppts,0,2)) as int) as painmgmtimppts, cast(trim(substr(painmgmtdimscore,0,2)) as int) as painmgmtdimscore, cast(trim(substr(commaboutmedicinesachpts,0,2)) as int) as commaboutmedicinesachpts, cast(trim(substr(commaboutmedicinesimppts,0,2)) as int) commaboutmedicinesimppts, cast(trim(substr(commaboutmedicinesdimscore,0,2)) as int) as commaboutmedicinesdimscore, cast(trim(substr(cleanlinessquietnesshospitalenvachpts,0,2)) as int) as cleanlinessquietnesshospitalenvachpts, cast(trim(substr(cleanlinessquietnesshospitalenvimppts,0,2)) as int) as cleanlinessquietnesshospitalenvimppts, cast(trim(substr(cleanlinessquietnesshospitalenvdimscore,0,2)) as int) as cleanlinessquietnesshospitalenvdimscore, cast(trim(substr(dischargeinfoachpts,0,2)) as int) as dischargeinfoachpts, cast(trim(substr(dischargeinfoimppts,0,2)) as int) as dischargeinfoimppts, cast(trim(substr(dischargeinfodimscore,0,2)) as int) as dischargeinfodimscore, cast(trim(substr(overallratinghospitalachpts,0,2)) as int) as overallratinghospitalachpts, cast(trim(substr(overallratinghospitalimppts,0,2)) as int) as overallratinghospitalimppts, cast(trim(substr(overallratinghospitaldimscore,0,2)) as int) as overallratinghospitaldimscore, cast(hcahpsbasescore as int) as hcahpsbasescore, cast(hcahpsconsistencyscore as int) as hcahpsconsistencyscore
FROM surveyresult;