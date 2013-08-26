# "
# '

# Racchiudere il nome della variabile tra doppi apici "" non interferisce con la sostituzione di variabile. Questo viene chiamato quoting parziale, o anche "quoting debole". 
# L'utilizzo degli apici singoli '' fa sì che il nome della variabile venga interpretato letteralmente, per cui la sostituzione non avverrà. In questo caso si ha il quoting forte".

MY_VAR=0

echo "Quoting debole: MY_VAR=$MY_VAR"
echo 'Quoting forte: MY_VAR=$MY_VAR'

