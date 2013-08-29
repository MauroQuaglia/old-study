# ()

# () - gruppo di comandi.
# Un elenco di comandi racchiuso da parentesi dà luogo ad una subshell.
# Le variabili all'interno delle parentesi, appartenenti quindi alla subshell, non sono visibili dallo script. 
# Il processo genitore, lo script, non può leggere le variabili create nel processo figlio, la subshell.

a=2

(a=1;echo $a) #1

echo $a #2, infatti non sovrascrive il valore precedente, in quanto appartenete al processo figlio.



