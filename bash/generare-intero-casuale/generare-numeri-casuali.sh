# Generare numeri casuali.

echo "Generiamo $1 numeri casuali:"

declare -i count=0
while [[ count -lt $1 ]]
do
 echo "$RANDOM"
 count+=1
done




# Generare numeri casuali seconda versione.

echo "Generiamo $1 numeri casuali:"

let i=0
while [[ i -lt $1 ]]
do
 echo "$RANDOM"
 ((i++))
done



# Generare numeri casuali terza versione.

echo "Generiamo $1 numeri casuali:"

((c=0))
while [[ c -lt $1 ]]
do
 echo "$RANDOM"
 ((c++))
done
