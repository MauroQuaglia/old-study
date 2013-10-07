#!/bin/bash

PS3='Scegli il tuo ortaggio preferito: '

select verdura in "fagioli" "carote" "patate" "cipolle" "rape"
do
  echo "Il tuo ortaggio preferito: $verdura."
  break
done




echo "--------------------------------"

echo -n "Qual'è la tua verdura preferita?"
read
echo "La tua verdura preferita è $REPLY."

echo "--------------------------------"

echo -n "Qual'è il tuo frutto preferito?"
read frutto
echo "Il tuo frutto preferito è $frutto."
echo "ma..."
echo "Il valore di \$REPLY è ancora $REPLY."

