#!bin/bash

# Vérification de la présence d'arguments
if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

# Boucle sur chaque utilisateur passé en arguments
for user in "$@"; do

  # Vérification si l'utilisateur existe déjà
    if id "$user" &>/dev/null; then
        echo "L'utilisateur $user existe déjà"
        continue
    fi

 # Création de l'utilisateur
    sudo useradd "$user"

    # Vérification de la création
    if [ $? -eq 0 ]; then
        echo "L'utilisateur $user a été créé"
    else
        echo "Erreur à la création de l'utilisateur $user"
    fi 

  done
