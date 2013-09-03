# Redirezione.
# > &> >& >> < <>


# >
# Redirige l'output della subshell nel file di log. 
# Sovrascrive nome_file nel caso fosse già esistente.
(
a="4"
echo "Il valore di a è $a"
) > log.txt 


# &>
# Redirige sia lo stdout che lo stderr del comando nel log.
(
let "a = ((0 / 0))" 
echo "Il valore di a è $a"
) &> log2.txt # Nel log c'è l'errore.

# >& - QUESTO NON RIESCO A VEDERLO
#edirige lo stdout di comando nello stderr.
( 
echo "Il valore di a è 3..."
) >& log4.txt

