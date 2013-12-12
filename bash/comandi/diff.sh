clear

echo -e "a \n b \n c" > file1.txt
echo -e "a \n c \n b" > file2.txt

diff --side-by-side file1.txt file2.txt

echo "--------------"

echo "diff"
diff file1.txt file2.txt

echo "--------------"

echo "sdiff"
sdiff file1.txt file2.txt

echo "--------------"

echo "wdiff"
wdiff file1.txt file2.txt
