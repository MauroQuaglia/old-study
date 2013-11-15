let t=0

condition()
{
((t<=7?1:0)) # Costrutto ternario.
}

while condition; do
 echo "Ale oh oh... t=[$t]"
 ((t++))
done
