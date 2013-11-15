#E' solo l'ultimo exit status che conta! Fa tre cose insieme!
while 
 echo "ciao" #1 
 echo "secondo echo" #2
 [ "$var1" != fine ] #3 
do
 echo "Scrive fine per terminare..."
  read var1
done
