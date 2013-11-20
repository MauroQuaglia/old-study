files=`ls *.sh`
for file in $files
do
 echo "[$file]"
done

echo "----------------------"
# forma equivalente/alternativa
files2=$(ls *.sh)
for file in $files2
do
 echo "[$file]"
done


