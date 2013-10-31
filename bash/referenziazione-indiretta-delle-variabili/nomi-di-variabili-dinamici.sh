isdnMioProviderReteRemota=172.16.0.100
isdnTuoProviderReteRemota=10.0.0.10
isdnServizioOnline="MioProvider"

reteRemota=$(eval "echo \$$(echo isdnMioProviderReteRemota)")
reteRemota=$(eval "echo \$$(echo isdnMioProviderReteRemota)")
reteRemota=$(eval "echo \$isdnMioProviderReteRemota")
reteRemota=$(eval "echo $isdnMioProviderReteRemota")

echo "$reteRemota"   # 172.16.0.100

# ================================================================

#  E fa ancor meglio.

#  Considerate il frammento seguente dove viene inizializzata una 
#+ variabile di nome getSparc, ma manca getIa64:

verMirrorArch () { 
  arch="$1";
  if [ "$(eval "echo \${$(echo get$(echo -ne $arch | sed 's/^\(.\).*/\1/g' | tr 'a-z' 'A-Z'; echo $arch | sed 's/^.\(.*\)/\1/g')):-falso}")" = vero ]
  then
     return 0;
  else
     return 1;
  fi;
}

getSparc="vero"
unset getIa64
verMirrorArch sparc
echo $?        # 0
               # Vero

verMirrorArch Ia64
echo $?        # 1
               # Falso

# Note:
# ----
#  Anche la parte del nome della variabile da-sostituire viene costruita 
#+ esplicitamente.
#  I parametri passati a verMirrorArch sono in lettere minuscole.
#  Il nome della variabile è formato da due parti: "get" e "Sparc" . . .
