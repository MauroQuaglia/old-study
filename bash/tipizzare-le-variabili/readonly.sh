# -r readonly 

# Due possibilità:
# declare -r var1=
# readonly var1=

declare -r var1="Variabile in sola lettura!"

echo "[${var1}]"

var1="Provo a sovrascrivere ma ottengo un errore!"

