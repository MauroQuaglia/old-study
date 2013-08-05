# $UID = UID (user identifier) è un numero intero che identifica univocamente un utente del sistema.
# Lo user identifier 0 è particolare in quanto identifica il superuser, o root.

ROOT_UID=0

if [ $UID -eq $ROOT_UID ]
then
  echo "Ciao utente ROOT!"
else
  echo "Non sei ROOT!"
fi

