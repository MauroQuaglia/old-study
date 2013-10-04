# $IFS gestisce il separatore di campo.
echo "$IFS" | tr ' ' 'W'
echo "$IFS" | tr '\n' 'R'

output_arguments()
{
  #Usa IFS e capisce che i campi sono separati.
  for arg 
  do 
   echo "[$arg]"
  done
}

IFS="*"
echo "Valore di IFS: [$IFS]"
var1="a*b*c"    
output_arguments $var1
output_arguments "$var1"

IFS="*-"
echo "Valore di IFS: [$IFS]"
var2="a-b*c"    
output_arguments $var2
output_arguments "$var2"


