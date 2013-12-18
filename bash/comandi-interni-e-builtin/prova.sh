#!/bin/bash
# printf demo

PI=3,14159265358979                           # Vedi nota a fine listato
CostanteDecimale=31373
Messaggio1="Saluti,"
Messaggio2="un abitante della Terra."

echo

printf "Pi con 2 cifre decimali = %1.2f" $PI
echo
printf "Pi con 9 cifre decimali = %1.9f" $PI  #  Esegue anche il corretto
                                              #+ arrotondamento.

printf "\n"                                   #  Esegue un ritorno a capo,
                                              #  equivale a 'echo'.

printf "Costante = \t%d\n" $CostanteDecimale  #  Inserisce un carattere 
                                              #+ di tabulazione (\t)

printf "%s %s \n" $Messaggio1 $Messaggio2

echo

# ==================================================#
# Simulazione della funzione sprintf del C.
# Impostare una variabile con una stringa di formato.

echo

Pi12=$(printf "%1.12f" $PI)
echo "Pi con 12 cifre decimali = $Pi12"

Msg=`printf "%s %s \n" $Messaggio1 $Messaggio2`
echo $Msg; echo $Msg

#  Ora possiamo disporre della funzione 'sprintf' come modulo
#+ caricabile per Bash. Questo, però, non è portabile.

exit 0

#  N.d.T. Nella versione originale veniva usato il punto come separatore
#+ decimale. Con le impostazioni locali italiane il punto avrebbe
#+ impedito il corretto funzionamento di printf.
