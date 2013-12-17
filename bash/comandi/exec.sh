#!/bin/bash
# self-exec.sh

echo

echo "Sebbene questa riga compaia UNA SOLA VOLTA nello script, continuerà"
echo "ad essere visualizzata."
echo "Il PID di questo script d'esempio è ancora $$."
#     Dimostra che non viene generata una subshell.

echo "==================== Premi Ctl-C per uscire ===================="

sleep 1

exec exec.sh  #  Inizia un'altra istanza di questo stesso script
          #+ che sostituisce quella precedente.

echo "Questa riga non verrà mai visualizzata"  # Perché?

exit 0
