#crée la BDD World
CREATE DATABASE World;

#Selectione la BDD 
USE World;

#Crée un tableau
CREATE TABLE personne(
	#crées les colonnes du tableau
	id INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(30),
	prenom VARCHAR(30),
	age INT,
	taille FLOAT,
	poids FLOAT,
	PRIMARY KEY(id)
);
#crée les contenu du tableau
INSERT INTO personne (nom, prenom, age, taille, poids)
VALUES ('Rakoto', 'Be Nify', '10', '1.50', '70.0'),
	   ('Lava', 'Rapeto', '25', '2.0', '30.0'),
	   ('Ba', 'Lita', '7', '1.0', '20.5'),
	   ('Kiala', 'Manjakely', '100', '1.68', '45.7'),
	   ('Kiala', 'Pota', '37', '0.8', '50.0');

#Modifie la colonne du tableau
ALTER TABLE personne
#Ajoute un nouveau colonne
ADD COLUMN couleur_preferee TEXT;

#modifie la valeur du colonne selectioner apres sont Id
UPDATE personne
SET couleur_preferee = 'rouge'
WHERE id = 1;

UPDATE personne
SET couleur_preferee = 'vert'
WHERE id = 2;

UPDATE personne
SET couleur_preferee = 'jaune'
WHERE id = 3;

UPDATE personne
SET couleur_preferee = 'violet'
WHERE id = 4;

UPDATE personne
SET couleur_preferee = 'grise'
WHERE id = 5;