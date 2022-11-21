# R108-TP4

<p>Le module R108 (base des systeme d'exploitation) fait parti de la formation but réseau et télécommunication en première année au premier semestre.</p>
<p>J'ai choisis de déposer sur mon github mes scripts du TP4 de ce module étant donnée que j'ai appris de nouvelles notions et pourquoi pas avec le temps, m'apercevoir que j'aurai pu mieux optimiser mes scripts !</p>

## Les difféents sujets

#### exercice 1

<p>Réaliser un shell-script qui, reçoit deux paramètres : le premier est un fichier ; le second est un repertoire. Le script doit déplacer le fichier dans le réperoitre en verifiant au préalable l'existance de l'un et de l'autre.</p>

#### exercice 2

<p>Ecrire un script shell permettant de supprimer, dans un répertoire donné en paramètre, tous les liens : correspondant à des fichiers ordinaires ; dont les droits sont : rwxr--r--</p>

#### exercice 3

<p>Ecrire le script somme qui affiche le nombre de paramètres reçus et leur somme. On utilisera ici la structure while et la commande expr.</p>

```
./ex3 12 3 4
Le nombre de paramètres est : 3
La somme est : 19
```

#### exercice 4

<p>Ecrire un script en shell unix qui vérifie qu'une suite d'entiers donnée en paramètre est croissante.</p>

```
$ ./ex4 1 12 3
La suite n'est pas croissante
```

#### exercice 5

<p>Ecrire un script Shell qui permet de prendre deux nombres en arguments et affiche en utilisant une boucle while tous les nombres entre la valeur intiale et la valeur finale, séparés par un espace.</p>

```
$ ./ex5 5 9
5 6 7 8 9
```

#### exercice 6

<p>Ecrire un script Shell permettant de renommer une liste de fichiers du répertoire de travail. On supposera que les références de fichiers à changer sont données en paramètres et plus précisément sont tous les paramètres à partir du second. Les nouvelles références seront obtenues à partir du préfixe commun donné en premier argument, le suffixe étant constitué par un entier compris entre 1 et n si n est le nombre de fichiers à renommer. On verillera à ce que le script ne renomme que les fichiers ordinaires. On décidera par ailleurs que si la commande n'a qu'un seul paramètre, tout le réperoire de travail est traité. Enfin, on supposera pour simplifier le travail qu'aucun nouveau nom ne correspond à un lien existant dans le réperotoire.</p>

```
$ ls
g h i j
$ ./ex6 f g h i j
$ ls
f1 f2 f3 f4
```

#### exercice 7

<p>Créer un fichier nommé testfic contenant un texte de 10 lignes.</p>
<p>Ecrire un script qui permet d'afficher la suite : Le fichier a pour nom ___, sa taille est de _ octets et son nombre de liens est de _ .</p>
<p>On souhaite que le nom du fichier est transmis en paramètre.</p>
