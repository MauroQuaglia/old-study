# : è il comando null. Sinonimo di true, il suo exit status è 0.
:
echo $? # 0

# Fornisce un segnaposto dove è attesa un'operazione binaria.
: ${nomeutente=`whoami`}

# Valuta una stringa di variabili utilizzando la sostituzione di parametro.
# Visualizza un messaggio d'errore se una, o più, delle variabili fondamentali d'ambiente non è impostata.
: ${HOSTNAME?}

# In combinazione con >, l'operatore di redirezione, azzera il contenuto di un file, senza cambiarne i permessi. Se il file non esiste, viene creato.
: > data.txt
