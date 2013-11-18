echo "Non interrompo niente..."
let c1=0
let c2=0
while [[ c1 -le 3 ]]; do
 echo "c1=[$c1]"
 ((c1++))
 ((c2=0))
 while [[ c2 -le 2 ]]; do
   echo "c2=[$c2]"
  ((c2++))
 done
done

echo "Interrompo il ciclo interno..."
let c1=0
let c2=0
while [[ c1 -le 3 ]]; do
 echo "c1=[$c1]"
 ((c1++))
 ((c2=0))
 while [[ c2 -le 2 ]]; do
   echo "c2=[$c2]"
  ((c2++))
  break # break 1
 done
done

echo "Interrompo il ciclo principale da quello interno!"
let c1=0
let c2=0
while [[ c1 -le 3 ]]; do
 echo "c1=[$c1]"
 ((c1++))
 ((c2=0))
 while [[ c2 -le 2 ]]; do
   echo "c2=[$c2]"
  ((c2++))
  break 2
 done
done
