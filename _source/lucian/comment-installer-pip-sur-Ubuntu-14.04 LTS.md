---
layout: post
title: comment-installer-pip-sur-Ubuntu-14.04 LTS
parent: Lucian
permalink: Lucian/comment-installer-pip-sur-Ubuntu-14.04 LTS
---

PIP c'est quoi?
---------------

Pip est un système de gestion de paquets utilisé pour installer et gérer des librairies écrites en Python. Vous pouvez trouver une grande partie de ces librairies dans le [Python Package Index](https://pypi.python.org/pypi "Python pip")  (ou PyPI). Pip empêche les installations partielles en annonçant toutes les exigences avant l'installation.  

Installer pip
-------------

Pour installer pip il vous faudra exécuter la commande:

sudo apt\-get install python\-pip

Et pour python 3:

sudo apt\-get install python3\-pip



------------------------------------------------------------------------------------------------------------------------------------------------------

Que fait PIP
------------

Pip vous permet d'installer une librarie aussi facilement que cela:

pip install django

Facile!

Vous pouvez choisir la version qui vous intéresse:

pip install django\==1.8

Supprimer une lib:

pip uninstall django

Mettre à jour une lib:

pip install django --upgrade

Downgrader une version:

pip install django\==1.7 \--upgrade

Rechercher une nouvelle lib

pip search django

Vous indique quels lib n'est plus à jour:

pip list --outdated

Affiche toutes les lib installées et leur version

pip freeze

Si vous exportez cette liste, vous pouvez la réimporter ailleurs:

pip freeze \> lib.txt

Puis vous l'importez comme ceci:

pip install \-r lib.txt

Pour créer un gros zip qui contient toutes les dépendances:

pip bundle <nom\_du\_bundle\>.pybundle \-r lib.txt

Puis pour installer les lib

pip install <nom\_du\_bundle\>.pybundle

* * *

Pour plus d'infos vous pouvez regarder la doc officielle: **[PIP](http://pip.readthedocs.org/en/latest/index.html#)** 


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
