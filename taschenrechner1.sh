#!/bin/bash
Noch nicht fertig von arthur
read -p "Geben Sie die erste Zahl ein: " zahl1

if [[  'echo "$zahl1" | grep [[:digit]]' ]]
	then
	echo "Die erste Zahl ist eine $zahl1"

	else
	echo "Falsche Eingabe."

fi

erg=zahl1
zaehler=1

read -p "Geben Sie eine weitere Zahl ein, oder beendem Sie mit exit: " eingabe

while [[ $eingabe -ne "exit" ]]
	do

		((zaehler ++))
		erg=$((erg+eingabe))
		echo "Bisher wurden $zaehler Zahlen eingegeben. Das zwischeergebnis lautet: $erg"
		read -p "Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit. " eingabe
		echo "Das Ergebnis lautet: $erg"
	done



	zahl=0
counter=1
while [[ 1 ]]
do
	read -p "Ihre $counter . Eingabe: " val

	if [[ $val = "exit" ]]; then
		echo "Endergebnis: $zahl. Das Programm wurde beendet."
		break
	elif [[ $val -gt 0 ]]; then
		counter=$((counter + 1))
		zahl=$((zahl + val))
		echo $zahl
	else
		echo "Falsche Eingabe: $val kann nicht addiert werden. Geben Sie ausschließlich Zahlen ein."
	fi
done