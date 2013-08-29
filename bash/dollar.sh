#$

var1=5

# $ - Sostituzione di variabile (contenuto di una variabile).
echo $var1 # 5

# ${} - In alcuni contesti è necessario usare queta notazione perché è meno ambigua e l'altra non funziona.
echo ${var1} # 5; 

# $ -fine-riga. In una espressione regolare, il "$" rinvia alla fine della riga di testo.

# $* - Tutti i parametri posizionali vengono visti come un'unica parola.
echo "$*"

# $@ - Simile a $*, ma ogni parametro viene considerato come una singola parola.
echo "$@"

#$? - Contiene l'exit status di un comando, di una funzione o dello stesso script.
echo $?

#$$ - Contien l'ID del processo.
echo $$

