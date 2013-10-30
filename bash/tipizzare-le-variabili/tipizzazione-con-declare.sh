foo ()
{
FOO="bar"
}

bar ()
{
foo
echo $FOO
}

# Visualizza bar

Tuttavia . . .

foo (){
declare FOO="bar"
}

bar ()
{
foo
echo $FOO
}

# Non visualizza niente.

