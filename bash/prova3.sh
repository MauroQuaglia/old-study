#!/bin/bash
# $IFS gestisce gli spazi in modo diverso dagli altri caratteri.

output_arg_uno_per_riga()
{
  for arg
  do 
   echo "[$arg]"
  done
}

IFS="-*"

echo "Valore di IFS: [$IFS]"


var="a-b*g"    
output_arg_uno_per_riga $var

