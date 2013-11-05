# Serve per impostare i default
min=${1:-0} # Qui i ":" servono! La variabile min è dichiarata ma non ancora impostata!
echo "Variabile impostata a: [${min}]"

# Modo1
a=$((5-3))
echo "a=[${a}]"
# Il vantaggio è che posso anche evitare di dichiarare la varibile!
echo "Non dichiarata=[$((5-3))]"

#Modo2
let b=5-3
echo "b=[${b}]"

# La barra serve per andare a capo!
let h=\
9+9
echo "h=[${h}]"
