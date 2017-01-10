#!/bin/bash

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
if [[ -e $abfrage ]]
then
	read -p "Der Eintrag ist vorhanden, soll die Datei gelöscht werden j/n?: " del

fi
#else

#	read -p "Möchten Sie die Datei erstellen j/n?" neu
#	if [[ $neu == 'j' ]]; then
#		touch $abfrage
	if [[ $del == 'n' ]]; then
		echo "Datei wurde nicht gelöscht. " 
		elif [[ $del == 'j' ]]; then
			rm $abfrage
			echo "Gelöscht!!"
		fi
		
	

