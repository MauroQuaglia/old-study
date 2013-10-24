# ${var#Modello}, ${var##Modello}
# Toglie da $var la parte più breve/lunga di $Modello verificata all'inizio di $var.
# Esattamente quello che si era visto a proposite delle stringhe.

# Togliere gli 0 iniziali dall'argomento fornito.
echo "${1#0}"
echo "${1##0*0}"

