#!/bin/bash
#schleife.sh

if [[ $1 ]]
then
        abfrage=$1
else
        read -p "Ihre Eingabe: " abfrage
        echo "Die Eingabe lautet: $abfrage"
fi


if [[ -e $abfrage ]]
then
        echo "Der Eintrag ist vorhanden: $abfrage"
else
        echo "Die Datei ist nicht vorhanden"
fi


while [[ $eingabe -ne 'q' || $eingabe = -e ]]
do
	read -p "Bitte Eingabe machen: " eingabe
	echo $eingabe
done
