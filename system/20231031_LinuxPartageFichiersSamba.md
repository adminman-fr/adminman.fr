---
layout: post
title: Samba - Partager un dossier sous linux
parent: linux
grand_parent: system
---

{% include youtubePlayer.html id="dQw4w9WgXcQ" %}

# Comment crée un dossier partager avec samba pour windows ?
## 1.Installer samba
##### Mettre à jour les dépôts & paquets
```bash
# Debian
sudo apt-get update && sudo apt-get upgrade -y
```
ou
```bash
# AlpineLinux
apk update && apk upgrade
```

##### Installe le paquet samba
```bash
# Debian
sudo apt-get install samba
```
ou
```bash
# AlpineLinux
apk add samba samba-common-tools
```

## 2.Configurer samba
##### Créer un dossier pour le partage
```bash
mkdir /media/storage
```

##### Ajouter les droits sur le dossier de partage
```bash
chown 0777 /media/storage
```

##### Faire une sauvegarde du fichier de configuration **smb.conf**
```
mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
```

##### Crée un nouveau fichier de configuration pour samba
```
vi /etc/samba/smb.conf
```
```bash
# /etc/samba/smb.conf
[global]
        workgroup = WORKGROUP
        dos charset = cp850
        unix charset = ISO-8859-1
        force user = sysadmin

[storage]
        browseable = yes
        writeable  = yes
        path       = /media/storage

```

##### Crée un nouvel utilisateur unix
Nous allons ensuite créer l'utilisateur unix que nous souhaitons utiliser pour notre partage
```bash
adduser sysadmin
```

##### Crée un nouvel utilisateur samba
l'on créera cet utilisateur une deuxième fois pour samba
```
smbpasswd -a sysadmin
```

#####  Ajouter le service samba à chaque démarrage
```bash
# Debian
sudo systemctl enable samba
```
ou
```bash
# AlpineLinux
rc-update add samba
```

##### Redémarre le service samba
```bash
# Debian
sudo /etc/init.d/smbd restart
```
ou
```bash
# AlpineLinux
rc-service samba restart
```

#####  *Ouvre le port 445
```
sudo ufw allow 445/tcp
```

##### Connexion au partage
Connectez-vous au partage via explorer de fichier, tapez @ip du serveur linux dans un explorateur de fichier ou la fenétre Exécuter (Win + R).

![localImage](/assets/images/20231031_WindowsExecuteIpServer.webp) 
---
sources:
- 📝[https://www.malekal.com/monter-partage-windows-linux-samba/](https://www.malekal.com/monter-partage-windows-linux-samba/)
- 📝[https://doc.ubuntu-fr.org/samba](https://doc.ubuntu-fr.org/samba)
- 📝[https://youtu.be/YWnqIE4cbfg](https://youtu.be/YWnqIE4cbfg)
