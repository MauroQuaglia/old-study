# -x export

# Dichiara la variabile come esportabile al di fuori dell'ambiente dello script stesso.
# Il comando export rende disponibili le variabili a tutti i processi figli generati dallo script in esecuzione o dalla shell.

declare -x var1="esportabile" # è come fare export var1
var2="non esportabile"



