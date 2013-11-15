#for arg in [lista]
#do
# comando(i)...
#done

#Gli argomenti elencati in lista possono contenere i caratteri jolly.
for arg in "1" "*" "#"
do
 echo "$arg"
done 

#Se do si trova sulla stessa riga di for è necessario usare il punto e virgola dopo lista.
for arg in "1" "*" "#"; do
 echo "$arg"
done 

