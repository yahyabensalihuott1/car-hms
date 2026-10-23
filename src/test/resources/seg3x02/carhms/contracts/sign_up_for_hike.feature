# language: fr
Fonctionnalité: S'inscrire à une randonnée
  En tant que randonneur
  Je veux m'inscrire à une randonnée adaptée à mon niveau
  Afin d'y participer

  Contexte:
    Soit un randonneur « Léa » de niveau « intermédiaire » avec une adhésion « active »
    Et une randonnée « Lac Pink » de difficulté « modéré », ouverte, de capacité 3, dont la date limite n'est pas passée

  Scénario: Inscription confirmée
    Soit « Lac Pink » a 1 inscription confirmée
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors une inscription « confirmée » est créée avec l'heure d'inscription
    Et « Lac Pink » reste « ouverte »
    Et un courriel de confirmation est envoyé à « Léa »

  Scénario: La dernière place rend la randonnée complète
    Soit « Lac Pink » a 2 inscriptions confirmées
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors une inscription « confirmée » est créée
    Et « Lac Pink » devient « complète »
    Et la transition est consignée avec l'acteur « Système »

  Scénario: Inscription en liste d'attente
    Soit « Lac Pink » est « complète » avec 1 inscription en liste d'attente
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors une inscription « en liste d'attente » est créée en position 2
    Et un courriel indiquant la position 2 est envoyé à « Léa »

  Scénario: Randonnée un niveau au-dessus acceptée
    Soit une randonnée ouverte « Luskville » de difficulté « difficile »
    Quand « Léa » s'inscrit à « Luskville »
    Alors une inscription « confirmée » est créée

  Scénario: Randonnée plus facile acceptée
    Soit une randonnée ouverte « Promenade » de difficulté « facile »
    Quand « Léa » s'inscrit à « Promenade »
    Alors une inscription « confirmée » est créée

  Scénario: Randonnée trop difficile refusée
    Soit une randonnée ouverte « Sommet » de difficulté « très difficile »
    Quand « Léa » s'inscrit à « Sommet »
    Alors l'inscription est refusée

  Plan du scénario: Adhésion non active refusée
    Soit l'adhésion de « Léa » est « <statut> »
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors l'inscription est refusée

    Exemples:
      | statut    |
      | expirée   |
      | suspendue |

  Scénario: Randonnée fermée refusée
    Soit « Lac Pink » est « fermée »
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors l'inscription est refusée

  Scénario: Double inscription refusée
    Soit « Léa » a déjà une inscription « confirmée » à « Lac Pink »
    Quand « Léa » s'inscrit à « Lac Pink »
    Alors l'inscription est refusée
