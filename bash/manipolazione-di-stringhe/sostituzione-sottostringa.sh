# ${stringa/sottostringa/sostituto}
# Sostituisce la prima occorrenza di $sottostringa con $sostituto.

STRING="abc123abc123"
echo "${STRING/123/XXX}" # abcXXXabc123

# ${stringa//sottostringa/sostituto}
# Sostituisce tutte le occorrenze di $sottostringa con $sostituto.

echo "${STRING//123/XXX}" # abcXXXabcXXX

# ${stringa/#sottostringa/sostituto}
# Se $sottostringa viene verificata all'inizio di $stringa, allora $sostituto rimpiazza $sottostringa.

echo "${STRING/#abc/XXX}" #XXX123abc123
echo "${STRING/#123/XXX}" #abc123abc123

# ${stringa/%sottostringa/sostituto}
# Se $sottostringa viene verificata alla fine di $stringa, allora $sostituto rimpiazza $sottostringa.

echo "${STRING/%abc/XXX}" #abc123abc123
echo "${STRING/%123/XXX}" #abc123abcXXX

