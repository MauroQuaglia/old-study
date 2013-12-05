# chattr
# Modifica gli attributi del file. Ha lo stesso effetto di chmod, ma con sintassi ed opzioni diverse.

# chattr +i nomefile contrassegna quel file come immodificabile. 
# Il file non può essere in alcun modo modificato, soggetto a link o cancellato, neanche da root. 
# Questo attributo può essere impostato o rimosso solo da root.

chattr +i text2.txt

lsattr text2.txt
