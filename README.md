# HDFSMedicareCaseStudy
Data analysis project using Spark and Hadoop

If you start off with an unpopulated directory, you can run my project in this order:

1) sh load_data_lake.sh
2) hive -f hive_base_ddl.sql
3) hive -f <EVERY TRANSFORM FILE I WROTE>
4) hive -f <EVERY INVESTIGATIVE QUERY I WROTE>
5) vi <investigationWriteUp>.txt

Best,
Anthony Spalvieri-Kruse  
