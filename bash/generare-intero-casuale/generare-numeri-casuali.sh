# Generare numeri casuali.

echo "Generiamo $1 numeri casuali:"

declare -i count=0
while [[ count -lt $1 ]]
do
 echo "$RANDOM"
 count+=1
done
