# -a array

# La variabile indici verrà trattata come un array.
declare -a indici

indici[0]=aaa
indici[1]=aaa

echo "${#indici[*]}"

    
