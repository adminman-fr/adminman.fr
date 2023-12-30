---
layout: post
title: utiliser-le-bureau-à-distance-raspberry-avec-windows
parent: Medaey
permalink: Medaey/utiliser-le-bureau-à-distance-raspberry-avec-windows
---

Hello on va utiliser l’outil mstsc (protocole RDP) pour se connecter au bureau distant d'un Raspberry pi.

**1\. Installer xrdp & tighvncserver**
--------------------------------------

**1)** Mettre à jour les dépôts & paquets

    sudo apt-get update && sudo apt-get upgrade -y

  
**2)** Installer les paquets xrdp & tightvncserver

sudo apt-get install xrdp tightvncserver

  
**3)** Ouvrir le port RDP

ufw allow 3389/tcp

**2\. Connexion depuis le PC Windows**
--------------------------------------

Sur tous les PC Windows, l'outil "Connexion Bureau à distance" est installé de basse sur l'ordinateur.

![](https://1.bp.blogspot.com/-0i8W3TB4yeQ/YLVuzJTXK7I/AAAAAAAAE98/On7hHxBsO7EpjeiXOBl13q_IivMfjgeAACNcBGAsYHQ/s16000/mstsc.webp?format=webp)

 Choisir Xvnc.

![](https://1.bp.blogspot.com/-qqVsnWEMfEM/YLVuOkqVAMI/AAAAAAAAE90/ul6weesQSoEi7B7QpqCxS3uP7Mjvz2SNwCNcBGAsYHQ/s0/xrdp.webp?format=webp)

L'accès au bureau à distance devrait donner ceci.![](https://1.bp.blogspot.com/-lDYmKz6jl94/YLVvFCDI9BI/AAAAAAAAE-E/BkpoNLVgYFI3XkpYq7TBs14dYN6TkAMigCNcBGAsYHQ/s16000/desktop_rasbian.PNG.webp?format=webp) 

S'il y a des latences avec l'interface graphique, il faut réduire la résolution d'affichage.![](https://1.bp.blogspot.com/-O8y8oDIhNzc/YLVuOsIFuJI/AAAAAAAAE9w/IWBmZa4owO0OWrq7nyXdEf97_aAtIc46gCNcBGAsYHQ/w344-h400/resolution_mstsc.webp?format=webp)

N’oubliez pas que le GPU du RaspberryPi est un Broadcom VideoCore IV, ne lui en demander pas trop ;)  
  
**[raspberry-lab.fr](https://raspberry-lab.fr/Debuter-sur-Raspberry-Francais/Connexion-Bureau-a-distance-Raspberry-Francais/)**
