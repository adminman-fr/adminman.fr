---
layout: post
title: Windows - Installation silencieuse de logiciel
parent: windows
grand_parent: system
---

## Comment installer des logiciels sous Windows en mode silencieux ?
Nous couvrirons l'installation en mode silencieux de logiciels sous Windows , éliminant ainsi la nécessité d'effectuer des clics manuels fastidieux. 

### Qu'est-ce que l'installation silencieuse ?
L'installation silencieuse (Silent Install) est un processus d'installation de logiciels sur un ordinateur sans nécessiter l'intervention de l'utilisateur. Ce processus est généralement utilisé par les professionnels de l'informatique pour installer plusieurs applications logicielles à la fois. Il est également utilisé pour installer des applications à distance sur plusieurs machines.

##### VLC
Pour installer VLC en mode silencieux, suivez ces étapes :

1. Télécharger le fichier d'installation de VLC (par exemple, `vlc-3.0.19-win64.exe`).
2. Ouvrez l'invite de commande en tant qu'administrateur.
3. Naviguez vers le répertoire où se trouve le fichier d'installation de VLC.
4. Exécutez la commande suivante :
```cmd
.\vlc-3.0.19-win64.exe /S
```

##### Firefox
```
& '.\Firefox Setup 118.0.2.exe' /S
```

##### 7zip
```
.\7z2301-x64.msi
```

##### NotePad++
```
.\npp.8.5.8.Installer.x64.exe /S
```
Assurez-vous de télécharger les fichiers d'installation à partir des sources officielles pour des raisons de sécurité. 

---
sources :
- 📝[https://tech-lib.fr/installation-silencieuse/](https://tech-lib.fr/installation-silencieuse/)