#!/bin/bash

nom=`ls -l | grep '^-r' | cut -d" " -f11`
if [ $nom = 'testfic' ]; then
	taille=`ls -l | grep -a $nom | cut -d" " -f5`
	liens=`ls -l | grep -a $nom | cut -d" " -f2`
	echo "Le fichier a pour nom '$nom', sa taille est de $taille octets et son nombre de liens est de $liens"
else
	echo "il n'y a pas de fichier testfic"
fi
