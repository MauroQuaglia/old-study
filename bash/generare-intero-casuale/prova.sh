#UTILIZZANDO LO STESSO SEME RANDOM RIPETE LA STESSA SERIE DI NUMERI!!!

RANDOM=$$       #  Cambia il seme del generatore di numeri 
                 #+ casuali usando l'ID di processo dello script.

FACCE=6          # Un dado ha 6 facce.
NUMMAX_LANCI=10000 # Aumentatelo se non avete nient'altro di meglio da fare.
lanci=0          # Contatore dei lanci.

tot_uno=0        #  I contatori devono essere inizializzati a 0 perché
tot_due=0        #+ una variabile non inizializzata ha valore nullo, non zero.
tot_tre=0
tot_quattro=0
tot_cinque=0
tot_sei=0

visualizza_risultati ()
{
echo
echo "totale degli uno = $tot_uno"
echo "totale dei due = $tot_due"
echo "totale dei tre = $tot_tre"
echo "totale dei quattro = $tot_quattro"
echo "totale dei cinque = $tot_cinque"
echo "totale dei sei = $tot_sei"
echo
}

aggiorna_contatori()
{
case "$1" in
  0) let "tot_uno += 1";;  
  1) let "tot_due += 1";;
  2) let "tot_tre += 1";;
  3) let "tot_quattro += 1";;
  4) let "tot_cinque += 1";;
  5) let "tot_sei += 1";;
esac
}

echo


while [ "$lanci" -lt "$NUMMAX_LANCI" ]
do
  let "dado1 = RANDOM % $FACCE"
  aggiorna_contatori $dado1
  let "lanci += 1"
done  

visualizza_risultati

exit 0 

#  I punteggi dovrebbero essere distribuiti abbastanza equamente, nell'ipotesi
#+ che RANDOM sia veramente casuale. 
#  Con $NUMMAX_LANCI impostata a 600, la frequenza di ognuno dei sei numeri 
#+ dovrebbe aggirarsi attorno a 100, più o meno 20 circa.
# 
#  Ricordate che RANDOM è un generatore pseudocasuale, e neanche 
#+ particolarmente valido. 

#  La casualità è un argomento esteso e complesso.
#  Sequenze "casuali" sufficientemente lunghe possono mostrare
#+ un andamento caotico e "non-casuale".

# Esercizio (facile):
# ------------------
# Riscrivete lo script per simulare il lancio di una moneta 1000 volte.
# Le possibilità sono "TESTA" o "CROCE". 
