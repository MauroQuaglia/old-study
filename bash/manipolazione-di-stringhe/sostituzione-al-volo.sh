echo "Valore originale:  [$1]"
echo "Tolgo .txt dalla parte iniziale: [${1%.txt}]"


#da provare
      echo "Elaborazione parametro di: '$1'"
      if [ ${1:0:1} = '/' ]
      then
          tmp=${1:1}               # Elinina le '/' iniziali...
          parametro=${tmp%%=*}     # Estrae il nome.
          valore=${tmp##*=}        # Estrae il valore.
          echo "Parametro: '$parametro', valore: '$valore'"
          eval $parametro=$valore
      fi


