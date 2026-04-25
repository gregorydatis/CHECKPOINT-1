# Pseudo-code Script addUsers.sh

DEBUT
  SI aucun argument fourni
    Afficher "il manque les noms utilisateurs en argument - Fin du script"
    QUITTER

    POUR CHAQUE utilisateur dans les arguments
      SI l'utilisateur existe déjà 
      Afficher "l'utilisateur <nom> existe déjà"
      CONTINUER

    SINON
      Créer l'utilisateur
      SI création réussie
        Afficher "l'utilisateur <nom> à été créé"
      SINON
        Afficher "Erreur à la création de l'utilisateur <nom>"
      FIN SI

    FIN
