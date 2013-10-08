#!/bin/bash
# t-out.sh 
# Ispirato da un suggerimento di "syngin seven" (grazie).


TEMPOLIMITE=4        # 4 secondi

read -t $TEMPOLIMITE variabile

echo

if [ -z "$variabile" ]  # È nulla?
then
  echo "Tempo scaduto, la variabile non è stata impostata."
else  
  echo "variabile = $variabile"
fi  

exit 0
