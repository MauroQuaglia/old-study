print()
{
COMMAND="${!1}"
echo "$1: [$COMMAND] - $2"
}

print "BASH" "Percorso dell'eseguibile Bash."
print "BASH_ENV" "Puntatore al file di avvio di Bash."
print "BASH_SUBSHELL" "Livello di annidamento delle subshell."
print "BASH_VERSINFO[0]" "Numero della major version."
print "BASH_VERSINFO[1]" "Numero della minor version."
print "BASH_VERSINFO[2]" "Numero del patch level"

# BASH_VERSINFO[3] = 1                      # Nr. della build version.
# BASH_VERSINFO[4] = release                # Stato della release.
# BASH_VERSINFO[5] = i386-redhat-linux-gnu  # Architettura.
                                            # (uguale a $MACHTYPE).



