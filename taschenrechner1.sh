#!/bin/bash
#Noch nicht fertig von arthur
#Programmieren Sie einen Taschenrechner. In einer Eingabeforderung wird der Benutzer aufgefordert eine Zahl einzugeben. 
#Diese Zahl wird zur vorher eingegebenen Zahl hinzuaddiert. 
#Das Ergebnis wird ausgegeben und der Benutzer wird erneut zur Eingabe einer Zahl aufgefordert. 
#Das Endergebnis wird ausgegeben, wenn der User die Zeichenfolge 'exit' eingibt. 
#Die erste Eingabeaufforderung lautet: 'Geben Sie die 1. Zahl ein:'. 
#Die fünfte Eingabeaufforderung lautet:'Bisher wurden 4 Zahlen eingegeben. Das Zwischenergebnis lautet: 22. 
#Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit.' 
#Nach der Eingabe von exit lautet die Konsolenausgabe: 'Endergebnis: 33. 
#Das Programm wurde beendet.' 
#Wird etwas anderes als eine Zahl eingegeben gibt das Programm aus: 'Falsche Eingabe: xxx kann nicht addiert werden. 
#Geben Sie ausschließlich Zahlen ein.'

#read -p "Geben Sie die erste Zahl ein: " zahl1

#if [[  'echo "$zahl1" | grep [[:digit]]' ]]
#	then
#	echo "Die erste Zahl ist eine $zahl1"

#	else
#	echo "Falsche Eingabe."

#fi

#erg=zahl1
#zaehler=1

#read -p "Geben Sie eine weitere Zahl ein, oder beendem Sie mit exit: " eingabe

#while [[ $eingabe -ne "exit" ]]
#	do

#		((zaehler ++))
#		erg=$((erg+eingabe))
#		echo "Bisher wurden $zaehler Zahlen eingegeben. Das zwischeergebnis lautet: $erg"
#		read -p "Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit. " eingabe
#		echo "Das Ergebnis lautet: $erg"
#	done


#Bogners variante
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
