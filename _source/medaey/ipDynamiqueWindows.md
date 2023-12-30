---
layout: post
title: ipDynamiqueWindows
parent: Medaey
permalink: Medaey/ipDynamiqueWindows
---

**1)** Ouvrir une invitation de commandes en tant qu'administrateur:  

![](https://2.bp.blogspot.com/-anMG8Y79dA4/VmIW4TsJtcI/AAAAAAAAEXA/I6uWq2nx1cg/s1600/oem_1.png)  

  
**2)** Lister les interfaces réseau:  

netsh int show int

Normalement l'interface réseau utilisée par défaut se nomme "Connexion au réseau local".  
  
Pour avoir plus de détails sur vos interfaces réseau:  

netsh interface ip show config

  
**3)** Passer l'interface réseau en DHCP:  

netsh int ip set address "Connexion au réseau local" dhcp

Remplacer "Connexion au réseau local" par le nom de votre la carte réseau.  

  

**[microsoft.com](https://docs.microsoft.com/en-us/previous-versions/tn-archive/bb490939(v=technet.10))**
