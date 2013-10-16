for f in *.txt
do
 mv -f "$f" ${f%.txt}.TXT
done
