# language: fr
Fonctionnalité: Enregistrer un randonneur
  En tant que membre du club
  Je veux m'enregistrer avec mon code d'invitation
  Afin de pouvoir m'inscrire à des randonnées

  Contexte:
    Soit le code d'invitation « CAIRN-2026-0042 » est valide et non utilisé
    Et aucun randonneur n'utilise le courriel « lea@example.com »

  Scénario: Enregistrement réussi d'un adulte
    Quand un visiteur s'enregistre avec le code « CAIRN-2026-0042 », le courriel « lea@example.com », la date de naissance 1995-04-12 et le niveau « intermédiaire »
    Et il accepte la décharge de responsabilité
    Alors un randonneur est créé avec une adhésion « active »
    Et l'acceptation de la décharge est consignée
    Et le code « CAIRN-2026-0042 » est marqué comme utilisé

  Scénario: Enregistrement d'un mineur avec un tuteur légal
    Quand un visiteur s'enregistre avec le code « CAIRN-2026-0042 » et la date de naissance 2010-06-01
    Et la décharge est acceptée par le tuteur légal « Marc Tremblay »
    Alors un randonneur est créé avec une adhésion « active »
    Et le nom du tuteur « Marc Tremblay » est consigné

  Scénario: Mineur sans tuteur légal
    Quand un visiteur s'enregistre avec la date de naissance 2010-06-01 sans nom de tuteur
    Alors l'enregistrement est refusé
    Et aucun randonneur n'est créé

  Scénario: Code d'invitation inconnu
    Quand un visiteur s'enregistre avec le code « FAUX-CODE »
    Alors l'enregistrement est refusé

  Scénario: Code d'invitation déjà utilisé
    Soit le code « CAIRN-2026-0042 » a déjà été utilisé
    Quand un visiteur s'enregistre avec le code « CAIRN-2026-0042 »
    Alors l'enregistrement est refusé

  Scénario: Courriel déjà utilisé
    Soit un randonneur existe avec le courriel « lea@example.com »
    Quand un visiteur s'enregistre avec le courriel « lea@example.com »
    Alors l'enregistrement est refusé

  Scénario: Décharge non acceptée
    Quand un visiteur s'enregistre sans accepter la décharge
    Alors l'enregistrement est refusé
