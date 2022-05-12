Base de donnees de gestion des emplois de temps.

cahier de charges

1- contexte et problematique

la gestion des ressources humaines est une tache assez complexe lorsque l'effectif devient pletorique et des fonctions variees. Dans le cas particulier des universites ou l'effectif du personnel d'appuie est tres considerable, la gestion devient pluis complexe ce qui impose le recours aux solutions informatisees et le plus souvent aux bases de donnees. Dans le present travail, on se propose d'elaborer une base de donnees pour la gestion de temps hebdomadaire des enseignements du niveau 3 des facultes de science de l'universite de douala.


2- objectif vise 

l'objectif du present travail vise a developper une base de donnees complete pour la gestion des emplois de temps  de chaque semaine. Il sera question d'elaborer une base de donnees metant en relation:
	-les enseignants
	-les salles
	-la duree
	-le jour 
	-les cours
	-la filiere
	-le semestre
	-les semaines
	

l'objectif general sera d'affecter des enseignements a un enseignant, pour une matiere appartenant a une filiere, enseigner dans une salle precise pour une duree pendant la journee, et un bombre precis de semaine durant un semestre sans qu'il y'ait conflits.


3- definition du perimetre du travail

compte tenu du temps mis a notre disposition et du contexte du travail, la base de donnees elaboree sra uniquement dediee a la gestion des emplois de temps du niveau 3 de la faculte des sciences duivant les options:

 -informatique
 -mathematique
 -physique	
 
 

4- specification des besoins 


La base de donnees a concevoir devra contenir deux jeux de donnees concu au prealable.

le premier jeu doit contenir dans un fichier(au format .csv):
	-le code module (exemple INF333)
	-le libelle (nom detaille du module exemple: systeme d'exploitation)
	-niveau (exemple: N3)
	-duree (exemple: 2h)
	
le deuxieme fichier doit contenir dans un fichier(au format .csv):
	-code module
	-groupe d'etudiant par niveau
	-semaine(numerique)
	-jour(numerique)
	-heure(numerique)
	-salle

A partir de ces jeux de donnees on devra pouvoir:

-selectionner un enseignant, lui attribuer une matiere une salle un jour une periode.

-gerer automatiquement les conflits(eviter de programmer le meme enseignant a des cours differents a la meme heure)

-presenter les disponibilites des enseignants	

-presenter les disponibilites des ressources(salle, enseignants).



5- delai

le travail devra etre accompli dans un delai de 15 jours.	
