#!/bin/bash

somme=0
nbr=$#
echo "le nombre de paramètres est de : $#"
while [ $nbr -ne 0 ] #Jutilise $@ car c est sous forme de tableau
do		     #contrairement à $*
	recup=`echo $@ | cut -d" " -f$nbr`
	somme=`expr $somme + $recup`
	nbr=`expr $nbr - 1`
done
echo "La somme est: $somme"
