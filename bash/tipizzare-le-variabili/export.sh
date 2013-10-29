# -x export

# Dichiara la variabile come esportabile al di fuori dell'ambiente dello script stesso.
# Il comando export rende disponibili le variabili a tutti i processi figli generati dallo script in esecuzione o dalla shell.

declare -x var1="esportabile" # è comne fare export var1
var2="non esportabile"

(echo "var1=[${var1}]")
(echo "var2=[${var2}]") # lo vede lo stesso in quanto tutti i processi figli vedono le varibili dei genitori... non c'è bisogno di -x.

# ...devo indagare meglio.


