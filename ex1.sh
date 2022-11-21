#!/bin/bash

if ! [ -f $1 ]; then
	echo "$1 n'est pas un fichier."
elif ! [ -d $2 ]; then
	echo "$2 n'est pas un repertoire"
elif ! [ -e $1 ]; then
	echo "$1 n'existe pas"
elif ! [ -e $2 ]; then
	echo "$2 n'existe pas."
else	
	mv $1 $2
fi
