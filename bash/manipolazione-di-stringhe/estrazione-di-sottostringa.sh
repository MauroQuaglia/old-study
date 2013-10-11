# Estrae la sottostringa dalla stringa iniziando da una certa posizione.
STRING="abc"

echo "${STRING:0}" # abc
echo "${STRING:1}" # bc
echo "${STRING:2}" # c
echo "${STRING:3}" # 

# Se la stringa è "*" o "@", allora vengono estratti i parametri posizionali iniziando dalla posizione specificata.
# Utilizzo: $0 "p1" "p2" ... "pn" 
echo "${*:1}"
