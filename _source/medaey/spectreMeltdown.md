---
layout: post
title: spectreMeltdown
parent: Medaey
permalink: Medaey/spectreMeltdown
---

Salutation dans cet article nous allons voir comment vérifier si vos machines sont vulnérables aux failles de sécurité spectre & Meltdown.  
_(Pour plus d'informations sur c'est 2 failles consultées les liens en bas de l’article)_ 

 **1\. Sous Windows 10**
------------------------

**1)** Lancez Powershell en mode administrateur et tapez les commandes suivantes :

Install-Module SpeculationControl

Set-ExecutionPolicy RemoteSigned

Import-Module SpeculationControl

Get-SpeculationControlSettings

_(Si il y a du rouge la machine est vulnérable --')_  
  
**2)** On remet les paramètres de sécurité par défaut une fois le résultat obtenu:

Set-ExecutionPolicy Default

_exemple de machine vulnérable Windows:_ ![](https://1.bp.blogspot.com/-P0FJmz7cG9U/YLVwTWmki4I/AAAAAAAAE-U/NGbjHqHrBmE_nEfybHtHvJLZFfxuLkhjACNcBGAsYHQ/s16000/fail_spectre.webp)

**2\. sous Linux**
------------------

wget https://raw.githubusercontent.com/speed47/spectre-meltdown-checker/master/spectre-meltdown-checker.sh

sudo sh spectre-meltdown-checker.sh

_exemple: Ci dessous une machine vulnérable._

![](https://1.bp.blogspot.com/--nFqcKiQ5dQ/YLVv1nrhmEI/AAAAAAAAE-M/BVo2xPuvePg3KHos9V85WJo4YA9ym-qngCNcBGAsYHQ/s16000/fail_specte_linux.webp)

Les seuls conseils à l'heure actuelle et de faire les mise à jour du BIOS, système d'exploitation et application.  

**[spectreattack.com](https://spectreattack.com/)**   
**[microsoft.com](https://support.microsoft.com/en-us/topic/windows-client-guidance-for-it-pros-to-protect-against-speculative-execution-side-channel-vulnerabilities-35820a8a-ae13-1299-88cc-357f104f5b11)**   
**[github.com](https://github.com/speed47/spectre-meltdown-checker)**
