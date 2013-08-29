# {,} - Non è consentito alcuno spazio tra le parentesi a meno che non sia quotato.

# Con cat serve per concatenare più file.
cat {messages.txt,messages.txt} > double-messages.txt # Concatena i file in un file unico.

# Serve anche per copiare un file.
cp messages.{txt,backup} # Copia "messages.txt" in "messages.backup"

# Espansioni multiple.
echo {A,B}{1,2,3} #A1 A2 A3 B1 B2 B3
