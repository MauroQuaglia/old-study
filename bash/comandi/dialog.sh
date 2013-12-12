#!/bin/bash
# dialog.sh: Uso dei widgets 'gdialog'.
# Per l'esecuzione dello script è indispensabile aver installato 'gdialog'.
# Versione 1.1 (corretta il 05/04/05)

# Lo script è stato ispirato dal seguente articolo.
#     "Scripting for X Productivity," di Marco Fioretti,
#      LINUX JOURNAL, Numero 113, Settembre 2003, pp. 86-9.
# Grazie a tutti quelli di LJ.


# Errore di input nel box di dialogo.
E_INPUT=65
# Dimensioni dei widgets di visualizzazione e di input.
ALTEZZA=50
LARGHEZZA=60

# Nome del file di output (composto con il nome dello script).
OUTFILE=$0.output

# Visualizza questo script in un widget di testo.
gdialog --title "Visualizzazione: $0" --textbox $0 $ALTEZZA $LARGHEZZA
