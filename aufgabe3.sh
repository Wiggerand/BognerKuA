#Speichern Sie das Datum in einer Variablen date.
#Speichern Sie den ersten Parameter nach der Eingabeaufforderung in die Variable topic.
#Erzeugen Sie einen Dateinamen, nach dem folgenden Muster: /home/wiggerand/<parameter>notes.txt
#Nutzen Sie die Variable topic und die systemimmanente Variable für das Home Verzeichnis des
#aktuellen Users.
#Erzeugen Sie die Eingabeaufforderung: "Notiz:" und speichern Sie die Eingabe des Users imn der Datei mit #Datumangabe.

#!/bin/bash

date1=$(date +"%d.%m.%Y %H:%M")
#read -p "Machen Sie bitte eine Eingabe:" topic 
#echo "$date1: $topic" >> /home/wiggerand/notes.txt
read -p "Geben Sie den Ordner an wo gespeichert werden soll: " folder

if [[ -d "/home/wiggerand/$folder" ]]; then
	 cd /home/wiggerand/$folder
else
	mkdir /home/wiggerand/$folder
fi

read -p "Geben Sie bitte ihre Notiz ein: " topic

echo "$date1: $topic" >> /home/wiggerand/$folder/note.txt