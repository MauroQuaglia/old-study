v1=`< text.txt`
echo "[$v1]"

echo "---------------------"

# Con cat viene generato un nuovo processo... quindi in questo modo risulta un po' più lento.
v2=`cat text.txt`
echo "[$v2]"

echo "---------------------"


# il $() ha preso il posto degli ``

v3=$(< text.txt)
echo "[$v3]"

echo "---------------------"

v4=$(cat text.txt)
echo "[$v4]"



# la differenza è la versione della barra invera...
echo `echo \\` #
echo $(echo \\) # \


# la $() consente anche l'annidamento di istruzioni...
# quindi è più flessibile!

a=$(wc -w $(ls -l | awk '{print $9}'))
echo "$a"

echo "--------------------------------"

# lo stesso precedente con `` non funziona...


	
