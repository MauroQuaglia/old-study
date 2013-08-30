#!/bin/bash

#Riunisco data1.txt e data2.txt nell'archivio data.tar.
#La lettera c indica “crea”, mentre f sta per “file”.
tar cf data.tar {data1,data2}.txt

SUCCESS=0
ERROR=65

if [ -z "$1" ] # $1: nome del file che gli passo. -z: se la stringa è di 0 caratteri il valore è true.
then
  echo "Uso data.tar!"
fi
