# Lunghezza della stringa.
STRING="a b c"

echo ${#STRING} # 5
echo `expr length "$STRING"` # 5
echo `expr "$STRING" : '.*'` # 5
