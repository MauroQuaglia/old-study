#${parametro?msg_err} in tal caso il messaggio di errore non c'è, è nullo. Ma viene dato exit code se non esiste e lo script finisce.
# I : sono il comando null, cioè non fare niente. Funziona anche se lo ometto.
: ${HOSTNAME?} ${USER?} ${HOME?}

# Dato che ha verificato che sono tutti valorizzati ora li può usare.
  echo
  echo "Il nome della macchina è $HOSTNAME."
  echo "Tu sei $USER."
  echo "La directory home è $HOME."
  echo
  echo "Se leggete questo messaggio, vuol dire che"
  echo "le variabili d'ambiente più importanti sono impostate."
  echo
  echo

# ------------------------------------------------------

#  Il costrutto ${nomevariabile?} può verificare anche
#+ le variabili impostate in uno script.

QuestaVariabile=Valore-di-Questa-Variabile
: ${QuestaVariabile?}
echo "Il valore di QuestaVariabile è $QuestaVariabile".
echo
echo


: ${XXX?"XXX non è stata impostata."}
#  Se XXX non è stata impostata, allora lo script termina con un messaggio d'errore.

echo "Questo messaggio non viene visualizzato perché lo script è già terminato." # exit code 1

