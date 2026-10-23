# language: fr
Fonctionnalité: Annuler une inscription
  En tant que randonneur
  Je veux me retirer d'une randonnée avant sa date limite
  Afin de libérer ma place

  Contexte:
    Soit une randonnée « Lac Pink » de capacité 2 dont la date limite n'est pas passée

  Scénario: Annulation d'une place confirmée avec liste d'attente
    Soit « Lac Pink » est « complète » avec les inscriptions confirmées de « Léa » et « Omar »
    Et « Sam » est en liste d'attente en position 1
    Quand « Léa » annule son inscription à « Lac Pink »
    Alors l'inscription de « Léa » est « annulée »
    Et l'inscription de « Sam » devient « confirmée »
    Et un courriel est envoyé à « Sam »
    Et « Lac Pink » reste « complète »

  Scénario: Annulation d'une place confirmée sans liste d'attente
    Soit « Lac Pink » est « complète » avec les inscriptions confirmées de « Léa » et « Omar »
    Quand « Léa » annule son inscription à « Lac Pink »
    Alors l'inscription de « Léa » est « annulée »
    Et « Lac Pink » redevient « ouverte »

  Scénario: Annulation d'une inscription en liste d'attente
    Soit « Lac Pink » est « complète » avec « Sam » en position 1 et « Zoé » en position 2 de la liste d'attente
    Quand « Sam » annule son inscription à « Lac Pink »
    Alors l'inscription de « Sam » est « annulée »
    Et « Zoé » passe en position 1
    Et « Lac Pink » reste « complète »

  Scénario: Annulation après la date limite refusée
    Soit « Lac Pink » est « fermée »
    Et « Léa » a une inscription « confirmée » à « Lac Pink »
    Quand « Léa » annule son inscription à « Lac Pink »
    Alors l'annulation est refusée

  Scénario: Annulation de l'inscription d'un autre randonneur refusée
    Soit « Omar » a une inscription « confirmée » à « Lac Pink »
    Quand « Léa » tente d'annuler l'inscription de « Omar »
    Alors l'annulation est refusée
