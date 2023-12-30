---
layout: post
title: exécuter-les-outils-du-panneau-de-configuration-en-tapant-une-commande
parent: Lucian
permalink: Lucian/exécuter-les-outils-du-panneau-de-configuration-en-tapant-une-commande
---

RÉSUMÉ  
  
Cet article décrit comment exécuter des outils du Panneau de configuration dans Windows en tapant une commande lors d'une invite de commande ou dans la zone Ouvrir.  
  
Plus d'informations  
  
Pour exécuter un outil du Panneau de configuration dans Windows, tapez la commande appropriée dans la zone Ouvrir ou à l’invite de commande.  
  
Remarque : Si vous souhaitez exécuter une commande à partir d'une invite de commande, vous devez le faire à partir du dossier Windows. Notez également que votre ordinateur ne dispose peut-être pas de tous les outils répertoriés dans cet article, car votre installation de Windows n'inclut pas forcément tous ces composants.

| Control panel tool             | Command                                      |
|--------------------------------|----------------------------------------------|
| Accessibility Options          | control access.cpl                           |
| Add New Hardware               | control sysdm.cpl add new hardware           |
| Add/Remove Programs            | control appwiz.cpl                            |
| Date/Time Properties           | control timedate.cpl                          |
| Display Properties             | control desk.cpl                             |
| FindFast                       | control findfast.cpl                          |
| Fonts Folder                   | control fonts                                |
| Internet Properties            | control inetcpl.cpl                           |
| Joystick Properties            | control joy.cpl                              |
| Keyboard Properties            | control main.cpl keyboard                    |
| Microsoft Exchange             | control mlcfg32.cpl                           |
| (or Windows Messaging)         |                                              |
| Microsoft Mail Post Office     | control wgpocpl.cpl                           |
| Modem Properties               | control modem.cpl                             |
| Mouse Properties               | control main.cpl                             |
| Multimedia Properties          | control mmsys.cpl                             |
| Network Properties             | control netcpl.cpl (or Ncpa.cpl in Win NT 4.0)|
| Password Properties            | control password.cpl                          |
| PC Card                        | control main.cpl pc card (PCMCIA)            |
| Power Management (Windows 95)  | control main.cpl power                       |
| Power Management (Windows 98)  | control powercfg.cpl                          |
| Printers Folder                | control printers                             |
| Regional Settings              | control intl.cpl                              |
| Scanners and Cameras           | control sticpl.cpl                            |
| Sound Properties               | control mmsys.cpl sounds                      |
| System Properties              | control sysdm.cpl                             |

  
Remarque : l'applet Scanners et Appareils photo (sticpl.cpl) ne peut pas s'exécuter dans l'édition Windows Millennium. Il a été remplacé par le dossier Scanners et Appareils photos, dont le fonctionnement est similaire à celui de dossiers tels Imprimantes et Accès réseau à distance.  
  
Windows remplace le nom de l’outil que vous souhaitez exécuter pour %1 %. Par exemple :  

« appwiz.cpl shell32.dll,Control\_RunDLL de rundll32.exe ».  
  
Pour exécuter l'outil utilisateurs dans le panneau de configuration, tapez Ncpa.cpl, utilisateurs, de contrôle, puis appuyez sur ENTRÉE.  
  
Pour exécuter l'Outil utilisateurs pour Windows 95/98/Me, tapez «control inetcpl.cpl users » (sans les guillemets) et appuyez sur ENTRÉE.
