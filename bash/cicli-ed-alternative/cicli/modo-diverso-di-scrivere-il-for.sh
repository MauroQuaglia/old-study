# sintassi standard
echo "Sintassi standard: [for a in 1 2 3]"
for a in 1 2 3; do
  echo "$a"
done  

# Sintassi stile C.
echo "Sintassi stile C: [for ((a=1;a<=3;a++))]"
for ((a=1;a<=3;a++)); do
  echo "$a"
done
