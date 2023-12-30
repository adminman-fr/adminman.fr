#!/bin/bash

# Récupérer le nom du répertoire parent depuis index.md (si présent)
parent=$(grep -E 'title:[[:space:]]*' index.md | awk -F': ' '{print $2}')

# Si le parent n'est pas spécifié dans index.md, utiliser le répertoire courant
if [ -z "$parent" ]; then
  parent=$(basename "$(pwd)")
fi

# Parcourir les fichiers .md dans le répertoire courant
for file in *.md; do
  # Ignorer index.md
  if [ "$file" == "index.md" ]; then
    continue
  fi

  # Vérifier si le fichier contient déjà un en-tête
  grep -q -E 'layout:[[:space:]]*post' "$file"
  header_exists=$?

  # Si l'en-tête n'existe pas, ajouter l'en-tête
  if [ "$header_exists" -ne 0 ]; then
    filename_without_extension="${file%.md}"

    header="---
layout: post
title: $filename_without_extension
parent: $parent
permalink: $parent/$filename_without_extension
---

"

    # Ajouter l'en-tête au début du fichier .md
    echo -e "$header$(cat "$file")" > "$file"
  fi
done
