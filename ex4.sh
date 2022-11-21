#!/bin/bash

tableau=()
for a in $#
do
	for suite in $@
	do
		tableau+=($suite)
	done
done
echo "Vous avez entrer repectivement : ${tableau[@]}"
i=1
croissant=0
decroissant=0
for b in ${tableau[@]}
do
	if ! [ -e ${tableau[$i]} ]; then
		if [ ${tableau[$i]} -lt $b ]; then
			decroissant=1
			i=`expr $i + 1`
		else
			croissant=1
			i=`expr $i + 1`
		fi
	else
		break
	fi
done
if [ $croissant -eq 1 ] && [ $decroissant -eq 0 ]; then
	echo "La suite est croissante"
else
	echo "La suite n'est pas croissante"
fi
