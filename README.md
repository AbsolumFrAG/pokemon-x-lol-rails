# Contexte

Le projet consiste à développer une API en Ruby on Rails pour gérer deux types de données distincts : les Pokémon et les champions de League of Legends (LoL).

L’API Pokémon retourne des données au format JSON, tandis que l’API des champions LoL utilise le format XML.

  

# Objectifs

1. API Pokémon (JSON) : Fournir des opérations CRUD pour gérer les informations sur les Pokémon.

2. API Champions LoL (XML) : Offrir des fonctionnalités CRUD pour la gestion des champions de LoL avec des réponses en XML.

  

# Choix de conception

Modèles de Données

* Pokémon : `id`, `name`, `pokemon_type`, `level`, `evolution`.

* Champion LoL : `id`, `name`, `role`, `difficulty`, `price`.

  

Ces modèles reflètent les attributs essentiels requis pour chaque entité, avec un accent sur la simplicité et l’efficacité.

  

Structure de l’API

* Utilisation de Ruby on Rails pour la cohérence, la fiabilité et la facilité d’utilisation.

* Conception RESTful pour assurer une interface intuitive et standardisée.

* Séparation claire entre les deux jeux de données (Pokémon et LoL) pour une maintenance et une évolutivité facilitées.

  

Gestion des réponses

* JSON pour Pokémon : Utilisation du format JSON pour une intégration facile avec de nombreux clients et frameworks front-end.

* XML pour les Champions de LoL : Adoption du XML pour répondre aux exigences spécifiques du client ou pour une meilleure compatibilité avec des systèmes existants.

  

Traitement des Erreurs

* Gestion robuste des erreurs pour un meilleur déboggage et une expérience utilisateur améliorée.

* Messages d’erreurs clairs et des codes de statut HTTP appropriés pour faciliter l’intégration avec d’autres systèmes.

  

Sécurité

* Désactivation de la protection CSRF pour les endpoints API, compte tenu de la nature sans état des APIs REST.

* Recommandation d’authentification basée sur les tokens pour les requêtes client sécurisées.

# Défis et Solutions

* Gestion des Formats de Réponses Multiples : Mise en place de contrôleurs séparés pour gérer JSON et XML, assurant une flexibilité et une clarté dans le traitement des données.

* Problèmes avec le nom de colonne `type` : Renommage de la colonne `type` pour les Pokémon afin d’éviter les conflits avec le mécanisme d’héritage de table unique de Rails.

  

# Conclusion

L’API développée offre une solution robuste et flexible pour la gestion des données de Pokémon et de champions LoL, avec une attention particulière portée à la facilité d’utilisation, à la sécurité, et à la cohérence de conception. Cette approche garantit une intégration aisée avec d’autres systèmes et une base solide pour des extensions futures.