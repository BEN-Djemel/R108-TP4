#!/bin/bash

if [ $# -ne 2 ]; then
	echo "veuillez entrer deux paramètres seulement"
else
	depart=$1
	montableau=()
	while [ $depart -ne $2 ]
	do
		montableau+=($depart)
		depart=`expr $depart + 1`
	done
	montableau+=($2)
	echo ${montableau[@]}
fi
