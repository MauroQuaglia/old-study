for nomefile in *.$1
do
 mv $nomefile ${nomefile%$1}$2
done
