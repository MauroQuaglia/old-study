# Uso della funzione rand() di awk.

# Notate che srand() ricalcola il seme del generatore di numeri di awk.
# Posso anche ometteral e funziona lo stesso ma è meglio ricalcolare il seme tutte volte.
SCRIPTAWK='{srand();print rand()}'
echo | awk "$SCRIPTAWK"

