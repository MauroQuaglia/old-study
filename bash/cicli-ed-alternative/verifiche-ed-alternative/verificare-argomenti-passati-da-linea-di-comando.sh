case "$1" in
 "")
  echo "Utilizzo: ${0##*/} <nome-file>";;
 -*)
  nome_file=${1/-/.}
  echo "[$nome_file]";;
 *)
  echo "[$1]";;
esac




