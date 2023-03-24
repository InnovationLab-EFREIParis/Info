#!/bin/bash

# Définition du dossier cible
target_directory="./img_project"

# Suppression de tous les fichiers sauf les images
find "${target_directory}" -type f ! -iname "*.jpg" ! -iname "*.jpeg" ! -iname "*.png" -delete

# Echo
echo "Remove all files except images: Done"