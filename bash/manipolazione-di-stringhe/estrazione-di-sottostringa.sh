# Estrae la sottostringa dalla stringa iniziando da una certa posizione.
STRING="abc"

echo "${STRING:0}" # abc
echo "${STRING:1}" # bc
echo "${STRING:2}" # c
echo "${STRING:3}" # 

# Parte dal fondo. Lo spazio dopo : è essenziale!
echo "${STRING: -1}" # c
echo "${STRING: -2}" # bc 
echo "${STRING: -3}" # abc 

echo "----------------------------"

#${stringa:posizione:lunghezza}
# L'indicizzazione inizia da 0.
echo "${STRING:0:1}" # a
echo "${STRING:1:2}" # bc
echo "${STRING:2:0}" # 
echo "${STRING:2:1}" # c 

# Un modo alternativo. MA L'indicizzazione inizia da 1!
echo `expr substr $STRING 0 1` # 
echo `expr substr $STRING 1 2` # ab
echo `expr substr $STRING 2 0` # 
echo `expr substr $STRING 2 1` # b

echo "----------------------------"

# Estrazione per mezzo di espressione regolare partendo dall'inizio.
STRING="abcABCDEF123"
echo `expr match "$STRING" '\(abc[A-Z]*\)'` #abcABCDEF
echo `expr "$STRING" : '\(abc[A-Z]*\)'`     #abcABCDEF
# Partendo dalla fine. Bisogna aggiungere .* rispetto alla precedente.
echo `expr match "$STRING" '.*\(abc[A-Z]*\)'` #abcABCDEF
echo `expr "$STRING" : '.*\(abc[A-Z]*\)'`     #abcABCDEF

