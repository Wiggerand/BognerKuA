#!/bin/bash
if [[ $1 ]]; then
	abfrage=$1
else
	#read -p "Ihre Eingabe: " abfrage
	abfrage=''
	#while [[ $abfrage != 'q' ]] && [[ ! -e $abfrage ]]
	until [[ $abfrage = 'q' ]] || [[ -e $abfrage ]]
	do
		read -p "Ihre Eingabe: " abfrage
		echo "Die Eingabe lautet: $abfrage"
	done
	
	
fi

if [[ -e $abfrage ]]
then
	echo "Der Eintrag ist vorhanden: $abfrage"
else
	echo "Die Datei ist nicht vorhanden!"
fi

#Erstellen Sie ein Skript, das einen Parameter entgegennimmt 
#und checkt ob es eine Datei gibt, die so heißt wie der 
#übergebene Parameter.
#Aufruf: ./test.sh test.txt
#Erweiterung: Die Eingabeaufforderung soll solange gezeigt werden, bis der Benutzer ein q eingibt, oder einen vorhandenen Dateinamen.