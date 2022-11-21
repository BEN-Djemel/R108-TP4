#!/bin/bash

#commande pour afficher uniquement les droits d accès d'un fichier : ls -l | grep $fichier
#commande pour savoir si il s\'agit d\'un fichier ordinaire : ls -l | grep '^-r'

if [ $EUID -ne 0 ]; then #Je verifie que l\'utilisateur soit root pour supprimer des fichiers/repertoires
	echo "Doit être éxécuter en tant que root."
	exit
fi

rm -rf `ls -l | grep '^-r' | cut -d" " -f14`
rm -rf `ls -l | grep 'rwxr--r--' | cut -d" " -f11`
