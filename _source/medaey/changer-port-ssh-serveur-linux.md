---
layout: post
title: changer-port-ssh-serveur-linux
parent: Medaey
permalink: Medaey/changer-port-ssh-serveur-linux
---

**1)** Mettre à jour votre serveur:
```bash
apt-get update && apt-get upgrade -y
```

**2)** Installer la commande nano:

```bash
apt-get install nano
```


**3)** Éditer le fichier /etc/ssh/sshd\_config:

```bash
sudo nano /etc/ssh/sshd\_config
```


**4)** Modifier la ligne port & indiquer le port que vous voulez utiliser pour la connexion ssh:

![](https://4.bp.blogspot.com/-2FSgr_6bWGA/Vsmwv-QDmII/AAAAAAAAADQ/UTFGyCOA2Kg/s1600/Port_65468.png)

(Par exemple le port 65468)


**5)** Redémarrer le service sshd:

```bash
sudo service sshd restart
```


**6)** Installer le pare-feu ufw:

```bash
sudo apt-get install ufw
```


**7)** Autoriser le nouveau port ssh dans le pare-feu:

```bash
sudo ufw allow 65468/tcp
```

(Bien sûr changer **65468** par le port que vous avez indiqué à l'étape **4**)  

**8)** Vérifier que les règles du pare-feu:
```bash
sudo ufw status numbered
```

**9)** Active le pare-feu:

```bash
sudo ufw enable
```

 

(Attention si vous vos étés trompés vous risquez de ne plus pouvoir vous connecter en ssh sur le serveur, alors revérifier l'étape **4** & **8**)  

**10)** Redémarrer le services sshd:

```bash
/etc/init.d/sshd restart
```

Voilà c'est fini, il ne reste plus qu'à se connecter en ssh sur le nouveau port ssh.  

**[korben.info](https://korben.info/tuto-ssh-securiser.html#)**
