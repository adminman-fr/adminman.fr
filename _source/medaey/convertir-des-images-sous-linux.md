---
layout: post
title: convertir-des-images-sous-linux
parent: Medaey
permalink: Medaey/convertir-des-images-sous-linux
---

**1)** Mettre à jour les dépôts & paquets

    sudo apt-get update && sudo apt-get upgrade -y

  
**2)** Installer les paquets ghostscript & ImageMagisk

    sudo apt-get install ghostscript imagemagick

Pour tester, il suffit de convertir un .png en .svg

_exemple 1:_

    convert poulet.png poulet.svg

_exemple 2:_

    convert /home/user/Images/avatar.jpg /home/user/Images/avatar.pdf

**[ubuntu-fr.org](https://doc.ubuntu-fr.org/imagemagick)**
