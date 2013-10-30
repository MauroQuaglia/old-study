foo ()
{
FOO="bar"
}

bar ()
{
foo
echo $FOO
}

bar   # Visualizza bar.

Tuttavia . . .

foo (){
declare FOO="bar"
}

bar ()
{
foo
echo $FOO
}

bar  # Non visualizza niente.


# Grazie a Michael Iatrou, per il chiarimento.
