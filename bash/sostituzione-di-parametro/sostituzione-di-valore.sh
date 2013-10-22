# ${parametro+altro_valore}
# Se parametro è impostato, assume altro_valore, altrimenti viene impostato come stringa nulla.

var=${par1+xyz}
echo "[$var]" # Torna la stringa nulla perché par1 non è impostato. 

par2=
var2=${par2+xyz}
echo "[$var2]" # Torna xyz perché par2 è impostato. 

par3=123
var3=${par3+xyz}
echo "[$var3]" # Torna xyz perché par3 è impostato. 

# ${parametro:+altro_valore}
# I : servono solo quando parametro è stato dichiarato, ma non impostato.

v=${p1:+xyz}
echo "[$v]" # Come sopra.

p2=
v2=${p2:+xyz}
echo "[$v2]" # Questo cambia. Torna la stringa vuota.

p3=123
v3=${p3+xyz}
echo "[$v3]" # Come sopra.

    
