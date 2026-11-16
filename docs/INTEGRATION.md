# Plan d'intégration Academy — Keys, Server, D1 et Cloudflare
## Situation réelle
L'interface actuelle est une **démonstration locale**. Ne jamais considérer `localStorage` comme preuve de suivi académique, statut administrateur ou certification.
WarLike Server dispose d'un mécanisme de *pairing* pour Studio (code de courte durée, challenge/verifier, jeton haché côté serveur), mais aucun contrat Academy n'est encore publié.
## Contrat à implémenter dans WarLike Server
1. Créer `/api/academy/authorize`, `exchange`, `me`, `revoke` sur le modèle Studio, avec origine exacte Academy et PKCE. Ne jamais placer un secret serveur dans le navigateur.
2. API Academy vérifie le jeton à chaque requête, relit les droits et l'inscription côté serveur. `owner`/rôle `academy_editor` seul peut modifier les cours. Refuser par défaut (401/403).
3. Requêtes préparées D1 ; `member_id` provient **uniquement** de la session vérifiée. Pas du corps JSON. Journaliser l'édition.
4. Endpoints visés : `GET /courses`, `POST /courses`, `PATCH /courses/:id`, `POST /courses/:id/lessons`, `PUT /progress/:lessonId`, `GET /me/progress`. Validation des tailles, quiz sans réponses sur les routes élève, correction et notes côté serveur.
5. D1 : migration `migrations/0001_academy.sql` dans une base dédiée à identifier. Exécuter en staging puis prod avec sauvegarde et contrôle.
## Éditeur et exercices
Éditeur administrateur : brouillon/publication, ordre des leçons, aperçu, historique, permissions serveur. Exercices pratiques JS/C# : **isoler** toute exécution de code étudiant dans un sandbox distinct avec limites de durée, mémoire et accès réseau ; aucun `eval` dans la page principale.
## Validation
Tester 401 sans jeton, 403 élève sur édition, impossibilité de lire le progrès d'autrui, expiration/révocation de session, synchronisation multi-appareils, reprise et accessibilité. Déploiement Pages seulement après URL et origine connues, bindings confirmés, secrets configurés et QA validée.
