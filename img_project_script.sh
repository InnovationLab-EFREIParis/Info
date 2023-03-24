#!/bin/bash

/bin/bash ./remove_all_except_img.sh
# Spécifie le chemin du dossier contenant les images à redimensionner
IMAGES_DIR="./img_project"

# Redimensionne toutes les images dans le dossier avec une largeur de 500 pixels
mogrify -path ${IMAGES_DIR} -resize 500 ${IMAGES_DIR}/*.jpg ${IMAGES_DIR}/*.jpeg ${IMAGES_DIR}/*.png ${IMAGES_DIR}/*.bmp
#mogrify -resize 500 ./img_project/*.jpg 
# Boucle à travers chaque fichier dans le dossier des images
#for FILENAME in ${IMAGES_DIR}*; do

#echo $FILENAME
  # Vérifie si le fichier est une image (extension jpg, jpeg, png, gif, bmp, etc.)
#if [[ "$FILENAME" =~ \.(jpg|jpeg|png|gif|bmp)$ ]]; then

    # Redimensionne l'image en utilisant la commande "convert" de ImageMagick
   # convert "${FILENAME}" -resize 500 "${FILENAME}"

#fi
#done