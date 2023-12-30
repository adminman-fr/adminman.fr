---
layout: post
title: changer-la-configuration-dns-windows
parent: Medaey
permalink: Medaey/changer-la-configuration-dns-windows
---

**1)** Ouvrir une invitation de commandes en tant qu'administrateur  
![](https://1.bp.blogspot.com/-JBaNCPNeyyQ/YLVrX1gy7LI/AAAAAAAAE9k/6OwGki9dSkU02qwYa2OZzSZVvNr6zy0rwCPcBGAYYCw/s478/oem_1.webp)  
  
**2)** Lister les interfaces réseau disponible
```batch
netsh int show int
```
**À ce stade 2 choix s’offrent à vous**
---------------------------------------
*   Récupérer l’adresse ip des DNS via votre DHCP de façon dynamique étape **5\***
*   Définir le DNS avec des adresses Ip statique étape **3,4**
  
**3)** Définir le DNS primaire **8.8.8.8** sur l'interface réseau **connexion au réseau local**
```batch
netsh int ip set dnsservers "Connexion au réseau local" static 8.8.8.8 primary
```
_(Remplacer **connexion au réseau local** par le nom de l'interface que vous souhaitez modifier & **8.8.8.8** par l’adresse IP du dns voulut.)_  
  
**4)** Définit le DNS secondaire sur l'ip **8.8.4.4**
```batch
netsh int ip add dns "Connexion au réseau local" 8.8.4.4 2
```
_(Le 2 à la fin veut dire 2éme dns et il est possible d'en définir un 3éme 4éme dns etc....)_  
  
**5\*)** Récupérer l'ip dynamique fourni par votre DHCP
```batch
netsh int ip set dnsservers name="Connexion au réseau local" source=dhcp
```
  
**6\*)** Réinitialiser la configuration réseau
```batch
netsh int ip reset
```
**[wikipedia.org](https://fr.wikipedia.org/wiki/Netsh)**
