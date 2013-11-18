for a in I II III; do
 echo "$a"
 for b in 1 2 3; do
  if [ "$b" -eq 2 ]; then
   continue # continue 1
  fi
  echo "$b" 
 done
done

echo "-------------------------------"

for a in I II III; do
 echo "$a"
 for b in 1 2 3; do
  if [ "$b" -eq 2 ]; then
   continue 2
  fi
  echo "$b" 
 done
done
