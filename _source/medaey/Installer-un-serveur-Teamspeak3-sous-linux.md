---
layout: post
title: Installer-un-serveur-Teamspeak3-sous-linux
parent: Medaey
permalink: Medaey/Installer-un-serveur-Teamspeak3-sous-linux
---

Nous allons voir dans cet article comment installer un serveur Teamspeak 3 Sous linux.  
  
**1)** Mettre à jour votre serveur  

    sudo apt-get update && sudo apt-get upgrade -y

  
**2)** Ouvrir les ports du par feu  

ufw allow 9987/udp && ufw allow 30033/tcp

Note : Listes & utilité des ports

port 9987 (UDP) = Vocale

port 30033(TCP) = Trasfert de fichiers

port 10011(TCP) = ServerQuery

**2)** Création d’un utilisateur ts3server

sudo adduser ts3server 

  
**3)** Définir le mot de passe de l'utilisateur ts3server

passwd ts3server

**4)** Devenir l'utilisateur ts3server

su ts3server

**5)** Télécharger la dernière version de Teamspeak3 serveur  
([Site officier de TeamSpeak](https://www.teamspeak.com/en/downloads/#server))

wget https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server\_linux\_amd64-3.8.0.tar.bz2

**6)** Décompresser l’archive tar.bz2  
  

tar -xvf teamspeak3-server\_linux\_amd64-\*.tar.bz2

  
**8)** Rentrer dans le dossier teamspeak3-server\_linux\_amd64

cd teamspeak3-server\_linux\_amd64

  
**7)** Démarrer le serveur Teamspeak  
(Lors du premier démarrage du serveur vous allez avoir un mot de passe qui va être généré. Pensez à noter ce mot de passe car sinon vous ne pourrez plus administré votre serveur.)

./ts3server\_startscript.sh start

\------------------------------------------------------------------ I M P O R T A N T------------------------------------------------------------------ Server Query Admin Account created loginname= "serveradmin", password= "xxxxxxxx"------------------------------------------------------------------------------------------------------------------------------------ I M P O R T A N T------------------------------------------------------------------ ServerAdmin privilege key created, please use it to gain serveradmin rights for your virtualserver. please also check the doc/privilegekey\_guide.txt for details. token=uKAu0N+RE8kRIAv9oa4twJgKjHRmyb4ehJtuH7fS------------------------------------------------------------------

  
**8)** Utiliser le token pour devenir administrateur

![](https://1.bp.blogspot.com/-5I3zlGO5VuM/XPLki5Nki8I/AAAAAAAAAO8/reIwVsrm2toRj9d1tLMa9q0ZH6POHPOiQCLcBGAs/s320/ts3_key.PNG)

Comment démarrer/arrêter le Teamspeak
-------------------------------------

Pour accéder a ces fonctionnalité exécuter le script ts3server\_startscript.sh suivie d'une option {start|stop|restart|status}

Par exemple:

./ts3server\_startscript.sh stop

  
C’est fini pour aujourd’hui ! Nous verrons dans un prochain article comment augmenter la capacité des slots via une demande de [licence à but non lucratif](http://npl.teamspeakusa.com/ts3npl.php) de votre serveur et comment automatiser l'installation avec [linuxgsm](https://github.com/dgibbs64/linuxgsm).  
  
**[hawkcreation.com](http://hawkcreation.com/installer-serveur-teamspeak-3-linux-ts3)**
