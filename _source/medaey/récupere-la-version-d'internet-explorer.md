---
layout: post
title: récupere-la-version-d'internet-explorer
parent: Medaey
permalink: Medaey/récupere-la-version-d'internet-explorer
---

Pour connaitre la version d'IE nous allons lire une clef de registre avec une commande.  
  
**1)** Ouvrir une invitation de commandes
![](https://1.bp.blogspot.com/-HDsZCBueiVY/YLV8edgphBI/AAAAAAAAE_k/K6aYO5PRaM8ylKddvwDziPRA4vZUn97VgCNcBGAsYHQ/s16000/av8kq-oa341.webp)

  
**2)** Lire la clef de registre **svcVersion** via cette commande
```regedit
reg query "HKEY\_LOCAL\_MACHINE\Software\Microsoft\Internet Explorer" /v svcVersion
```
![](https://1.bp.blogspot.com/-wMJKHnsqDI4/WcKYyJmwedI/AAAAAAAAAG8/HhLslHzZia49SRntiMh7Dva7kyWS6_pKACLcBGAs/s640/KB_IE-Version_check_002.jpg) 

**[spiceworks.com](https://community.spiceworks.com/how_to/66459-get-ie-version-from-command-line)**
