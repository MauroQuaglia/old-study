# Variabili
var="ABCD"
echo "[${var}] è lunga [${#var}] caratteri."

# Array
array=("A" "BB" "CCC")
echo "Primo elemento: [${array[0]}]"
echo "La lunghezza del primo elemento dell'array è [${#array}]."
echo '${#array[*]}'"=Numero totale degli elementi dell'array: [${#array[*]}]."
echo '${#array[@]}'"=Numero totale degli elementi dell'array: [${#array[@]}]."

# Parametri posizionali
echo '${#*}'"=numero dei parametri posizionali: [${#*}]."
echo '${#@}'"=numero dei parametri posizionali: [${#@}]."


