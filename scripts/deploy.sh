#!/bin/bash
# Indique que ce fichier doit être lu par bash (le langage du terminal)

# Le dossier où se trouve le site sur le serveur
DOSSIER=~/serveur/site_-quipe

# On va dans ce dossier ; s'il n'existe pas, on affiche une erreur 
cd "$DOSSIER" || { echo "Erreur : le dossier $DOSSIER n'existe pas"; exit 1; }

# On récupère la dernière version du site depuis GitHub
git pull

# On copie les fichiers du site dans le dossier que nginx affiche
sudo cp index.html style.css /var/www/html/

# Message de fin "tout est bien qui finit bien"
echo "Déploiement terminé : le site est mis à jour !"
