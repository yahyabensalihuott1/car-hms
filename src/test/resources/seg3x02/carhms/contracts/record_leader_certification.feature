# language: fr
Fonctionnalité: Enregistrer une certification de chef de randonnée
  En tant qu'administrateur
  Je veux enregistrer la certification et le niveau d'organisateur d'un randonneur
  Afin qu'il puisse diriger des randonnées

  Contexte:
    Soit un administrateur connecté
    Et un randonneur « Omar » avec une adhésion « active »

  Scénario: Certification enregistrée
    Quand l'administrateur enregistre pour « Omar » le certificat « CHR-117 », délivré le 2026-03-01, expirant le 2028-03-01, avec le niveau d'organisateur « difficile »
    Alors « Omar » est un organisateur de randonnée de niveau « difficile »

  Scénario: Date d'expiration antérieure à la délivrance
    Quand l'administrateur enregistre pour « Omar » un certificat délivré le 2026-03-01 et expirant le 2025-03-01
    Alors l'enregistrement de la certification est refusé

  Scénario: Numéro de certificat déjà utilisé
    Soit le certificat « CHR-117 » appartient déjà à « Léa »
    Quand l'administrateur enregistre pour « Omar » le certificat « CHR-117 »
    Alors l'enregistrement de la certification est refusé

  Scénario: Seul un administrateur enregistre une certification
    Soit « Omar » est connecté
    Quand « Omar » tente d'enregistrer sa propre certification
    Alors l'enregistrement de la certification est refusé
