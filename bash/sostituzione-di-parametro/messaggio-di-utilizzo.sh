# Verifica che ci sia $1.
# Se non c'è visualizza il messaggio di errore: "Utilizzo: [nome-file-corrente] ARGOMENTO"
: ${1?"Utilizzo: $0 ARGOMENTO"}

# Infatti se manca l'argomento lo script finisce con exit 1.
echo "Questa riga viene visualizzata solo se è stato fornito l'argomento. ARGOMENTO = [$1]."

