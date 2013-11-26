#useradd, userdel
clear

user="mq"

sudo useradd "$user" 
echo "Aggiunto utente [$user]"

echo "Contenuto del file passwd"
cat /etc/passwd

read

sudo userdel "$user" 
echo "Eliminato utente [$user]"

echo "Contenuto del file passwd"
cat /etc/passwd






