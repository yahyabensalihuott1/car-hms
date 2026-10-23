# language: fr
Fonctionnalité: Fermer une randonnée
  En tant que système
  Je veux fermer une randonnée lorsque sa date limite d'inscription est atteinte
  Afin de ne plus accepter d'inscriptions ni d'annulations

  Plan du scénario: Fermeture à la date limite
    Soit une randonnée « Lac Pink » au statut « <statut> » dont la date limite est atteinte
    Quand le planificateur ferme « Lac Pink »
    Alors « Lac Pink » devient « fermée »
    Et la transition est consignée avec l'acteur « Système »

    Exemples:
      | statut   |
      | ouverte  |
      | complète |

  Scénario: Inscriptions refusées après la fermeture
    Soit « Lac Pink » est « fermée »
    Quand un randonneur admissible s'inscrit à « Lac Pink »
    Alors l'inscription est refusée

  Scénario: Une randonnée annulée n'est pas fermée
    Soit une randonnée « Wolf » au statut « annulée » dont la date limite est atteinte
    Quand le planificateur ferme « Wolf »
    Alors « Wolf » reste « annulée »

  Scénario: La date limite n'est pas atteinte
    Soit une randonnée « Lac Pink » ouverte dont la date limite est dans 3 jours
    Quand le planificateur ferme « Lac Pink »
    Alors la fermeture est refusée
    Et « Lac Pink » reste « ouverte »
