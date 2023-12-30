---
layout: post
title: supprimer-un-profil-utilisateur-windows
parent: Medaey
permalink: Medaey/supprimer-un-profil-utilisateur-windows
---

Sur les versions récentes de Windows, pour supprimer un profil utilisateur il ne suffit pas de supprimer le dossier du profils utilisateurs (par défaut : C:\Users). Si vous procédez comme cela et que l'utilisateur se connecte à nouveau, un profil temporaire sera crée.  
Il est donc préférable de supprimer les profil utilise proprement.  
  

Pour supprimé correctement un profile utilisateur il y a 2 méthode.

**1\. La méthode simple** 
--------------------------

**1)** Touche Windows + R pour afficher la console d'exécution Windows

**2)** Tapez la commande **sysdm.cpl ,3**

**![](https://1.bp.blogspot.com/-uTtIysjlByw/YLVywZpdlyI/AAAAAAAAE-c/6W40WBHNivYfbRFM4Eo56NtXPfD3YOFZgCNcBGAsYHQ/s16000/sysdm_cpl_3.webp)**

**3****)** Aller dans les **Paramètres** utilisateurs  

![](https://1.bp.blogspot.com/-sYrcma4ZpUw/YLV0QpVxF7I/AAAAAAAAE-s/4c-1on4w9uoA_kH_uYqVozG3RZxs2_PoQCNcBGAsYHQ/s16000/profil_des_utilisateurs_param%25C3%25A8tres.webp)

**4)** Supprimer le profil utilisateur

![](https://1.bp.blogspot.com/-W5WCkurISDo/YLVy5L_tleI/AAAAAAAAE-g/27auMofxSwUwOxkyX3RIJyUlMh4RDkwOwCNcBGAsYHQ/s16000/del_user.webp)

_(Attention si l'option supprimer est gris redémarrer le pc en mode sans échec et connecter vous avec le compte administrateur local)_

**2\. La méthode manuel**
-------------------------

**1\*)** Cette méthode consiste à supprimer à la main, dossier et clef de registre de l'utilisateur

**2\*)** Supprimer le dossier de l'utilisateur concerner, il ce situe dans C:\Users (ou C:\Utilisateurs) 

**3\*)** Trouver & supprimer les clefs de registre de l'utilisateur elle sont situé dans

**HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList**

**![](https://1.bp.blogspot.com/-rdyyifOlLG8/YLV1EMU3IEI/AAAAAAAAE-0/nEw3r-BHgtIzFiOn4zs_xrOwrg002C9PACNcBGAsYHQ/s16000/atfry-x1l5r.webp)**

 **4\*)** Une fois les clef de registre **S-1-X-X-XX...** de l’utilisateur que vous souhaite supprimer localisée, **faire un clic droit supprimer.**

**![](https://1.bp.blogspot.com/-Zp5E5Dck91s/YLV1TIpLVeI/AAAAAAAAE-4/f5yAC_oJgOIpbqacqBvWW5mjkvUJDhfoACNcBGAsYHQ/s16000/ajbuf-3llhk.webp)**

**[it-connect.fr](https://www.it-connect.fr/windows-supprimer-correctement-un-profil-utilisateur/)**   
**[gland.fr](https://www.gland.fr/2016/07/comment-faire-pour-executer-les-outils.html)**
