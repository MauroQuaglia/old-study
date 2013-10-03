RED='\e[0;31m'
NO_COLOR='\e[0m'

print()
{
COMMAND="${!1}"

if [[ -z "$COMMAND" ]]
then 
 echo -e "$1: [$COMMAND] - ${RED}$2${NO_COLOR}"
else
 echo "$1: [$COMMAND] - $2"
fi
}

print_groups()
{
print "GROUPS" "Array dei numeri id dei gruppi a cui appartiene l'utente corrente."

for ((i=0; i<"${#GROUPS[@]}"; i++)) 
do
 print "GROUPS[$i]" "Id del gruppo in posizione $i dell'array." 
done
}

print "BASH" "Percorso dell'eseguibile Bash."
print "BASH_ENV" "Puntatore al file di avvio di Bash."
print "BASH_SUBSHELL" "Livello di annidamento delle subshell."
print "BASH_VERSINFO[0]" "Numero della major version."
print "BASH_VERSINFO[1]" "Numero della minor version."
print "BASH_VERSINFO[2]" "Numero del patch level"
print "BASH_VERSINFO[3]" "Numero della versione di build."
print "BASH_VERSINFO[4]" "Stato della release."
print "BASH_VERSINFO[5]" "Architettura."
print "BASH_VERSION" "La versione Bash installata."
print "DIRSTACK" "La locazione più alta dello stack delle directory."
print "EDITOR" "Editor di testo predefinito."
print "EUID" "Identificativo associato all'identità assunta dall'utente."
print "FUNCNAME" "Nome della funzione corrente."
print "GLOBIGNORE" "Elenco di nomi di file da escludere dalla ricerca nel globbing."
print_groups
print "HOME" "Directory home dell'utente."
print "HOSTNAME" "Nome host del sistema."
print "HOSTTYPE" "Tipo di macchina."
print "IFS" "Internal Field Separator. Come Bash riconosce le singole parole, nell'interpretazione delle stringhe."
   


                                            
                                            

