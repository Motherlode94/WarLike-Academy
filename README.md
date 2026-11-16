# WarLike Academy

Plateforme de formation WarLike : MVP interactif entièrement dans le navigateur.

## Fonctionnalités

- Tableau de bord et catalogue de quatre parcours : JavaScript/TypeScript, C# pour WarLike Engine, production musicale WarLike Studio, modélisation 3D.
- Douze leçons, questions à choix unique corrigées et progression locale par leçon.
- Interface sombre responsive, navigation accessible et remise à zéro explicite.

## Démarrer

Ouvrir `index.html` dans le navigateur ou déployer le dépôt comme site statique sur Cloudflare Pages (build command vide, output directory `/`).

## Limites et production

Le stockage `localStorage` est local, non partagé entre appareils et non adapté à une certification fiable. Les leçons constituent des introductions de démonstration. Pas d'authentification WarLike Keys, de synchronisation WarLike Server, de sandbox d'exécution de code ni de certificats officiels. Avant production : authentification côté serveur, modèle de données étudiant/cours/inscriptions, suivi signé par l'API, anti-triche et contenu pédagogique étoffé.

## Vérification manuelle

1. Ouvrir chaque onglet et tester sur mobile.
2. Compléter les 3 quiz d'un parcours ; constater 100 % dans Progression.
3. Actualiser la page ; vérifier la persistance sur le même appareil.
4. Réinitialiser ; vérifier la disparition des progrès.

Les changements initiaux sont proposés dans une PR ; `main` reste inchangée jusqu'à fusion.
