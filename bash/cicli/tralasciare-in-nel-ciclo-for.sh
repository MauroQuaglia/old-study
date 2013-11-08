# Tralasciare la parola chiave "in" nel ciclo for.

# Elenca i parametri passati allo script. $@
for a
do 
 echo "$a"
done

# Quindi è come fare
for b in $@
do 
 echo "$b"
done
