# L'utilizzo degli apici doppi previene la suddivisione delle parole.
# Un argomento tra apici doppi viene considerato come un'unica parola, anche se contiene degli spazi. 

var1="c d e"

#5 argomenti: "a" "b" "c" "d" "e"
bash display-argument.sh a b $var1 

#1 argomento: "a b c d e" 
bash display-argument.sh "a b $var1" 

var2=""

#0 argomenti
bash display-argument.sh $var2 $var2

#2 argomenti: "" ""
bash display-argument.sh "$var2" "$var2"

#1 argomento " "
bash display-argument.sh "$var2 $var2"

# Sostanzialmente il concetto è questo:
# var1="a b c"
# $var1   -> a b c
# "$var1" -> "a b c"  
