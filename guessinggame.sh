#!/bin/bash

# Fonction pour demander une estimation à l'utilisateur
function guess_files {
  local file_count=$(ls -1 | wc -l)
  local guess=-1

  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

  while [[ $guess -ne $file_count ]]; do
    read -p "Entrez votre estimation : " guess
    if [[ $guess -lt $file_count ]]; then
      echo "C'est trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
      echo "C'est trop haut ! Essayez encore."
    fi
  done

  echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $file_count."
}

# Appel de la fonction principale
guess_files
