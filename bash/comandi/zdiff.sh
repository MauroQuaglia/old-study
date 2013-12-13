clear

(echo "abc" > zfile1.txt; echo "acb" > zfile2.txt; gzip zfile1.txt zfile2.txt)
zdiff zfile1.txt.gz zfile2.txt.gz

