# ``,  (()), let.

 
a=`expr $a + 3` # expr esegue l'espansione.
echo $a

# rispetto alla precedente sono meglio le (()) oppure let
b=$(($b+4))
echo $b

c=$((c+4)) # all'interno delle doppie parentesi la deferenziazione è opzionale
echo $c

let d=d+5									
echo $d

