((a=23))

echo "a (valore iniziale) = $a"

((a++))
echo "a (dopo a++) = $a"

((a--))
echo "a (dopo a--) = $a"

((++a))
echo "a (dopo ++a) = $a"

((--a))
echo "a (dopo --a) = $a"

# anche con let funziona:
let b=23
echo "b (valore iniziale) = $b"

((b++))
echo "b (dopo b++) = $b"

((b--))
echo "b (dopo b--) = $b"

((++b))
echo "b (dopo ++b) = $b"

((--b))
echo "b (dopo --b) = $b"


n=1; let --n && echo "Vero A" #  F(0) && V = F 
n=1; let n-- && echo "Vero B" #  V(1) && V = V


((x=a<10?0:1))
echo "Se a < 10, allora x = 0, altrimenti x = 1."
echo "x = $x "


