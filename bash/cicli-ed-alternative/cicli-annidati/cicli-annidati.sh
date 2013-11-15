let a=0
for x in 1 2 3 4 5; do
 echo "x=[$x]"
 while [[ $a -le 2 ]]; do
  echo "a=[$a]"
  ((a++)) 
 done
done
