---
layout: post
title: ubuntu-comment-obtenir-une-liste-de-tous-les-services-au-démarrage
parent: Lucian
permalink: Lucian/ubuntu-comment-obtenir-une-liste-de-tous-les-services-au-démarrage
---

`initctl list`  
  
  
`+` = En cours d’exécution, `-` = Arrêté. `?` = géré par upstart  
  
  
Commande utile.  
  
initctl list | egrep -v " stop/waiting|^tty" ; service --status-all 2>&1 | egrep -v "\\[ (\?|\-) \\]"
