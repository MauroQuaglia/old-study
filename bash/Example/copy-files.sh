# Redirezione.
# > &> >& >> < <>

# Redirige l'output della subshell nel file nome_file. 
# Sovrascrive nome_file nel caso fosse già esistente.
(
a="5"
echo "Il valore di a è $a"
) > log.txt 


