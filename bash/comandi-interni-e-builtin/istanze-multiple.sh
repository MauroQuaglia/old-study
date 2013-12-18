pid=$$
pids=( $pid )







PID=$(pidof sh $0)   # ID dei processi delle diverse istanze dello script.
P_array=( $PID )     # Inseriti in un array (perché?).
echo $PID            # Visualizza gli ID dei processi genitore e figlio.
let "instanze = ${#P_array[*]} - 1"   # Conta gli elementi, meno 1.
                                      # Perché viene sottratto 1?
echo "$instanze instanza(e) dello script in esecuzione."
echo "[Premete Ctl-C per terminare.]"; echo


sleep 1              # Attesa.
sh $0                # Provaci ancora, Sam.

exit 0               # Inutile: lo script non raggiungerà mai questo punto.
                     # Perché?

#  Dopo aver terminato l'esecuzione con Ctl-C,
#+ saranno proprio tutte "morte" le istanze generate dallo script?
#  In caso affermativo, perché?

# Nota:
# ----
# Fate attenzione a non tenere in esecuzione lo script troppo a lungo.
# Potrebbe, alla fine, esaurire troppe risorse di sistema.

#  Uno script che genera istanze multiple di sé stesso
#+ rappresenta una tecnica di scripting consigliabile.
#  Siete d'accordo oppure no?
