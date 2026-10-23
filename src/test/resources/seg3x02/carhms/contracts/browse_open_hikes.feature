# language: fr
Fonctionnalité: Lister les randonnées ouvertes
  En tant que visiteur ou utilisateur enregistré
  Je veux voir les randonnées qui acceptent des inscriptions
  Afin de choisir une randonnée

  Contexte:
    Soit les randonnées suivantes :
      | titre              | sentier       | date       | statut   | capacité | confirmés |
      | Lac Pink           | Lac-Pink      | 2026-11-08 | ouverte  | 12       | 4         |
      | Crête du Luskville | Luskville     | 2026-11-01 | complète | 10       | 10        |
      | King Mountain      | King Mountain | 2026-10-30 | annulée  | 8        | 0         |
      | Wolf Trail         | Wolf          | 2026-10-25 | fermée   | 15       | 9         |

  Scénario: Un visiteur liste les randonnées ouvertes triées par date
    Quand un visiteur demande la liste des randonnées ouvertes
    Alors le système retourne « Crête du Luskville » puis « Lac Pink »
    Et chaque randonnée affiche son sentier, son point de départ, son organisateur et ses places restantes
    Et « Lac Pink » affiche 8 places restantes
    Et « Crête du Luskville » affiche 0 place restante

  Scénario: Les randonnées annulées et fermées ne sont pas listées
    Quand un visiteur demande la liste des randonnées ouvertes
    Alors la liste ne contient ni « King Mountain » ni « Wolf Trail »

  Scénario: Aucune randonnée ouverte
    Soit aucune randonnée n'est ouverte ou complète
    Quand un visiteur demande la liste des randonnées ouvertes
    Alors le système retourne une liste vide
