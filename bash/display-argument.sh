echo "$#"
until [ -z "$1" ]
do
 echo "argomento [$1]"
 shift
done
