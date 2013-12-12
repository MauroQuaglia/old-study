# Visualizza la durata della connessione di un utente al sistema, letta da /var/log/wtmp.
# wtmp è un file nascosto, per vederlo bisogna fare "ls -a".

cd "/var/log"
if [[ -e "wtmp" ]]; then
 echo $(ac -dp)
else
 echo "Il file [/var/log/wtmp] non esiste!"
fi



