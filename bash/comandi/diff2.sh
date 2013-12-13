clear

(mkdir -p diffprova1; cd diffprova1; echo "abc" > file1.txt; echo "123" > file2.txt)
(mkdir -p diffprova2; cd diffprova2; echo "acb" > file1.txt; echo "125" > file2.txt)

diff diffprova1 diffprova2

