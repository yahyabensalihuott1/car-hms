# language: fr
Fonctionnalité: Annuler une randonnée
  En tant qu'organisateur de la randonnée ou administrateur
  Je veux annuler une randonnée avant son début en indiquant un motif
  Afin d'avertir les randonneurs inscrits

  Contexte:
    Soit une randonnée « Lac Pink » organisée par « Omar », qui n'a pas commencé
    Et « Léa » y a une inscription « confirmée »
    Et « Sam » y est en liste d'attente

  Scénario: L'organisateur annule sa randonnée
    Quand « Omar » annule « Lac Pink » avec le motif « Avertissement de feu de forêt »
    Alors « Lac Pink » devient « annulée »
    Et l'annulation est consignée avec l'auteur « Omar » et le motif
    Et les inscriptions de « Léa » et « Sam » deviennent « annulées »
    Et « Léa » et « Sam » reçoivent un courriel indiquant le motif

  Scénario: Un administrateur annule une randonnée
    Soit un administrateur connecté « Ava »
    Quand « Ava » annule « Lac Pink » avec le motif « Sentier fermé par la CCN »
    Alors « Lac Pink » devient « annulée »
    Et l'annulation est consignée avec l'auteur « Ava »

  Scénario: Une randonnée fermée peut encore être annulée
    Soit « Lac Pink » est « fermée »
    Quand « Omar » annule « Lac Pink » avec le motif « Orage prévu »
    Alors « Lac Pink » devient « annulée »

  Scénario: Motif obligatoire
    Quand « Omar » annule « Lac Pink » sans motif
    Alors l'annulation est refusée

  Scénario: Randonnée déjà commencée
    Soit « Lac Pink » a commencé
    Quand « Omar » annule « Lac Pink » avec le motif « Retard »
    Alors l'annulation est refusée

  Scénario: Un autre organisateur ne peut pas annuler
    Soit un organisateur connecté « Zoé » qui n'organise pas « Lac Pink »
    Quand « Zoé » annule « Lac Pink » avec le motif « Test »
    Alors l'annulation est refusée
