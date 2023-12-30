---
layout: post
title: désactiver-mises-a-jour-windows
parent: Medaey
permalink: Medaey/désactiver-mises-a-jour-windows
---

**1)** Ouvrir une invitation de commandes en tant qu'administrateur  

![](https://1.bp.blogspot.com/-JBaNCPNeyyQ/YLVrX1gy7LI/AAAAAAAAE9g/Q10pYJsCoEwU3q1OA1SUPLuQ-MvIW4yFwCNcBGAsYHQ/s16000/oem_1.webp)  

**2)** Arrêter le service de mise à jour Windows:
```
sc stop wuauserv
```
**3)** Désactiver le redémarrage automatique sur service de mise à jour:
```
sc config wuauserv start= disabled
```
**Pour effectuer de nouveau les mise à jour**

**4\*)** Réactiver le démarrage automatique du service windows update:
```
sc config wuauserv start= auto
```
  
**5\*)** Démarre le services windows update:
```
sc start wuauserv
```
  

**[microsoft.com](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc990290(v=ws.10))**   
**[windows-commandline.com](https://www.windows-commandline.com/start-stop-windows-update-service/)**
