# ${parametro-default}
# La variabile var non viene valorizzata.
echo "${var-MQ}" # MQ
echo "$var" # 

# ${parametro=default} 
# La variabile var viene inizializzata.
echo "${var2=MQ2}" # MQ2
echo "$var2" # MQ2 

# ------------------------------------------------

# Nel caso la variabile sia impostata ma non valorizzata bisogna aggiungere i :.

# ${parametro:-default}
# La variabile var non viene valorizzata.
var3=
echo "${var3:-MQ3}" # MQ3
echo "$var3" # 

# ${parametro=default} 
# La variabile var viene inizializzata.
var4=
echo "${var4:=MQ4}" # MQ4
echo "$var4" # MQ4 




