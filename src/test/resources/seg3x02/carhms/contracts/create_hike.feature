# language: fr
Fonctionnalité: Créer une randonnée
  En tant qu'organisateur de randonnée
  Je veux enregistrer une nouvelle randonnée sur un sentier de la CCN
  Afin que les randonneurs puissent s'y inscrire

  Contexte:
    Soit le sentier CCN « Lac-Pink » où la randonnée est permise, de difficulté « modéré » et de saison « été »
    Et un organisateur connecté « Omar » avec une adhésion « active »
    Et « Omar » a une certification valide jusqu'au 2027-12-31 avec le niveau d'organisateur « difficile »

  Scénario: Création réussie
    Quand « Omar » crée la randonnée « Lac Pink au lever du jour » sur « Lac-Pink » le 2027-06-12 à 7 h 00, durée 180 minutes, date limite 2027-06-05, capacité 12
    Alors la randonnée reçoit un identifiant unique
    Et son statut est « ouverte »
    Et la transition est consignée avec l'auteur « Omar »

  Scénario: Date hors saison d'ouverture
    Quand « Omar » crée une randonnée sur « Lac-Pink » le 2027-01-15
    Alors la création est refusée

  Scénario: Date limite plus de 14 jours avant la randonnée
    Quand « Omar » crée une randonnée sur « Lac-Pink » le 2027-06-30 avec la date limite 2027-06-10
    Alors la création est refusée

  Scénario: Date limite après le début de la randonnée
    Quand « Omar » crée une randonnée le 2027-06-12 à 7 h 00 avec la date limite 2027-06-12 à 10 h 00
    Alors la création est refusée

  Scénario: Certification expirée à la date de la randonnée
    Soit la certification de « Omar » expire le 2027-05-31
    Quand « Omar » crée une randonnée sur « Lac-Pink » le 2027-06-12
    Alors la création est refusée

  Scénario: Niveau d'organisateur insuffisant
    Soit le sentier CCN « Luskville » où la randonnée est permise, de difficulté « très difficile » et de saison « toute l'année »
    Quand « Omar » crée une randonnée sur « Luskville » le 2027-06-12
    Alors la création est refusée

  Scénario: Sentier où la randonnée n'est pas permise
    Soit le sentier CCN « Piste-Vélo » où la randonnée n'est pas permise
    Quand « Omar » crée une randonnée sur « Piste-Vélo »
    Alors la création est refusée

  Plan du scénario: Information invalide
    Quand « Omar » crée une randonnée sur « Lac-Pink » avec <champ> à « <valeur> »
    Alors la création est refusée

    Exemples:
      | champ    | valeur |
      | titre    |        |
      | capacité | 0      |
      | durée    | -30    |

  Scénario: Un randonneur sans certification ne peut pas créer de randonnée
    Soit un randonneur connecté « Léa » sans certification
    Quand « Léa » crée une randonnée sur « Lac-Pink » le 2027-06-12
    Alors la création est refusée
