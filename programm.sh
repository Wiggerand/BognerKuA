#!/bin/bash

read -p "Eingabe machen: " user
if [[ who -u = $user ]]; then
	echo "Jupp"
fi

while [[ condition ]]; do
	#statements
done