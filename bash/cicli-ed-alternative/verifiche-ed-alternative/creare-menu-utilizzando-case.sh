clear

echo "Scegli un programmatore tra:"
echo "Antonio [G]anci"
echo "Andrea [F]rancia"

read programmer

case "$programmer" in
	"G" | "g" )
		echo "Antonio Ganci da Alba con furore..."
		;;
	"F" | "f" )
		echo "Andrea Francia da Trivolzio col furgone..."
		;;
	* )
		echo "Non ho parole..."
		;;
esac
