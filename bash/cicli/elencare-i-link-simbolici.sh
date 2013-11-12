for file in *
do
 if [[ -h "$file" ]]; then
  echo "$file"
 fi
done > link.txt # Posso anche redirigere l'output in un file.

echo "-------------------------"

for file in "$(find -type l)" # Se non si usa il quoting i nomi dei file contenenti spazi non vengono visualizzati correttamente.
do
 echo "$file"
done

echo "-------------------------"

# Sarebbe sufficiente questo.
echo "$(find -type l)"






