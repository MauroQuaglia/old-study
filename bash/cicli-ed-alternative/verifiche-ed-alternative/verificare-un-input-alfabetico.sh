is_empty()
{
 [[ -z "$1" ]]
}

start_with_letter()
{
case "$1" in
 [a-zA-Z]* )
  echo "La stringa di input inizia con una lettera!" ;;
 * )
  echo "La stringa di input non inizia con una lettera!" ;;
esac
}

start_with_letter "$1"












