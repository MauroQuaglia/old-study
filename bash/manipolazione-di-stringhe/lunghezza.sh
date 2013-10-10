STRINGA="a b c"

echo ${#STRINGA}
echo `expr length "$STRINGA"`
echo `expr "$STRINGA" : '.*'`
