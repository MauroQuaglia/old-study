# Generare numeri casuali in un intervallo.

echo "Generiamo $1 numeri in [$2, $3)."

declare -i count=0
while [[ count -lt $1 ]]
do
 let module=$3-$2
 let number=$RANDOM%$module
 let result=$2+$number
 echo "$result"
 count=count+1
done

