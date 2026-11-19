# WarLike Academy

Formation autonome dans le navigateur : https://warlike-academy.pages.dev/.

## Édition enrichie — novembre 2026

**7 parcours, 21 leçons** :

| Parcours | Niveau |
| --- | --- |
| JavaScript & TypeScript | Débutant |
| C# pour WarLike Engine | Débutant |
| Production dans WarLike Studio | Débutant |
| Modélisation & Rig 3D | Débutant |
| Premiers pas dès 5 ans | Découverte avec un accompagnant |
| Préparer un comportement WarScript | Pratique, pseudocode |
| Construire son premier projet | Pratique |

Les douze leçons initiales et leurs quiz sont conservés et enrichis. Chaque leçon propose une explication, un exemple, une question de connaissance, une mise en pratique distincte, une correction et un petit défi à réaliser. Les deux réponses doivent être justes pour valider une nouvelle leçon. Les validations anciennes sont préservées.

- Catalogue avec recherche et filtre par niveau.
- Choix libre du parcours et des leçons, boutons précédent/suivant et progression visible.
- Reprise exacte de la dernière leçon depuis le tableau de bord ; reprise d’un parcours à sa première leçon non validée.
- Export/restauration JSON de la progression et de la position, avec validation et confirmation avant remplacement. Export brut disponible si le stockage est illisible.
- Conservation de la clé `warlike-academy-demo-v1` et migration des anciennes progressions.
- Écriture enregistrée avant confirmation de validation ; détection d’une progression modifiée dans un autre onglet pour éviter son écrasement.

## Exécution et validation

Servir la racine par HTTP statique ou Cloudflare Pages, sans compilation. Aucune dépendance distante. `courses.js` contient les cours initiaux ; `enrich-courses.js` les complète ; `model.js` contrôle les progressions et `app.js` affiche le parcours.

```sh
node tests/smoke.mjs
node --check app.js
node --check model.js
node --test tests/model.test.mjs
python3 -m unittest discover -s tests -p 'test_*.py' -v
```

Essais navigateur réalisés : validation des deux questions du parcours dès 5 ans, navigation à la leçon suivante, rechargement et reprise exacte. Imports/exports de fichiers et ergonomie mobile restent à éprouver sur les appareils cibles.

## Périmètre

Suivi personnel local, sans compte Keys ni synchronisation Server. Aucune certification officielle. Les réponses sont disponibles dans la page et les corrections ne sont pas des évaluations sécurisées. Les exemples sont à lire et adapter : **aucun code étudiant n’est exécuté**. Le parcours préparatoire WarScript et les ateliers pour enfants utilisent explicitement du pseudocode, pas une API exécutable du moteur.

Les migrations SQL restent des fondations non appliquées automatiquement. L’authentification, les rôles enseignants, l’édition des cours côté serveur et la synchronisation sont décrits dans [le plan d’intégration](docs/INTEGRATION.md).
