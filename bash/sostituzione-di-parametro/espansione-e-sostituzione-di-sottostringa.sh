#Espansione di variabile / Sostituzione di sottostringa

var="ABCDEFGAHILMOPQRSTUVZ"
echo "${var:0}"
echo "${var:1}"
echo "${var:2}"
echo "${var:0:5}"
echo "${var:0:6}"
echo "${var:4:5}"

    
   
#${var/Modello/Sostituto}
echo "${var/A/X}" # La prima occorrenza di Modello in var viene rimpiazzata da Sostituto.
echo "${var/A}" # Se si omette Sostituto allora la prima occorrenza di Modello viene rimpiazzata con niente, vale a dire, cancellata.

#${var//Modello/Sostituto}
echo "${var//A/X}" # Tutte le occorrenze di Modello in var vengono rimpiazzate da sostituto.
echo "${var//A}" # ...cancellate.
