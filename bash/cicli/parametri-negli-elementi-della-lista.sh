# il comando set per assegnare ad ogni componente i rispettivi parametri posizionali.
for pianeta in "Mercurio 36" "Venere 67"
do
  set $pianeta # come se fossero parametri passati allo script!
  echo "$1 $2,000,000 miglia dal sole"
done
