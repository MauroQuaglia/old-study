users=$(awk 'BEGIN{FS=":"}{print $1}' < "/etc/passwd" )

for name in $users
do
  echo "$name"
done

