# Inserische una riga vuota dopo una riga più corta di 50 caratteri.
# Utilizzo: $0 <FILE-DI-TESTO

MAX_LENGTH=5

while read line
do
 echo "[$line]"
 if [[ "${#line}" -lt "$MAX_LENGTH"  ]] 
  then echo
 fi
done


