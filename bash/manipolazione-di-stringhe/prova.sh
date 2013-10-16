#!/bin/bash
# getopt-simple.sh
# Autore: Chris Morgan
# Usato in Guida ASB con il suo consenso.


semplice_getopt()
{
    echo "semplice_getopt()"
    echo "I parametri sono '$*'"
    until [ -z "$1" ]
    do
      echo "Elaborazione parametro di: '$1'"
      if [ ${1:0:1} = '/' ]
      then
          tmp=${1:1}               # Elinina le '/' iniziali . . .
          parametro=${tmp%%=*}     # Estrae il nome.
          valore=${tmp##*=}        # Estrae il valore.
          echo "Parametro: '$parametro', valore: '$valore'"
          eval $parametro=$valore
      fi
      shift
    done
}

# Passiamo tutte le opzioni a semplice_getopt().
semplice_getopt $*

echo "verifica '$verifica'"
echo "verifica2 '$verifica2'"

exit 0

---

sh getopt_example.sh /verifica=valore1 /verifica2=valore2

I parametri sono '/verifica=valore1 /verifica2=valore2'
Elaborazione parametro di: '/verifica=valore1'
Parametro: 'verifica', valore: 'valore1'
Elaborazione parametro di: '/verifica2=valore2'
Parametro: 'verifica2', valore: 'valore2'
verifica 'valore1'
verifica2 'valore2'
