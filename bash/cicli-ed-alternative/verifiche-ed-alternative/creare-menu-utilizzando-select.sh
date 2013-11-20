echo 'Scegli il tuo programmatore preferito: '
# se voglio posso reimpostare il prompt che di default è PS3.
#PS3='Scegli il tuo ortaggio preferito: '# Imposta la stringa del prompt.


select programmer in "MQ" "AF" "AG"
do
 echo "Il tuo programmatore preferito è... $programmer!"
 break
done

