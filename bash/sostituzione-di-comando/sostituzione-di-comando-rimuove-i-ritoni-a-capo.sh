# cd "`pwd`"  # Questo dovrebbe funzionare sempre.
# Tuttavia...
						  
mkdir 'nome di directory con un carattere di a capo finale
'
						  
cd 'nome di directory con un carattere di a capo finale
'
						  
#cd "`pwd`"  # Messaggio d'errore:
# bash: cd: /tmp/file with trailing newline: No such file or directory
						  
#cd "$PWD"   # Funziona bene.
