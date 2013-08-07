# echo -e serve per fargli capire i ritorni a capo.

INFORMATION="Tu sei: `whoami`\nLa data corrente è: `date`\nLe informazioni di sistema sono: `uptime`"

echo -e $INFORMATION
echo -e $INFORMATION > spy-log.txt
