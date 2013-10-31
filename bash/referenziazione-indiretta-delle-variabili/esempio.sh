# Ipotizziamo che il valore di una variabile sia il nome di una seconda variabile. 

lettera="Z"
a=lettera

echo "${lettera}"	

#In effetti questo è possibile e prende il nome di referenziazione indiretta. Viene utilizzata l'insolita notazione eval var1=\$$var2.
