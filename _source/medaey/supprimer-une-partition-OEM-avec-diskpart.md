---
layout: post
title: supprimer-une-partition-OEM-avec-diskpart
parent: Medaey
permalink: Medaey/supprimer-une-partition-OEM-avec-diskpart
---

**1)** Ouvrir une invitation de commandes en tant qu'administrateur  
![](https://2.bp.blogspot.com/-anMG8Y79dA4/VmIW4TsJtcI/AAAAAAAAEXA/I6uWq2nx1cg/s1600/oem_1.png)  
  
**2)** Lancer Diskpart dans l’invitation de commande

diskpart

![](https://4.bp.blogspot.com/-f0_QKTqBDmI/VmIW4RCWmmI/AAAAAAAAEXI/bRbD9UHJj0M/s1600/oem_2.png)  
  
**3)** Scanner l'ensemble des partitions, volumes, et disques durs avec la commande

rescan

![](https://1.bp.blogspot.com/-TNqdHGJGCzc/VmIW4Y0VaBI/AAAAAAAAEXE/eTUVNEfdp8I/s1600/oem_3.png)  
  
**4)** Afficher la liste des disques durs disponibles

list disk

![](https://4.bp.blogspot.com/-4kXgM7rqBzs/VmIW4hrJRuI/AAAAAAAAEXM/GS1d9mg2EpM/s1600/oem_4.png)  
  
**5)** Sélectionnez le disque contenant la partition à supprimer

sel disk 0

_(Cette commande sélectionne les disques **0** changer le chiffre par le disques que vous voulait sélectionner)_  
**_Attention à ne pas vous tromper de disque._**  
  
![](https://2.bp.blogspot.com/-wNnB5raMFE8/VmIW4y47-SI/AAAAAAAAEXU/R_2rJnqGNgg/s1600/oem_5.png)  
  
**6)** Lister les partitions disponibles sur ce disque dur

list part

![](https://1.bp.blogspot.com/-QrTFxm678To/VmIW4ybRZeI/AAAAAAAAEXQ/aPIWP-yFmYY/s1600/oem_6.png)  
  
**7)** Sélectionner la partition **OEM**

sel part 3

_(Attention au numéro de la partition dans mon cas c'est **3**, n'hésitez pas à sauvegarder vos données en cas de doute dans les numéros de disques / partitions.)_  
**_Attention à ne pas vous tromper de partition._**  
  
![](https://1.bp.blogspot.com/-eBE6hSgqWMk/VmIW5FC61CI/AAAAAAAAEXY/QQJdmuSWWJ8/s1600/oem_7.png)  
  
**8)** Supprimer la partition sélectionnée

del part override

 ![](https://4.bp.blogspot.com/-sFNmFfsaAsQ/VmIW5LdgpKI/AAAAAAAAEXc/NetTsrp-4Cg/s1600/oem_8.png)  
  
**9)** Vérifier que la partition a bien était supprimée

list part

_(Petite astuce vous pouvait rappeler les dernières commandes en appuyer sur la flèche du haut⬆️ de votre clavier.)_  
  
**[tech2tech.fr](https://www.tech2tech.fr/supprimer-une-partition-oem-sur-un-disque-dur)**
