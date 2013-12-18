pid=$(pidof sh $0)
pids+=($pid)

echo "numero: [${#pids[0]}]"

sleep 3

sh $0

