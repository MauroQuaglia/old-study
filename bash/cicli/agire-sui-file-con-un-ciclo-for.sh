cd prova
for file in * #Bash esegue l'espansione del nome del file nelle espressioni che riconoscono il globbing.
do
  ls -l "$file"  # Elenca tutti i file in $PWD (directory corrente).
  #  Ricordate che il carattere jolly  "*" verifica tutti i file,
  #+ tuttavia, il "globbing" non verifica i file i cui nomi iniziano
  #+ con un punto.
done
