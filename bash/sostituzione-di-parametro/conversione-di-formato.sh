#!/bin/bash
#  cvt.sh:
#  Converte tutti i file immagine MacPaint, in una directory data, 
#+ nel formato "pbm".

#  Viene utilizzato l'eseguibile "macptopbm" del pacchetto "netpbm",
#+ mantenuto da Brian Henderson (bryanh@giraffe-data.com). 
#  Netpbm di solito è compreso nell'installazione standard della 
#+ maggior parte delle distribuzioni Linux.

OPERAZIONE=macptopbm
ESTENSIONE=pbm          # Nuova estensione dei nomi dei file.

if [ -n "$1" ]
then
  directory=$1      #  Se viene fornito il nome di una directory come 
                    #+ argomento dello script...
else
  directory=$PWD    # Altrimenti viene utilizzata la directory corrente.
fi  
  
#  Si assume che tutti i file immagine nella directory siano dei MacPaint,
#+ con nomi aventi estensione ".mac" 

for file in $directory/*    # Globbing dei nomi dei file.
do
  nomefile=${file%.*c}      #  Toglie l'estensione ".mac" dal nome del file
                            #+ ('.*c' verifica tutto tra '.' e 'c', compresi).
  $OPERAZIONE $file > "$nomefile.$ESTENSIONE"
                            #  Converte e redirige il file con una nuova 
                            #+ estensione.
  rm -f $file               #  Cancella i file originali dopo la conversione.
  echo "$nomefile.$ESTENSIONE"  # Visualizza quello che avviene allo stdout.
done

exit 0

# Esercizio:
# ----------
#  Così com'è, lo script converte "tutti" i file presenti nella
#+ directory di lavoro corrente.
#  Modificatelo in modo che agisca "solo" sui file con estensione ".mac".
