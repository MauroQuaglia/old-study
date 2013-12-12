ALTEZZA=100
LARGHEZZA=100

# Visualizzazione di un dialog.
echo "Ciao, sono il testo del dialog!" > text-dialog.txt
gdialog --title "Q-Dialog" --textbox text-dialog.txt $ALTEZZA $LARGHEZZA

# Salvare l'input in un file.
gdialog --title "Input Utente" --inputbox "Prego, inserisci una parola:" $ALTEZZA $LARGHEZZA 2>> save-data.txt
