# Se la stringa è "*" o "@", allora vengono estratti i parametri posizionali iniziando dalla posizione specificata.
# Utilizzo: $0 p1 p2 ... pn

echo "${*:1}" # a b --> a b
echo "${*:2}" # a b --> b
echo "${*:3}" # a b --> 
echo "${@:1}" # a b --> a b
echo "${@:2}" # a b --> b
echo "${@:3}" # a b -->

# Parte dal fondo. Lo spazio dopo : è essenziale!
echo "${*: -1}" # a b --> b
echo "${*: -2}" # a b --> a b

echo "----------------------------"

##${*/@:posizione:numero}
echo "${*:2:3}" # a b c d e--> b c d
echo "${@:1:2}" # a b c d e--> a b 
                     
