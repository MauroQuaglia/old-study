#UTILIZZANDO LO STESSO SEME RANDOM RIPETE LA STESSA SERIE DI NUMERI!!!

lanci=10000

seme=1
RANDOM=$seme

>> test1.txt

declare -i count=0
while [[ count -lt $lanci ]]
do
 echo $RANDOM >> test1.txt
 count+=1
done


>> test2.txt

declare -i count=0
while [[ count -lt $lanci ]]
do
 echo $RANDOM >> test2.txt
 count+=1
done

