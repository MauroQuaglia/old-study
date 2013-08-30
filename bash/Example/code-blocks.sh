File=/etc/fstab

# Le variabili all'interno del blocco rimangono visibili da tutto lo script.
{
read riga1
read riga2
} < $File

echo "1a riga di $File è: $riga1"
echo "2a riga di $File è: $riga2"
