# ; 
# Permette di inserire due o più comandi sulla stessa riga.

echo ciao; echo ciao

if [ $UID -eq 0 ]; then
  echo 'Ciao Root; Come stai?'; else 
  echo 'Ciao User!'
fi

