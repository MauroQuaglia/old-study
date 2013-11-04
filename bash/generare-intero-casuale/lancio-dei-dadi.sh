# Lanciare n volte un dado.

declare -i count
while [[ count -lt $1 ]]
do
 let var=($RANDOM%6)+1
 echo "Hai fatto ${var}!"
 count=count+1
done
