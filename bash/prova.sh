#!/bin/bash

#  Suggerimento:
#  se non siete sicuri di come certe condizioni verranno valutate,
#+ controllatele con una verifica if.

echo

echo "Verifica \"0\""
if [ 0 ]      # zero
then
  echo "0 è vero."
else
  echo "0 è falso."
fi            # 0 è vero.

echo

echo "Verifica \"1\""
if [ 1 ]      # uno
then
  echo "1 è vero."
else
  echo "1 è falso."
fi            # 1 è vero.

echo

echo "Verifica \"-1\""
if [ -1 ]     # meno uno
then
  echo "-1 è vero."
else
  echo "-1 è falso."
fi            # -1 è vero.

echo

echo "Verifica \"NULL\""
if [ ]        # NULL (condizione vuota)
then
  echo "NULL è vero."
else
  echo "NULL è falso."
fi            # NULL è falso.

echo

echo "Verifica \"xyz\""
if [ xyz ]    # stringa
then
  echo "La stringa casuale è vero."
else
  echo "La stringa casuale è falso."
fi            # La stringa casuale è vero.

echo

echo "Verifica \"\$xyz\""
if [ $xyz ]   # Verifica se $xyz è nulla, ma...
              # è solo una variabile non inizializzata.
then
  echo "La variabile non inizializzata è vero."
else
  echo "La variabile non inizializzata è falso."
fi            # La variabile non inizializzata è falso.

echo

echo "Verifica \"-n \$xyz\""
if [ -n "$xyz" ]            # Più corretto, ma pedante.
then
  echo "La variabile non inizializzata è vero."
else
  echo "La variabile non inizializzata è falso."
fi            # La variabile non inizializzata è falso.

echo


xyz=          # Inizializzata, ma impostata a valore nullo.

echo "Verifica \"-n \$xyz\""
if [ -n "$xyz" ]
then
  echo "La variabile nulla è vero."
else
  echo "La variabile nulla è falso."
fi            # La variabile nulla è falso.


echo


# Quando "falso" è vero?

echo "Verifica \"falso\""
if [ "falso" ]              #  Sembra che "falso" sia solo una stringa.
then
  echo "\"falso\" è vero."  # e verifica se è vero.
else
  echo "\"falso\" è falso."
fi            # "falso" è vero.

echo

echo "Verifica \"\$falso\""  # Ancora variabile non inizializzata.
if [ "$falso" ]
then
  echo "\"\$falso\" è vero."
else
  echo "\"\$falso\" è falso."
fi            # "$falso" è falso.
              # Ora abbiamo ottenuto il risultato atteso.

#  Cosa sarebbe accaduto se avessimo verificato 
#+ la variabile non inizializzata "$vero"?

echo

exit 0


