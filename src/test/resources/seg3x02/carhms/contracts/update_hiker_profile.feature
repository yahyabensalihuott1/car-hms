# language: fr
Fonctionnalité: Mettre à jour son profil de randonneur
  En tant que randonneur
  Je veux modifier mes informations personnelles
  Afin qu'elles restent exactes

  Contexte:
    Soit un randonneur connecté « Léa » avec le téléphone « 613-555-0101 »

  Scénario: Mise à jour réussie
    Quand « Léa » change son téléphone pour « 819-555-0199 » et sa personne-ressource pour « Ana Roy, 613-555-0177 »
    Alors le profil de « Léa » contient le téléphone « 819-555-0199 »
    Et la personne-ressource « Ana Roy, 613-555-0177 »

  Scénario: Information invalide
    Quand « Léa » change son téléphone pour « abc »
    Alors la mise à jour est refusée
    Et le téléphone de « Léa » reste « 613-555-0101 »

  Scénario: Un randonneur ne modifie pas le profil d'un autre
    Quand « Léa » tente de modifier le profil de « Omar »
    Alors la mise à jour est refusée
