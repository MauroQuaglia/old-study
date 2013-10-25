var=abcd-1234-defg
echo "[${var}]"

a=${var#*-} # Tolgo tutto fino al primo trattino.
echo "[${a}]" 

b=${var##*-} # Tolgo tutto fino all'ultimo trattino.
echo "[${b}]" 

echo "----------------------------------"

percorso=/home/bozo/idee/pensieri.di.oggi
echo "[${percorso}]"

c=${percorso##/*/} # Tolgo la parte più lunga che va da / a /.
echo "[${c}]" 

d=`basename ${percorso}`
echo "[${d}]"  # Stesso risultato di prima.

e=${percorso%/*.*} # Toglie dalla fine tutto ciò che sta tra . e ..
echo "[${e}]" 

f=`dirname ${percorso}`
echo "[${f}]"  # Stesso risultato di prima.
