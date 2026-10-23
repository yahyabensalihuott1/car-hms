# language: fr
Fonctionnalité: Mettre à jour le statut d'adhésion ou le niveau d'un randonneur
  En tant qu'administrateur
  Je veux modifier le statut d'adhésion et le niveau d'habileté d'un randonneur
  Afin de refléter sa situation au club

  Contexte:
    Soit un administrateur connecté
    Et un randonneur « Léa » avec une adhésion « active » et le niveau « intermédiaire »

  Plan du scénario: Changement de statut d'adhésion
    Quand l'administrateur met le statut d'adhésion de « Léa » à « <statut> »
    Alors l'adhésion de « Léa » est « <statut> »

    Exemples:
      | statut    |
      | expirée   |
      | suspendue |
      | active    |

  Scénario: Changement de niveau d'habileté
    Quand l'administrateur met le niveau de « Léa » à « avancé »
    Alors le niveau de « Léa » est « avancé »

  Scénario: Statut inconnu
    Quand l'administrateur met le statut d'adhésion de « Léa » à « gelée »
    Alors la mise à jour est refusée

  Scénario: Un randonneur ne peut pas changer son propre niveau
    Soit « Léa » est connectée
    Quand « Léa » tente de mettre son niveau à « expert »
    Alors la mise à jour est refusée
