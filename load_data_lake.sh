for file in /home/w205/hospital_compare/*.csv
do
        #Renames and removes whitespaces from file name
        new=new$(basename "$file")
        new=${n//[[:blank:]]/}
	new="/home/w205/hospital_compare/$new"
        #Remove headers from all csv files
        tail -n +2 "$file" > "$new"
	rm -f "$file"

        #Make hdfs directory, and put file into it with hdfs dfs -put filename pathToJustAddedDirectory
        hdfs dfs -put $(basename "$new") /user/w205/hospital_compare  
done
