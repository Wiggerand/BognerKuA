#!/bin/bash

echo "Taschenrechner"

#read -p "Geben Sie bitte eine Zahl ein: " abfrage1
#echo "Die erste zahl lautet: $abfrage1"
#read -p "Geben Sie bitte eine zweite Zahl ein: " abfrage2
#echo "Die zweite Zahl lautet: $abfrage2"

#erg1=$((abfrage1 + abfrage2))
#echo "Das Ergebnis lautet: $erg1"
runde="0"
zahl="1"
while [[ 1 ]]; do
	read -p "Geben Sie bitte die $zahl. Zahl ein: " counter
	echo ""
	echo "--------------------------"
runde=$((runde+1))
zahl=$((zahl+1))
echo "Das ist der $runde. durchlauf der Schleife!!"

if [[ $counter = "exit" ]]; then
	break
fi

done