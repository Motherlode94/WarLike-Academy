# Formations WarLike : référence Brackeys

## Références

- [Brackeys](https://brackeys.com/) : tutoriels gratuits de création de jeux.
- [Premier jeu Godot, vidéo](https://www.youtube.com/watch?v=LOhfqjmasi0) et [projet officiel](https://github.com/Brackeys/first-game-in-godot).
- [Projet officiel 3D](https://github.com/Brackeys/3d-game-in-godot) : référence pour la suite du parcours 3D.

Notre adaptation pédagogique fait commencer l’apprenant par un résultat qu’il peut observer. Elle présente ensuite une mécanique à la fois et la relie aux outils WarLike. Les consignes, exercices et questions sont rédigés pour WarLike ; les ressources Brackeys sont proposées comme références identifiées.

## Contrat d’une leçon pratique

1. Annoncer un résultat concret et les prérequis.
2. Présenter une seule mécanique nouvelle.
3. Donner les manipulations exactes dans l’outil : objets, menus et paramètres.
4. Décrire le résultat observable, avec un cas de réussite et un cas de refus ou d’échec.
5. Expliquer la logique avec un petit exemple.
6. Faire modifier une valeur et comparer avant/après.
7. Poser une question de compréhension et une question d’application distinctes.
8. Proposer un défi qui laisse un choix créatif.
9. Conserver une sauvegarde et tester la réouverture puis l’export à la fin du projet.

Une réponse juste au quiz n’est pas une preuve que le jeu fonctionne. Academy demande une confirmation personnelle pour les ateliers ; la certification d’un projet exigerait des tests exécutés dans Engine et dans son export.

## Adaptation aux moyens de WarLike

| Sujet | Mise en pratique |
| --- | --- |
| Scène et objets | Hierarchy, Project/Assets, Inspector et composants natifs. |
| Événements et conditions | Un comportement construit dans Blueprint, puis observé dans Graphe et Instructions. WarNode partage l’exécuteur de graphes. |
| Programmation | Introduire séparément JS/TS, WarScript et C# ; nommer explicitement le langage et distinguer code exécutable et pseudocode. C# utilise le pont .NET ; son exécution libre ne fait pas partie de l’export Web. |
| Projets 3D suivants | Slime Adventure : déplacement et collecte ; Course : conducteur, véhicule et checkpoints ; Horror : caméra, interaction, lampe et créatures. Composer progressivement les systèmes existants et tester chaque interaction. |

## Premier parcours livré

Le parcours `engine-premier-jeu` ajoute six leçons sur la mission native Trois lanternes, déjà disponible dans Blueprint → Projet & export. Il renvoie au [guide détaillé d’Engine](https://warlike-engine.pages.dev/docs/debuter-de-zero.html) pour les réglages et le lancement HTTP de l’export.

Les autres formations restent accessibles avec les mêmes identifiants et les mêmes index de leçons. Les parcours 3D du tableau constituent une progression à développer ; ils ne sont pas présentés comme des cours déjà disponibles dans Academy.
