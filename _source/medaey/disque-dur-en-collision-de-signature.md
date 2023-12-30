---
layout: post
title: disque-dur-en-collision-de-signature
parent: Medaey
permalink: Medaey/disque-dur-en-collision-de-signature
---

**1)** Ouvrir une invitation avec les droits administrateur

![](https://2.bp.blogspot.com/-anMG8Y79dA4/VmIW4TsJtcI/AAAAAAAAEXA/I6uWq2nx1cg/s1600/oem_1.png)

  

**2)** Lancer Diskpart dans l'invitation de commande
```
diskpart
```
![](https://4.bp.blogspot.com/-f0_QKTqBDmI/VmIW4RCWmmI/AAAAAAAAEXI/bRbD9UHJj0M/s1600/oem_2.png)

  

**3)** Lister les disques durs disponibles
```
list disk
```
  
**4)** Sélectionnez le disque dur hors connexion
```
select disk 3
```
![](https://3.bp.blogspot.com/-kxgTy4ERjqA/WKL7FM8PT5I/AAAAAAAAAF8/JMUSo98EQzIcfaWb9C0GgNcofHwc1zShwCEw/s1600/selectdisk3.png)

  
_Changer **3** par le numéro du disque dur hors connexion, **a****ttention à ne pas vous tromper de disque**._

  

**5)** Afficher l' ID du disque
```
uniqueid disk
```
![](https://2.bp.blogspot.com/-eyaCnqDAoXw/WKL7FW6HXMI/AAAAAAAAAGE/eUY5GQ5gfcclCUR0571Oa_qfC4ctOGETwCEw/s1600/uniqueid_disk.png)

  

**6)** Choisir un nouvel ID, le plus simple est de recopier l'ancien ID en modifiant un digit (digit devant être compris entre **0** et **9** et **a** et **f**)  
exemple: ancien ID -> 01E87CE0 -> nouvel ID 01E87CE1 (0 remplacé par 1)
```
uniqueid disk ID=01E87CE1 
```
![](https://3.bp.blogspot.com/-sYOlRzfa-Uo/WKL7FZqKPhI/AAAAAAAAAGY/URTonJSPEMAw-lBn9Wa-0Dh3UzZY9SxtQCPcBGAYYCw/s1600/uniqueid_disk_id.png)

  

**7)** Vérifier que le nouvel ID est bien pris en compte
```
uniqueid disk
```
![](https://4.bp.blogspot.com/-KVJ2SyqttvY/WKL7Ff-5gcI/AAAAAAAAAGY/YyPhNCBwG2IOWxIL1qpE1QO2pnwybka_wCPcBGAYYCw/s1600/uniqueid_disk_result.png)

  
**8)** Il ne reste plus qu'à **déconnecter/reconnecter** le disque dur, il devrait de nouveaux être utilisables.

**[microsoft.com](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc730793(v=ws.11))**
