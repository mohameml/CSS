#!/bin/bash

# Création des dossiers
for i in {1..8}; do
    # Formatage du numéro pour obtenir 01, 02, ... , 08
    folder_num=$(printf "%02d" $i)
    folder_name="${folder_num}_exercice"
    
    # Création du dossier
    mkdir "$folder_name"
    
    # Création du fichier index.html
    echo "<!DOCTYPE html>
<html>
<head>
    <title>Exercice</title>
    <link rel='stylesheet' href='style.css'>
</head>
<body>
    <h1>Exercice ${folder_num}</h1>
</body>
</html>" > "${folder_name}/index.html"
    
    # Création du fichier style.css
    echo "/* Styles pour l'exercice ${folder_num} */" > "${folder_name}/style.css"
done

echo "Création des dossiers et fichiers terminée."
