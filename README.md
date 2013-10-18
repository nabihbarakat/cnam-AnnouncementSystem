cnam-AnnouncementSystem
=======================

 ## introduction

 Systeme d'annonces.
 
le role de ce systeme est d'assurer un moteur qui sert a envoyer a l'etudiant des messages en utilisant plusieur canal comme email , sms , notification sur application android<br/>
le system va etre utiliser dans deux maniere:<br />
-une page web qui assure au utilisateur de specifier le numero du dossier du l'etudiant , le canal preferer pour envoyer le message .<br />
-d'une maniere service web , qui assure au autre application une programming  interface (API) pour utiliser ces fonctionalite pour informer les  etudiant d'une maniere automatique.<br />
sur l'autre cote, l'etudiant vas recevoir ces message par mail ,sms , ou par notification sur l'application android en cas il utilise cet application

 ## Presentation du projet:

    But du projet:
		construire un programme qu'on peut l'utiliser directement ou en comme service web pour envoyer a l'etudiant des message
			*ver son email 
			*a son mobile en utilisant un sms 
			* notification sur application android.
		
    Ensembles fonctionnelles
    Contrainte generale

 ## Description:

    Entrees et sortie du systeme:
    	-
    Les acteurs et Cas d'utilisation haut niveau (description fonctionnelle)
    Mode de fonctionnement:
    	-on a utiliser plusieur library et servics pour assurer le fonctionnement de ce system
    		-la library javax.mail pour la communication par email
    		-la service voip (12voip.com) our la communication par sms
    Demarrage et arret du systeme
    	-le system est un site java qui utilise le server web apache tomcat, et l'arret et le demarrage du system est relier au fonctionnement du tomcat.

 ## L'environnement:

    Environnement organisationnel
    Environnement technique et configurations
    
  ## Configuration
  	Import DB.sql. 
  	Adjust db connection parameters at StudentData.java. 
  	Run the application ...(start with contactstudent.jsp)

	