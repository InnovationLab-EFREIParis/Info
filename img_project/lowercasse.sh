#!/bin/bash

for fichier in *.*; do
    extension="${fichier##*.}"
    nouveau_nom=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
    mv "$fichier" "${fichier%.*}.$nouveau_nom"
done