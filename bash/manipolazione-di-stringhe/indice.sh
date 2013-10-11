# Numero di posizione nella stringa del primo carattere presente in sottostringa.

STRING="abcABCabc"

echo `expr index "$STRING" C` # 6
echo `expr index "$STRING" a` # 1
echo `expr index "$STRING" AB` # 4 

