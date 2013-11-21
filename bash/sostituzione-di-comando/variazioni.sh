# ``,  (()), let.

 
a=`expr $a + 3` # expr esegue l'espansione.
echo $a


Variazioni

Espansione aritmetica con apici inversi (spesso usata in abbinamento con expr)

    z=`expr $z + 3`          # Il comando 'expr' esegue l'espansione.

Espansione aritmetica con doppie parentesi, ed uso di let

    L'uso degli apici inversi (apostrofi inversi) nell'espansione aritmetica è stato sostituito dalle doppie parentesi -- ((...)) e $((...)) -- e anche dal convenientissimo costrutto let.

    z=$(($z+3))
    z=$((z+3))                                     #  Corretto anche così.
    					       #  All'interno delle doppie
    					       #+ parentesi la dereferenziazione
    					       #+ del parametro è opzionale.
    										
    # $((ESPRESSIONE)) è un'espansione aritmetica. #  Non deve essere confusa con
    					       #+ la sostituzione di comando.
    										
    										
    										
    # Nelle doppie parentesi è possibile effettuare operazioni senza assegnamento.
    										
      n=0
      echo "n = $n"                                # n = 0
    										
      (( n += 1 ))                                 # Incremento.
    # (( $n += 1 )) non è corretto!
      echo "n = $n"                                # n = 1
    										
    										
    let z=z+3
    let "z += 3"  #  Il quoting consente l'uso degli spazi nell'assegnamento
    	      #+ di variabile.
    	      #  L'operatore 'let' in realtà esegue una valutazione aritmetica,
    	      #+ piuttosto che un'espansione.
