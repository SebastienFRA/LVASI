# L.V.A.S.I. - Latest Version Auto Silent Install

![](https://img.shields.io/badge/Platforme-Windows--64-lightgrey) ![GitHub](https://img.shields.io/github/license/SebastienFRA/LVASI?label=License) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/SebastienFRA/LVASI?label=Version) [![GitHub all releases](https://img.shields.io/github/downloads/SebastienFRA/LVASI/total?color=g&label=Téléchargement%20Github)](https://github.com/SebastienFRA/LVASI/releases/latest) [![Download LVASI](https://img.shields.io/sourceforge/dt/lvasi.svg?label=Téléchargements%20SourceForge)](https://sourceforge.net/projects/lvasi/files/latest/download)  
[![Twitter](https://img.shields.io/badge/Suivez--moi-1DA1F2?style=flat&logo=twitter&logoColor=white)](https://twitter.com/intent/follow?original_referer=https%3A%2F%2Fpublish.twitter.com%2F&ref_src=twsrc%5Etfw%7Ctwcamp%5Ebuttonembed%7Ctwterm%5Efollow%7Ctwgr%5EPuma_n&region=follow_link&screen_name=Puma_n)  
------------------------------------------------------------		  
PRÉSENTATION :
------------------------------------------------------------

L.V.A.S.I. est né d'une envie d'avoir un outil qui me permette de télécharger,
d'installer automatiquement et sans intervention de ma part, les logiciels dont
j'ai besoin dans leur dernière version. Ceci dans le but de faciliter l'acquisition
ou la réinstallation d'un ordinateur.

Ne connaissant rien au code avant de me lancer dans ce projet, j'ai
beaucoup parcouru internet pour trouver les réponses que je cherchais.
J'ai beaucoup utilisé le site "SilentInstallHQ.com" de Jason Bergner.

Au 01/09/2022, [202 logiciels sont supportés](https://github.com/SebastienFRA/LVASI/blob/main/Liste.md). **Obtenir de l'aide [ici](https://github.com/SebastienFRA/LVASI/blob/main/LVASI%20-%202.1%2B%20-%20AIDE.md)** 

[![Demo CountPages alpha](https://github.com/SebastienFRA/LVASI/blob/main/img/LVASI_2.42.gif)](https://youtu.be/ux5MgNagxnU)

-------------------------
NOTES :
-------------------------

- ⚠ Il arrive que Windows détecte LVASI comme indésirable (pas systématiquement). C'est un faux positif, je ne sais pas pourquoi mais rien dans le code n'est malveillant. LVASI se contente de télécahrger les fichier d'installation depuis les sources officielles et rien d'autre. Peut-être à cause de la vérification d'une mise à jour de LVASI au démarrage ?  Je n'ai pas encore la réponse.

- LVASI n'est compatible qu'avec les systèmes 64bit.

- Les installations sont prévues pour être faite en français. Certains logiciels s'adaptent à la langue
du système, mais si le logiciel doit être téléchargé dans une langue spécifique, c'est
français que j'ai choisi.

- J'ai écrit les scripts pour qu'ils téléchargent automatiquement la dernière version disponible du logiciel.

- Le projet est bien entendu "open-source", vous êtes libre de le modifier, de le compléter,
l'améliorer, etc.

- N'hésitez pas à me contacter s'il y a des problèmes de téléchargemnt ou d'installation. J'essaierai de résoudre le problème
aussi vite que possible.

- En "mode en ligne ", pour OpenOffice et Geforce Experience, 7-zip est requis. Si vous ne l'avez pas, LVASI l'installe le temps du processus et le désinstalle ensuite.

- LVASI fonctionne grâce à un script PowerShell que je rend exécutable grace à WIN-PS2EXE disponible sur Github [ici](https://github.com/MScholtes/Win-PS2EXE).

- L'icône de LVASI provient du site flaticon [ici](https://www.flaticon.com/free-icon/software_4196389)

-------------------------
EN CAS DE PROBLEME :
-------------------------

LVASI créée un fichier log nommé "LVASI_logfile.txt" où y sont inscrit les erreurs qu'il rencontre, vous pouvez y jeter un oeil ou me le transmettre en signalant les erreurs que vous rencontrez.  Malheureusement, il arrive que des téléchargements et installations ne fonctionnent pas sans que LVASI ne relève d'erreur. 
- Si un logiciel ne s'installe pas / ne se télécharge pas :
   - Le téléchargement peut tout simplement avoir échoué. ➡ Relancer l'installation / téléchargement du logiciel peut suffir.
   - La récupération du lien de téléchargement par LVASI peut être obsolète. ➡ Me signaler le logiciel qui pose problème pour que je rectifie.

- Si le logiciel téléchargé ne pèse que quelques ko (son installation ne fonctionnera donc pas) :
   - La récupération du lien de téléchargement par LVASI peut être obsolète. ➡ Me signaler le logiciel qui pose problème pour que je rectifie.

- Pour me signaler une erreur, vous pouvez :
   - Ouvrir une issue [ici](https://github.com/SebastienFRA/LVASI/issues), ça permet à tout le monde de voir que quelqu'un a déjà posté le problème rencontré.
   - Me contacter par [mail](mailto:sebastien.lvasi@gmail.com)
   - Me contacter via [Twitter](https://twitter.com/Puma_n)
 
--------------------------------
CREDITS :                      
--------------------------------

Remerciements particuliers à Jason Bergner pour son travail partagé sur son site :
https://silentinstallhq.com/

L'auteur du projet, moi-même : Sébastien FRANCOIS

<a href='https://ko-fi.com/V7V7EJIL4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
