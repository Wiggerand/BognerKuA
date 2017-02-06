#!/bin/bash
#test.sh
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


#if [[ -e $abfrage ]]
 #then
#	echo "Der Eintrag ist vorhanden: "$abfrage
#else
#	read -p "Möchten Sie die Datei erstellen j/n?" neu
#	if [[ $neu == 'j' ]]; then
#		touch $abfrage
#	else
#	echo "Die Datei ist nicht vorhanden und soll auch nicht erstellt werden!"
#
#	fi


#fi
