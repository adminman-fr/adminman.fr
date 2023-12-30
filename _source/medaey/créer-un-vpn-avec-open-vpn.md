---
layout: post
title: créer-un-vpn-avec-open-vpn
parent: Medaey
permalink: Medaey/créer-un-vpn-avec-open-vpn
---

### **1.Mise en place du serveur**

**1)** Télécharger le script d’installation

wget https://raw.githubusercontent.com/Angristan/OpenVPN-install/master/openvpn-install.sh

  
**2)** Ajouter le droit d’exécuter le script

chmod +x openvpn-install.sh

  
**3)** Lance l'installation

./openvpn-install.sh

_(il suffi de suivre le script =p)_  
  
**4)** Ouvrir le port 1194 en udp

ufw allow 1194/udp

_(bien sur si vous changer le port du service openvpn, il faudra ouvre un autre port)_  
  
**5)** Ajouté ou supprimer des utilisateurs puis relancer le script

./openvpn-install.sh

### **2.Client sous linux**

*   Téléchager le fichier **client.ovpn** qui est sur votre serveur, avec [Filezilla](https://filezilla-project.org/download.php?type=client) ou [winscp](https://winscp.net/eng/download.php).
*   Installé le client openvpn et c'est dépendance

sudo aptitude install openvpn resolvconf network-manager-openvpn-gnome

_(**R****edémarrer** la machine pour finaliser l'installation.)_

*   Clique gauche sur l’icône réseau du **Tableau de bord > Connexions VPN > Configurer le VPN > Importer**.  
      
    

###  **3.Client sous Windows**

*   Téléchager le fichier **client.ovpn** qui est sur votre serveur, avec [Filezilla](https://filezilla-project.org/download.php?type=client) ou [winscp](https://winscp.net/eng/download.php).
*   Télécharger le client [OpenVpn](https://openvpn.net/index.php/open-source/downloads.html).
*   Importer le fichier **client.ovpn**, icône de notification **open vpn > clic droit > importer fichier**  
    

**[github.com](https://github.com/Angristan/OpenVPN-install)**
