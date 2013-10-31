# Generare scelte binarie.

echo "Generiamo $1 scelte binarie:"

declare -i count=0
while [[ count -lt $1 ]]
do
 let bit=$RANDOM%2
 if [[ $bit -eq 0 ]] 
  then 
   echo "FALSE"
  else
   echo "TRUE"
 fi
 count=count+1
done

