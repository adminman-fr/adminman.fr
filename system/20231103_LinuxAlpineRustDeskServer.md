---
layout: post
title: RustDesk - Créer un serveur sous Alpine Linux
parent: linux
grand_parent: system
---
## Créer un serveur RustDesk sous Alpine Linux
⏩ Pas le temps ? Faites un copier-coller des deux commandes ci-dessous pour créer un serveur RustDesk sous Alpine Linux.

```bash
adduser -g "rustdesk" rustdesk
```

```bash
mkdir -p \
/var/lib/rustdesk \
/tmp/rustdesk && \
chown -R rustdesk:rustdesk /var/lib/rustdesk/ && \
wget https://github.com/rustdesk/rustdesk-server/releases/latest/download/rustdesk-server-linux-amd64.zip -P /tmp/rustdesk/ && \
unzip /tmp/rustdesk/rustdesk-server-linux-amd64.zip -d /tmp/rustdesk/ && \
cd /tmp/rustdesk/amd64 && ./hbbr -V ; ./hbbs -V && \
cp /tmp/rustdesk/amd64/* /usr/bin/ &&\
cat > /etc/init.d/hbbs <<EOL
#!/sbin/openrc-run
# /etc/init.d/hbbs

directory="/var/lib/rustdesk"
description="Serveur de relais RustDesk"
command_background="yes"
pidfile="/var/run/hbbs.pid"
command="/usr/bin/hbbs"
command_args="-k _"
user_homedir="/home/rustdesk"
command_user="rustdesk:rustdesk"
output_log="/dev/null"
error_log="/dev/null"

depend() {
  need localmount
  use net
}

start_pre() {
  checkpath --directory \$output_log
  checkpath --directory \$error_log
}
EOL

cat > /etc/init.d/hbbr <<EOL
#!/sbin/openrc-run
# /etc/init.d/hbbr

directory="/var/lib/rustdesk"
description="Service RustDesk ID"
pidfile="/var/run/hbbr.pid"
command="/usr/bin/hbbr"
command_args=""
command_user="rustdesk:rustdesk"
command_background="yes"
output_log="/dev/null"
error_log="/dev/null"

depend() {
  need localmount
  use net
}

start_pre() {
  checkpath --directory \$output_log
  checkpath --directory \$error_log
}
EOL
chmod +x /etc/init.d/hbb* && \
rc-update add hbbr && \
rc-update add hbbs && \
rc-service hbbr restart ; rc-service hbbs restart && \
htop || apk add htop && \
ls /var/lib/rustdesk && \
cat /var/lib/rustdesk/id_ed25519.pub
```

---

Voici le détail des commande à effectuer pour créer le serveur.

## Configuration de SSH sur le conteneur Alpine Linux

Pour configurer SSH sur le conteneur Alpine Linux, vous pouvez exécuter les commandes suivantes :

```bash
setup-sshd
-> openssh
-> yes
-> none
```

## Récupération de l'IP du serveur pour la connexion SSH

Pour obtenir l'adresse IP du serveur et vous connecter en SSH, utilisez la commande suivante :

```bash
ip a
```

## Téléchargement et installation des binaires RustDesk

Pour télécharger et installer les binaires de RustDesk, suivez les étapes ci-dessous :

```bash
# Créez un utilisateur RustDesk
adduser -g "rustdesk" rustdesk

# Créez un dossier pour stocker la base de données et les clés de chiffrement RustDesk
mkdir -p /var/lib/rustdesk

# Accordez les autorisations nécessaires à l'utilisateur RustDesk pour le répertoire
chown -R rustdesk:rustdesk /var/lib/rustdesk/

# Créez le répertoire /tmp/rustdesk
mkdir -p /tmp/rustdesk

# Téléchargez les binaires Linux de RustDesk dans le répertoire temporaire
wget https://github.com/rustdesk/rustdesk-server/releases/latest/download/rustdesk-server-linux-amd64.zip -P /tmp/rustdesk/

# Décompressez les binaires dans le répertoire temporaire
unzip /tmp/rustdesk/rustdesk-server-linux-amd64.zip -d /tmp/rustdesk/

# Vérifiez l'exécution correct et la version des binaires
cd /tmp/rustdesk/amd64/ && ./hbbr -V ; ./hbbs -V

# Copiez les binaires dans le répertoire des programmes installés sur le système
cp /tmp/rustdesk/amd64/* /usr/bin/
```

