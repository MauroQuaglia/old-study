# {} - Questo costrutto crea una funzione anonima. 
# Tuttavia, a differenza di una normale funzione,e variabili presenti all'interno del blocco rimangono visibili alla parte restante dello script.

a=123
{ a=321; } # Occhio che ci vogliono gli spazi dopo la parentesi e dopo  il ;... {a=321;} non va
echo "a=$a"   # a = 321   (valore di a nel blocco di codice)   
