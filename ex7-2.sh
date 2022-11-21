#!/bin/bash

nom=`ls -l | grep '^-r' | cut -d" " -f11`
for a in $nom
do
	if [ $a = $1 ]; then
		if [ -f $a ]; then
			tailles=`ls -l | grep -a $a | cut -d" " -f5`
			lien=`ls -l | grep -a $a | cut -d" " -f2`
			echo "le fichier a pour nom '$1', sa taille est de $tailles octets et son nombre de liens est de $lien"
		else
			echo "$1 n'est pas un fichier."
			exit
		fi
	fi
done
