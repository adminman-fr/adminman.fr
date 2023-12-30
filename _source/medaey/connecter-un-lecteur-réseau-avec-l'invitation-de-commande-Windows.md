---
layout: post
title: connecter-un-lecteur-réseau-avec-l'invitation-de-commande-Windows
parent: Medaey
permalink: Medaey/connecter-un-lecteur-réseau-avec-l'invitation-de-commande-Windows
---

**1)** Ouvrir une invitation de commandes en tant qu'administrateur  

![](https://2.bp.blogspot.com/-anMG8Y79dA4/VmIW4TsJtcI/AAAAAAAAEXA/I6uWq2nx1cg/s1600/oem_1.png)  

  
**2)** Saisir le chemin d’accès réseau  

net use G: \\gland\dossier\_a\_lire

_(Remplacer **G:** par le lecteur souhaiter et **\\gland\dossier\_a\_lire** par votre chemin d’accès réseau)_  
  
**3\*)** Déconnecter un lecteur réseau

net use G: /delete

_(Remplacer **G:** par le lecteur que vous souhaiter déconnecter)_  
  

**[microsoft.com](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/gg651155(v=ws.10))**
