# Elenco dei file sui quali volete informazioni.

FILE="/usr/sbin/accept /usr/sbin/pwck /usr/sbin/chroot /usr/bin/fakefile /sbin/badblocks /sbin/ypbind"
for file in $FILE
do
 
 if [[ ! -e "$file" ]]; then
  echo "il file [$file] non esiste."
  continue;
 fi
  
 ls -l $file | awk '{ print $9 "; dimensione file: " $5 }'
  
 echo "Nome file: [`basename $file`]" #basename mi da il nome del file pulito di tutto!

 echo "------------------------" 
 whatis `basename $file`   # Informazioni sul file.
 echo "------------------------" 
done  