ℹ️ Le port 21116 est le seul qui doit être impérativement autorisé en TCP et UDP. Pour être plus précis, voici comment les ports sont utilisés d'après la documentation officielle:

```bash
- 21115 est utilisé pour tester le type de NAT.
- 21116/UDP est utilisé pour l'enregistrement de l'ID et le service heartbeat.
- 21116/TCP est utilisé pour le service de connexion.
- 21117 est utilisé pour les services de relais.
- 21118 et 21119 sont utilisés pour les clients Web, donc ces deux ports ne sont pas forcément nécessaires.
```
## Création des services hbbs et hbbr sous OpenRC

Pour créer les services hbbs et hbbr sous OpenRC, vous pouvez utiliser les scripts suivant :

### Service hbbs

```bash
#!/sbin/openrc-run
# /etc/init.d/hbbs

directory="/var/lib/rustdesk"
description="Serveur de relais RustDesk"
command_background="yes"
pidfile="/var/run/hbbs.pid"
command="/usr/bin/hbbs"
command_args="-k _"
user_homedir="/home/rustdesk"
command_user="rustdesk:rustdesk"
output_log="/dev/null"
error_log="/dev/null"

depend() {
  need localmount
  use net
}

start_pre() {
  checkpath --directory $output_log
  checkpath --directory $error_log
}
```

### Service hbbr

```bash
#!/sbin/openrc-run
# /etc/init.d/hbbr

directory="/var/lib/rustdesk"
description="Service RustDesk ID"
pidfile="/var/run/hbbr.pid"
command="/usr/bin/hbbr"
command_args=""
command_user="rustdesk:rustdesk"
command_background="yes"
output_log="/dev/null"
error_log="/dev/null"

depend() {
  need localmount
  use net
}

start_pre() {
  checkpath --directory $output_log
  checkpath --directory $error_log
}
```

## Configuration des services OpenRC

Pour configurer les services OpenRC, exécutez les commandes suivantes :

```bash
chmod +x /etc/init.d/hbb*
rc-update add hbbr
rc-update add hbbs
rc-service hbbr restart
rc-service hbbs restart
```

## Vérification du serveur RustDesk

Pour vérifier que le serveur RustDesk fonctionne correctement l'on peut utiliser les commandes suivantes :

```bash
# Liste des processus en temps réel avec htop et installation de htop si la commande n'existe pas
htop || apk add htop

# Liste des  fichiers de basse de donnéer et des clés de chiffrement du serveur RustDesk
ls /var/lib/rustdesk

# Affichage de la clé publique que les administrateurs doivent utiliser pour prendre la main sur un post
cat /var/lib/rustdesk/id_ed25519.pub
```

⚠️ La clé publique, générée dans le fichier `id_ed25519.pub` permet de prendre le contrôle à distance des autres ordinateurs connectés au serveur. Dans l'optique où nous voulons être les seuls à avoir la capacité de prendre le contrôle à distance, cette clé doit donc rester connue uniquement du service informatique. ⚠️

Si un utilisateur tente de prendre la main à distance sur un autre poste via son ID il obtiendra l'erreur **Discordance des clés**.

![localImage](/assets/images/20231103_RustdeskErrorKeys.png)



## Exécution manuelle des binaires RustDesk

Si, pour une raison quelconque, le service RustDesk ne démarre pas, vous pouvez toujours exécuter manuellement les binaires pour effectuer des tests :

```bash
# Accédez au répertoire contenant la base de données SQLite3 et les clés id_ed25519
cd /var/lib/rustdesk

# Exécutez les binaires manuellement pour effectuer des tests
hbbs 0.0.0.0 -k _
hbbr -k _
```



---

Sources :
- 📝[https://rustdesk.com/docs/en/](https://rustdesk.com/docs/en/)
- 📝[https://www.it-connect.fr/rustdesk-lalternative-open-source-a-teamviewer-que-lon-peut-auto-heberger/](https://www.it-connect.fr/rustdesk-lalternative-open-source-a-teamviewer-que-lon-peut-auto-heberger/)
- 📝[https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user](https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user)
- 📝[https://github.com/OpenRC/openrc/blob/master/service-script-guide.md](https://github.com/OpenRC/openrc/blob/master/service-script-guide.md)
- 📝[https://rebootinformatique.org/tutos/cours/fichiers_systeme/co/arborescence.html](https://rebootinformatique.org/tutos/cours/fichiers_systeme/co/arborescence.html)