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



<<<<<<< HEAD
echo "${lettera}"	
=======
>>>>>>> f51a849fbe4b580a92d3b902aeb6c3e2a7d246cf

