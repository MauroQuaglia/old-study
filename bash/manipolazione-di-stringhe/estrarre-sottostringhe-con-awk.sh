STRING="abc123"

# Bash numera il primo carattere della stringa con '0'.
echo "${STRING:1:4}" # dalla posizione 1 per 4 caratteri.

# Awk  numera il primo carattere della stringa con '1'.
# substr(stringa,pos,lunghezza)
echo | awk "{ print substr(\"$STRING\",2,4) }"

