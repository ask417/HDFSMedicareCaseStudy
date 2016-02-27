medicare="Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip; charset=binary&filename=Hospital_Revised_Flatfiles.zip"

directory="/home/w205/HDFSMedicareCaseStudy/modified_csvs"

if [ -e  "$medicare" ]
then
	echo "Medicare zip found"
else
	wget "https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
fi

if [ ! -d $directory ]
then
	mkdir "$directory"
fi

medicareZip="Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip; charset=binary&filename=Hospital_Revised_Flatfiles.zip"

unzip "$medicareZip" -d "/home/w205/HDFSMedicareCaseStudy/data/"

for file in /home/w205/HDFSMedicareCaseStudy/data/*.csv 
do
        #Renames and removes whitespaces from file name
        new=$(basename "$file")
        new=${new//[[:blank:]]/}
	new="/home/w205/HDFSMedicareCaseStudy/modified_csvs/$new"

	#Remove headers from all csv files
        tail -n +2 "$file" > "$new"
	rm -f "$file"

        #Make hdfs directory, and put file into it with hdfs dfs -put filename pathToJustAddedDirectory
        #hdfs dfs -put "$new" /user/w205/hospital_compare  
done

source /home/w205/HDFSMedicareCaseStudy/rename_and_load.sh
