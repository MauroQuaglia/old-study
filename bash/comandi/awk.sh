# Awk suddivide ogni riga dell'input che gli è stato passato in campi. 
# Un campo è una stringa di caratteri consecutivi separati da spazi, anche se esistono opzioni per modificare il delimitatore. 

clear

# print

awk '{print $1}' "/etc/passwd"

echo "uno due tre" | awk '{print $3} {print $1}' # tre uno

# variabili
let a=1;
awk '{tot=$a+1 END print tot}'


echo "-----------------------"

# http://www.hcs.harvard.edu/~dholland/computers/awk.html
