# $parametro oppure ${parametro}.

PARAM="X"
echo "$PARAM"
echo "${PARAM}" # Questa è meno ambigua. In alcuni contesti funziona solo questa.

# Può essere utilizzato per concatenare delle stringhe alle variabili.
your_id=${USER}-on-${HOSTNAME}
echo "$your_id"

echo "Vecchio = ${PATH}"
PATH=${PATH}:/opt/bin  # Aggiunge /opt/bin a $PATH per la durata dello script.
echo "Nuovo   = ${PATH}"
