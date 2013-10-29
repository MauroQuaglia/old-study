# -i intero

declare -i number

number=3
echo "[${number}]"

number=0
echo "[${number}]"

number=tre
echo "[${number}]" # 0. Cerca di valutare la stringa come se fosse un intero. Non ci riesce e mette 0!


# Si possono fare anche delle operazioni senza usare expr o let.
numero=6/3
echo "[${numero}]" #6/3

declare -i numero2
numero2=6/3
echo "[${numero2}]" #2
