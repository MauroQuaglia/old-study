# Generare numeri casuali maggiori di un dato numero.

echo "Generiamo $1 numeri casuali maggiori di $2."

declare -i count=0
while [[ count -lt $1 ]]
do
 let var=$RANDOM+$2
 echo "$var"
 count=count+1
done

