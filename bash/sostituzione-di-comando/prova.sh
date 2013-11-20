# Se lo lancio dalla cartella in cui lo script è definito sono uguali.
# Se lo lancio da un altro punto no...
# Esempio;

# bash sostituzione-di-comando/prova.sh
script_name=`basename $0`
echo "Script name: [$script_name]" #  [prova.sh]
echo "---------------------------"
echo "Dollaro zero: [$0]" # [sostituzione-di-comando/prova.sh]

