interCasuale() {

   sintassi() {
      echo    "L'esecuzione senza errori restituisce 0, altrimenti viene"
      echo    "richiamata la funzione sintassi e restituito 1."
   }

   # serve per impostare i default
   local min=${1:-0} #Provare se funziona anche senza i :

   # Verifica che il valore di divisibilePer sia positivo.
   [ ${divisibilePer} -lt 0 ] && divisibilePer=$((0-divisibilePer)) # quindi... non esce?

   # Controllo di sicurezza.
   if [ $# -gt 3 -o ${divisibilePer} -eq 0 -o  ${min} -eq ${max} ]; then # La -o serve per or...verificare
      sintassi
      return 1
   fi


   #  Se min non è esattamente divisibile per $divisibilePer,
   #+ viene ricalcolato.
   if [ $((min/divisibilePer*divisibilePer)) -ne ${min} ] # valore calcolato al volo provare
intervallo=$((max-min))
   let intervallo+=divisibilePer



   #la barra serve per andare a capo..?
   # Registra i risultati statisticamente.
   risultati[interCasualeNum+spiazzamento]=\
$((risultati[interCasualeNum+spiazzamento]+1))

