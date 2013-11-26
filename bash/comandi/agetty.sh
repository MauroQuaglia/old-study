#Il processo di inizializzazione di un terminale utilizza getty o agetty per l'impostazione del login di un utente. Questi comandi non vengono usati negli script di shell. Il loro corrispondente per lo scripting è stty. 
#getty, agetty (programma getty ridotto)
# Getty è quel programma che si occupa di attivare il terminale e iniziare la procedura di accesso. Come dice la pagina di manuale getty(1): «Getty è il secondo dei tre programmi (init(1), getty(1) e login(1)) utilizzati dal sistema per permettere all'utente di accedere». In pratica, il programma Getty si occupa di:

#aprire la linea di terminale e impostare le modalità necessarie;

#emettere l'invito della procedura di accesso;

#ricevere il nominativo usato dall'utente per identificarsi;

