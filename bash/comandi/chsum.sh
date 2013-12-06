clear

echo "SUM"
sum empty-file.txt
sum not-empty-file.txt
echo "------------------------------"

echo "CKSUM"
cksum empty-file.txt
cksum not-empty-file.txt
echo "------------------------------"

echo "MD5SUM"
md5sum empty-file.txt
md5sum not-empty-file.txt
echo "------------------------------"

echo "SHA1SUM"
sha1sum empty-file.txt
sha1sum not-empty-file.txt
echo "------------------------------"
