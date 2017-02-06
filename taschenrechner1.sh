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
<<<<<<< HEAD
=======

#Phil
if [[ $1 ]] && [[ `echo "$1" | grep -E ^[[:digit:]]+$` ]]
then
	zahl1=$1
	echo "Die erste Zahl lautet: $zahl1"
else
	zahl1=''
	until [[ `echo "$zahl1" | grep -E ^[[:digit:]]+$` ]]
	do
		read -p "Erste Zahl: " zahl1
	done
	echo "Die erste Zahl lautet: $zahl1"
fi

#read -p "Zweite Zahl: " zahl2

if [[ $2 ]] && [[ `echo "$2" | grep -E ^[[:digit:]]+$` ]]
then
	zahl2=$2
	echo "Die zweite Zahl lautet: $zahl2"
else
	zahl2=''
	until [[ `echo "$zahl2" | grep -E ^[[:digit:]]+$` ]]
	do
		read -p "Zweite Zahl: " zahl2
	done
	echo "Die zweite Zahl lautet: $zahl2"
fi

ergebnis=$((zahl1+zahl2))

echo "Zwischenergebnis 2: " $ergebnis

count=4

while [[ $zahlx != 'exit' ]] 
do
	

	if [[ `echo "$zahlx" | grep -E ^[[:digit:]]+$` ]]
	then
		read -p "$count. Zahl: " zahlx
		ergebnis=$((ergebnis+zahlx))
		echo "Zwischenergebnis $count: " $ergebnis
		count=$((count+1))
	else
		zahlx=''
		until [[ `echo "$zahlx" | grep -E ^[[:digit:]]+$` ]]
		do
			if [[ $zahlx = 'exit' ]]
			then
				break
			else
				count=$((count-1))
				read -p "$count. Zahl: " zahlx
				
				ergebnis=$((ergebnis+zahlx))
				echo "Zwischenergebnis $count: " $ergebnis
				count=$((count+1))
				
			fi
			
		done
		
	fi
done

echo "Endergebnis lautet:" $ergebnis". Das Programm wurde beendet."
>>>>>>> 4ecba10b92bb5b299593aea1b5a172341828f115
