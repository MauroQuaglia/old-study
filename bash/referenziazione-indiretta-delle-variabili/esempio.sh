a=lettera
lettera=z

# Referenziazione diretta.
echo "${a}" # lettera
echo "${lettera}" # z

# Referenziazione indiretta.
eval a=\$$a # Dico ad a di seguire tutto il percorso. a -> lettera -> z
echo "${a}" # z

# Oppure basta mettere il ! davanti al nome della variabile e la facciamo finita!
# echo "${!a}" # z




