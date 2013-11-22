# Visualizza la durata della connessione di un utente al sistema, letta da /var/log/wtmp.

cd "/var/log"
if [[ ! -e "wtmp" ]]; then
 echo $(ac -dp)
 echo $PWD
else
 echo "Il file [/var/log/wtmp] non esiste!"
fi



