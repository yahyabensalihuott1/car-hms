# CAR-HMS — Système de gestion des événements de randonnée du Cairn

SEG 3502, automne 2026 — Livrable 1 (branche `contracts`) — Groupe 15.

Backend Kotlin / Spring Boot (exigé par le club, section 2.3 de CAR-Req-01).

## Structure

- `src/main/kotlin/seg3x02/carhms/domain/` — un sous-paquetage par sous-domaine, avec un `README.md` :
  `hike`, `registration` (cœur) ; `hiker`, `trail`, `notification`, `reporting` (support) ; `weather`, `identity` (générique).
- `src/main/kotlin/seg3x02/carhms/application/usecases/` — une interface par cas d'utilisation
  (sauf Se connecter, Se déconnecter et Générer un rapport d'utilisation des sentiers).
- `src/main/kotlin/seg3x02/carhms/application/dtos/queries/` — DTO de requête utilisés par les commandes.
- `src/test/resources/seg3x02/carhms/contracts/` — un contrat Cucumber par commande d'application.

## Correspondance commandes → contrats

| Interface | Commande | Contrat |
| --- | --- | --- |
| BrowseHikes | listOpenHikes | browse_open_hikes.feature |
| BrowseHikes | searchHikes | search_hikes.feature |
| BrowseHikes | listHikesForHiker | list_hikes_for_hiker.feature |
| RegisterHiker | registerHiker | register_hiker.feature |
| SignUpForHike | signUpForHike | sign_up_for_hike.feature |
| CancelSignUp | cancelSignUp | cancel_sign_up.feature |
| UpdateHiker | updateHikerProfile | update_hiker_profile.feature |
| UpdateHiker | updateHikerAdministrativeInfo | update_hiker_administrative_info.feature |
| UpdateHiker | recordLeaderCertification | record_leader_certification.feature |
| CloseHike | closeHike | close_hike.feature |
| SendHikeReminder | sendHikeReminders | send_hike_reminders.feature |
| CreateHike | createHike | create_hike.feature |
| CancelHike | cancelHike | cancel_hike.feature |
