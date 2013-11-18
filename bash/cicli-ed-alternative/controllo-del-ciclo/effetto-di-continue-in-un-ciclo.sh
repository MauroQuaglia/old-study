let i=0
while [[ $i -lt 10 ]]; do
 ((i++))
 if [[ $i -eq $1 ]]; then 
  continue
 fi
 echo "[$i]"
done
