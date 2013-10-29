# -f funzioni

f1()
{
echo "ciao"
}

f2()
{
echo "ciao"
}

# declare -f senza alcun argomento, elenca tutte le funzioni precedentemente definite in quello script.
declare -f

# elenca solo la funzione specificata
declare -f f1

