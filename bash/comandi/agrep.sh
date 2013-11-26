# agrep (approximate grep) grep d'approssimazione, estende le capacità di grep per una ricerca per approssimazione. 
# La stringa da ricercare differisce per un numero specifico di caratteri dalle occorrenze effettivamente risultanti.

echo "Per ricercare in file compressi usare [zgrep], [zegrep] o [zfgrep]."
echo "Funzionano anche per i file normali ma sono più lenti di [grep], [egrep] o [fgrep]."
echo "Sono utili se devo cercare in file misti, alcuni compressi e altri no."
echo "Per la ricerca in file compressi con bzip si usa il comando [bzgrep]".

echo "Risultato di [agrep -2 vua mq-is-empty.sh]:"
agrep -2 vua mq-is-empty.sh  #vu ot a 
