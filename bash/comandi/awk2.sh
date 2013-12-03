# COME SI USA: awk -f awk2.sh

#BEGIN --> prima dell'elaborazione esegue i begin
#END   --> dopo l'elaborazione esegue gli end

#STRUTTURA DI UN PROGRAMMA awk
#[function <nome-funzione> (<parametri-formali>) { <istruzioni> }]
#...
#[BEGIN { <azione> }]
#[BEGIN { <azione> }]
#...
#<espressione-di-selezione> { <azione> }
#...
#[END { <azione> }]
#[END { <azione> }]
#...

BEGIN { print "Variabili fondamenteli: RS=Record Separator e FS=Field Separator." }
1 {
 if ($0 > 100) 
 {
  print "Stragione"
 }
 else
 {
  print FNR
 }
}
END { print "The End" }




