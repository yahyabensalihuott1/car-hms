# language: fr
Fonctionnalité: Rechercher des randonnées
  En tant que visiteur ou utilisateur enregistré
  Je veux rechercher par nom de sentier, date ou difficulté
  Afin de trouver une randonnée qui me convient

  Contexte:
    Soit les randonnées ouvertes suivantes :
      | titre          | sentier   | date       | difficulté |
      | Lac Pink       | Lac-Pink  | 2026-11-08 | facile     |
      | Crête Luskville| Luskville | 2026-11-08 | difficile  |
      | Sentier Wolf   | Wolf      | 2026-11-15 | modéré     |

  Scénario: Recherche par nom de sentier
    Quand on recherche les randonnées du sentier « Wolf »
    Alors le système retourne seulement « Sentier Wolf »

  Scénario: Recherche par date
    Quand on recherche les randonnées du 2026-11-08
    Alors le système retourne « Lac Pink » et « Crête Luskville »

  Scénario: Recherche par difficulté
    Quand on recherche les randonnées de difficulté « difficile »
    Alors le système retourne seulement « Crête Luskville »

  Scénario: Recherche sans résultat
    Quand on recherche les randonnées du sentier « Inexistant »
    Alors le système retourne une liste vide
