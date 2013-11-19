is_empty()
{
 [[ -z "$1" ]]
}

if is_empty "$1"; then
 echo "La stringa di input è vuota!"
fi











