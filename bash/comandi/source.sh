# "source" o ".".

# source se invocata da riga di comando, esegue uno script. 
# All'interno di uno script, source nome-file carica il file nome-file, importando codice all'interno dello script.

# Se il file caricato con source è anch'esso uno script eseguibile, verrà messo in esecuzione e, alla fine, il controllo ritornerà allo script che l'ha richiamato.

. mq-is-empty.sh
is_empty "$1"

source mq-has-at-least-three-characters.sh
has_at_least_three_characters "$1"


