# Gestion des randonnées

**Classification :** Cœur

Responsabilités :
- création d'une randonnée et validation de ses invariants (saison d'ouverture du sentier, date limite d'inscription au plus 14 jours avant et au plus tard au début, certification de l'organisateur valide à la date, niveau d'organisateur ≥ difficulté du sentier) ;
- cycle de vie : ouverte → complète ↔ ouverte → fermée / annulée ; « terminée » est calculé à partir de la date ;
- historique des transitions (statut, auteur, heure, motif d'annulation).

Concepts : `Hike` (agrégat), `HikeStatus`, `HikeLifecycleEvent`, `TrailSnapshot`.
