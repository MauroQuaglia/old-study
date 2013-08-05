# $UID = UID (user identifier) è un numero intero che identifica univocamente un utente del sistema.
# Lo user identifier 0 è particolare in quanto identifica il superuser, o root.

ROOT_UID=0
ROOT_MESSAGE="Ciao utente ROOT!"
USER_MESSAGE="Non sei ROOT!"

if [ $UID -eq $ROOT_UID ]
then
  echo $ROOT_MESSAGE
else
  echo $USER_MESSAGE 
fi



