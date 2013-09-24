CURRENT_DIRECTORY=`pwd`
FILES="$CURRENT_DIRECTORY/*"

for my_file in $FILES
do
 if [ -d "$my_file" ]
  then echo "$my_file is a directory!"
  else echo "$my_file is a file!"
 fi
done
