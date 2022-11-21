#!/bin/bash

tab=()
for a in $#
do
	for suite in $@
	do
		tab+=($suite)
	done
done

tab2=()
nbrt=0
nbr=1
i=$#
if [ $i -ne 1 ]; then
	unset tab[0]
	while [ $i -ne 1 ]
	do
		if [ -f ${tab[$nbr]} ]; then
			mv -- "${tab[$nbr]}" "$1""$nbr"
			nbr=`expr $nbr + 1`
			nbrt=`expr $nbrt + 1`
			i=`expr $i - 1`
		else
			echo "${tab[$nbrt]} n'est pas un fichier ordinaire."
			break
		fi
	done
else
	for suite2 in `ls -l | grep '^-r' | cut -d" " -f14`
	do
		tab2+=($suite2)
	done
	nbrfic=`ls -l | grep '^-r' | wc -l`
	nbrficboucle=`expr $nbrfic + 1`
	while [ $nbr -ne $nbrficboucle ]
	do
		if [ -f ${tab2[$nbrt]} ]; then
			mv -- "${tab2[$nbrt]}" "$1""$nbr"
			nbr=`expr $nbr + 1`
			nbrt=`expr $nbrt + 1`		
		else
			echo "${tab2[nbrt]} n'est pas un fichier ordinaire."
			break
		fi
	done
fi
