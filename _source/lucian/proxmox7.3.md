---
layout: post
title: proxmox7.3
parent: Lucian
permalink: Lucian/proxmox7.3
---

# Setting proxmox7.3-3

## Add repository No-Subscription
Go to the menu "Update > Repositories > Add" and Select the Repository *No-Subscription*

## Disable repository entreprise
Go to the menu "Update > Repositories > pve-enterprise > Disable > Reload "

## Script to remove pop-up

```bash
vi /root/remove-popup.sh
```
```bash
#! /bin/bash
# Patch du fichier JS
sed -i.bak "s/.data.status.toLowerCase() !== 'active') {/.data.status.toLowerCase() !== 'active') { orig_cmd\(\); } else if ( false ) {/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
# Restart PVE Web
systemctl restart pveproxy.service
# Restart PBS Web
systemctl restart proxmox-backup-proxy.service
```
```bash
chmod +x /root/remove-popup.sh
```

## Sources
[Activer les mises à jour sans abonnement](https://youtu.be/jwwNLBoSk3c)
[Désactiver le message You do not have valid subscription](https://www.linuxtricks.fr/wiki/proxmox-desactiver-le-message-you-do-not-have-valid-subscription)
