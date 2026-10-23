# language: fr
Fonctionnalité: Lister les randonnées adaptées au niveau d'un randonneur
  En tant que randonneur connecté
  Je veux voir les randonnées accessibles à mon niveau d'habileté
  Afin de m'inscrire à une randonnée qui me convient

  Contexte:
    Soit les randonnées ouvertes suivantes :
      | titre    | difficulté     |
      | Facile 1 | facile         |
      | Modéré 1 | modéré         |
      | Diff 1   | difficile      |
      | TDiff 1  | très difficile |

  Scénario: Un débutant voit les randonnées faciles et modérées
    Soit un randonneur connecté de niveau « débutant »
    Quand il demande les randonnées adaptées à son niveau
    Alors le système retourne « Facile 1 » et « Modéré 1 »

  Scénario: Un avancé voit toutes les randonnées
    Soit un randonneur connecté de niveau « avancé »
    Quand il demande les randonnées adaptées à son niveau
    Alors le système retourne les 4 randonnées
