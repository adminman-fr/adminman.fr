---
layout: post
title: partager-un-dossier-linux-vers-windows
parent: Medaey
permalink: Medaey/partager-un-dossier-linux-vers-windows
---

**1.Installer samba**
=====================

**1)** Mettre à jour les dépôts & paquets

    sudo apt-get update && sudo apt-get upgrade -y

  
**2)** Installe le paquet samba

sudo apt-get install samba

**2.Configurer samba**
======================

**3)** Crée un nouvel utilisateur pour le partage

sudo adduser poulet

  
**4)** Définir le mot de passe de l'utilisateur poulet pour se connecter au dossier partagé

    sudo smbpasswd -a poulet

  
**5)** Créer un dossier pour le partage

mkdir /partage

  
**6)** Ajouter les droits sur le dossier de partage

sudo chown poulet /partage

  
**7)** Faire une sauvegarde du fichier de configuration **smb.conf**

sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.bak

**8)** Crée un nouveau fichier de configuration pour samba

sudo nano /etc/samba/smb.conf

_exemple: smb.config_

\[Partage\] path=/partage browseable=yes valid users = root poulet michel robert read only=no

  
**9)** Redémarre le service samba

sudo /etc/init.d/smbd restart

  
**10)** Ajouter le service samba à chaque démarrage

    sudo systemctl enable samba

  
**11)** Ouvre le port 445

sudo ufw allow 445/tcp

3.Connexion au partage
======================

**12)** Connectez-vous au partage via explorer de fichier, tapez **\\@ip du pc\_linux**

![](https://1.bp.blogspot.com/-2p8f6akzlVY/YLVtbsJdnNI/AAAAAAAAE9o/FZzAw8SZ7MECT5UrPUFz5VXx8Us1KlaNQCNcBGAsYHQ/s16000/partage.webp) 

**[ubuntu-fr.org](https://doc.ubuntu-fr.org/samba)**
