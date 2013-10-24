error_no_arguments=65

# Controlla se sono forniti dei parametri allo script.
if [ $# -eq 0 ] # Va bene anche ${#*} o ${#@}.
 then
  echo "Passa gli argomenti!"
  exit $error_no_arguments
fi

echo "Numero di argomenti passati allo script = ${#@}"
echo "Numero di argomenti passati allo script = ${#}"
echo "Numero di argomenti passati allo script = ${#*}"

