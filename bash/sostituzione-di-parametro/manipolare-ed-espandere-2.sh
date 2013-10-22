# ${parametro-default}
# ${parametro:-default} L'aggiunta dei : serve solo quando parametro è stato dichiarato, ma non impostato.
# In questo caso non vado a salvare il valore nella varibile
var=
echo "$var" #
echo "${var-A}"  # 
echo "$var" #
echo "${var:-B}" # B
echo "$var" #

echo "${var2-C}"  # C
echo "${var2:-D}" # D

#---------------------------------
# ${parametro=default} 
# ${parametro:=default}  L'aggiunta dei : serve solo quando parametro è stato dichiarato, ma non impostato.
# In questo caso VADO a salvare il valore nella varibile
var3=
echo "$var3" #
echo "${var3=A}"  # 
echo "$var3" #

var4=
echo "$var4" #
echo "${var4:=B}"  # 
echo "$var4" #




var5=${1-"ciao"}
echo "Var5=[$var5]" # ciao

${var6="riciao"}
echo "Var6=[$var6]" #riciao

var7="Pippo"
${var7="ririciao"}
echo "Var7=[$var7]" #Pippo
   
