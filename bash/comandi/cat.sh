echo "Uso normale..."
echo | (cat text.txt text2.txt)
echo "-------------------------------"

echo "Con righe numerate..."
echo | (cat -n text.txt text2.txt)
echo "-------------------------------"

echo "Solo le righe non vuote numerate..."
echo | (cat -b text.txt text2.txt)
echo "-------------------------------"

echo "Caratteri non stampabili..."
echo | (cat -v text.txt text2.txt)
echo "-------------------------------"

echo "Compressione delle righe non vuote..."
echo | (cat -s text.txt text2.txt)
echo "-------------------------------"

