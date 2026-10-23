# language: fr
Fonctionnalité: Envoyer un rappel de randonnée
  En tant que système
  Je veux envoyer un rappel la veille de la randonnée
  Afin que les randonneurs confirmés soient prêts

  Contexte:
    Soit une randonnée « Lac Pink » non annulée qui a lieu demain à 9 h 00
    Et « Léa » et « Omar » y ont une inscription « confirmée »
    Et « Sam » y est en liste d'attente

  Scénario: Rappel sans précipitations prévues
    Soit le service météorologique prévoit un temps ensoleillé au point de départ
    Quand le planificateur envoie les rappels de « Lac Pink »
    Alors « Léa » et « Omar » reçoivent un courriel avec la date, l'heure de début, le sentier et le point de départ
    Et le courriel ne contient pas d'avertissement météo
    Et « Sam » ne reçoit pas de rappel

  Plan du scénario: Rappel avec avertissement météo
    Soit le service météorologique prévoit « <précipitation> » au point de départ
    Quand le planificateur envoie les rappels de « Lac Pink »
    Alors le courriel de rappel contient un avertissement météo

    Exemples:
      | précipitation |
      | pluie         |
      | neige         |

  Scénario: Service météorologique indisponible
    Soit le service météorologique est indisponible
    Quand le planificateur envoie les rappels de « Lac Pink »
    Alors « Léa » et « Omar » reçoivent le rappel sans avertissement météo

  Scénario: Pas de rappel pour une randonnée annulée
    Soit « Lac Pink » est « annulée »
    Quand le planificateur envoie les rappels de « Lac Pink »
    Alors aucun courriel n'est envoyé

  Scénario: Le rappel n'est envoyé qu'une fois
    Soit les rappels de « Lac Pink » ont déjà été envoyés
    Quand le planificateur envoie les rappels de « Lac Pink »
    Alors aucun nouveau courriel n'est envoyé
