# Lunghezza della sottostringa verificata nella parte iniziale della stringa.
STRING="abcABCDEF123"

echo `expr match "$STRING" 'abc[A-Z]*'` # 9
echo `expr "$STRING" : 'abc[A-Z]*'` # 9

