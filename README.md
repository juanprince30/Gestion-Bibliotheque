Prérequis et Configuration
1. Base de données MySQL
• Assurez-vous d'utiliser une base de données MySQL.
• Importez le fichier de la base de données fourni dans votre serveur MySQL pour créer 
les tables et les données nécessaires.
2. Connexion
• Lors de la première connexion à l'application, utilisez les identifiants suivants :
o Nom d'utilisateur : user
o Mot de passe : user
3. Configuration de la Connexion à la Base de Données
• Ouvrez le fichier DatabaseConfig situé dans le répertoire src/utility.
• Modifiez les paramètres de connexion à la base de données pour correspondre à votre 
configuration MySQL :
o URL : jdbc:mysql://localhost:3306/votre_base_de_données
o Nom d'utilisateur : votre_nom_d'utilisateur
o Mot de passe : votre_mot_de_passe
4. Inclusion du Connecteur MySQL
• Téléchargez le fichier mysql-connector-java (si ce n'est pas déjà fait).
• Dans votre IDE, accédez à la configuration du projet (dans Module Settings ou 
Paramètres du module) et ajoutez ce fichier dans les dépendances du projet.
Lancement du Projet
Étapes pour démarrer l'application :
1. Ouvrez le dossier src.
2. Accédez au répertoire ihm, puis authentification.
3. Exécutez le fichier d'authentification pour lancer l'application.
Notes supplémentaires
• Veillez à ce que votre serveur MySQL soit démarré et accessible avant de lancer 
l'application.
• Assurez-vous que les permissions sur votre base de données MySQL permettent 
l'accès en lecture et écritur
