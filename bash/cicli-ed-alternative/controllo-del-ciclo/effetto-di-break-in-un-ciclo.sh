let i=0
while [[ $i -le 100 ]]; do
 if [[ $i -eq $1 ]]; then 
  break
 fi
 echo "[$i]"
 ((i++))
done
