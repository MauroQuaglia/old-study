y=`eval ls -l`  #  Simile a  y=`ls -l`
echo $y         #+ ma con i ritorni a capo tolti perché la variabile
                #+ "visualizzata" è senza "quoting".
echo
echo "$y"       #  I ritorni a capo vengono mantenuti con il
                #+ "quoting" della variabile.

echo; echo

y=`eval df`     #  Simile a y=`df`
echo $y         #+ ma senza ritorni a capo.

#  Se non si preservano i ritorni a capo, la verifica dell'output
#+ con utility come "awk" risulta più facile.

echo
echo "======================================================================="
echo

# Ora vediamo come "espandere" una variabile usando "eval" . . .

for i in 1 2 3 4 5; do
  eval valore=$i
  #  valore=$i ha lo stesso effetto. "eval", in questo caso, non è necessario.
  #  Una variabile senza meta-significato valuta se stessa --
  #+ non può espandersi a nient'altro che al proprio contenuto letterale.
  echo $valore
done

echo
echo "---"
echo

for i in ls df; do
  valore=eval $i
  #  valore=$i in questo caso avrebbe un effetto completamente diverso.
  #  "eval" valuta i comandi "ls" e "df" . . .
  #  I termini "ls" e "df" hanno un meta-significato,
  #+ dal momento che sono interpretati come comandi
  #+ e non come stringhe di caratteri.
  echo $valore
done


exit 0


