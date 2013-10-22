#${parametro?msg_err}
# Se il parametro è impostato viene ustao, altrimenti viene visualizzato un messaggio di errore.

par1=`pwd`
echo ${par1?"Impostalo!"} # /home/xpuser/studio/mauro-quaglia/studio/bash/sostituzione-di-parametro

par2=
echo ${par2?"Impostalo!"} # Non visualizza niente. par2 è impostato ma non fa nulla.

echo ${par3?"Impostalo!"} # [messagi-di-errore.sh: line 10: par3: Impostalo! ] Dato che par3 non è impostato viene visualizzato il messaggio di errore.
# Qua lo script finisce perché esce. Abbiamo exit code 1.


