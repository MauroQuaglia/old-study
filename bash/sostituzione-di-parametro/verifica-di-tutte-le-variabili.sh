#${!prefissovar*}, ${!prefissovar@}
# Verifica tutte le variabili precedentemente dichiarate i cui nomi iniziano con prefissovar.
# ! = inizio, * = fine

var1=AAA
v2=123
var3=ZZZ

result=${!var*}
echo "[${result}]" # var1 var3
