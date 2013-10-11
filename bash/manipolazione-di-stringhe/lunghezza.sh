STRING="a b c"

echo ${#STRING}
echo `expr length "$STRING"`
echo `expr "$STRING" : '.*'`
