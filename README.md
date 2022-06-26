#L.V.A.S.I.                                                   
Latest Version Auto Silent Install

------------------------------------------------------------		  
PRÉSENTATION 
------------------------------------------------------------

L.V.A.S.I. est un petit projet personnel qui répond à une envie :
Avoir un outil qui me permette de télécharger, d'installer
automatiquement et sans intervention de ma part, les logiciels dont
j'ai besoin dans leurs dernières versions. Ceci pour faciliter
l'acquisition ou la réinstallation d'un ordinateur.

L.V.A.S.I. fonctionne grâce à des scripts écrits sous PowerShell 3.
Il fonctionne donc exclusivement sous Windows.

N'y connaissant rien du tout avant de me lancer dans ce projet, j'ai
beaucoup écumé internet afin de trouver les réponses que je cherchais.
Au final, les scripts sont pour une bonne partie de moi, et de l'autre
quasi exclusivement basé sur le travail de Jason Bergner du site 
"SilentInstallHQ.com". C'est sont travail, qu'il met à disposition, que
j'ai utilisé pour au moins la moitié des logiciels.

Il est certain que les scripts ne sont pas optimisés, mais ils fonctionnent
c'est déjà une victoire pour moi. Mon objectif avec ce projet est
l'installation et non la mise à jour ou la désinstallation des logiciels,
je ne me suis donc pas attardé sur ces 2 dernières parties sur les scripts
de Jason Bergner.

Au 26/06/2022, 15 logiciels sont pris en charge

-------------------------------------------------
UTILISATION
-------------------------------------------------

Le fonctionnement est le suivant :

- Un script principal (LVASI.ps1) est chargé de servir d'interface avec l'utilisateur

- Un script pour chacun des logiciels pris en charge est présent dans le 
dossier "Logiciels"

+++ Éxécution +++

1°/ Pour que le script principal prenne en compte l'installation d'un
logiciel souhaité, il suffit de mettre le script de ce dernier, présent
dans le dossier "Logiciels" dans le même dossier que le script principal
à l'aide d'un copier/coller.

2°/ Lorsque les scripts des logiciels choisis sont tous mis dans le même
dossier que le script principal, il suffit de faire un clic-droit sur le
script principal "LVASI.ps1" et de choisir "Éxécuter avec PowerShell".

3°/ Une fenêtre Powershell s'ouvre alors et des instructions sont affichées
pour avant de lancer les installations.

ATTENTION : Le script demande de désactiver l'UAC avant de commencer, ceci
dans le but de ne pas être interrompu par Windows lors de l'éxécution de
certaines installations. Le script proposera de le réactiver à la fin du
processus.

4°/ Une fois les vaidations effectuées, le script procédera aux téléchargements
et installations des logiciels choisis. Un message s'affichera dans la console
pour indiqué si chaque logiciel a été installé ou non. (Un message apparaît
systématiquemet pour chaque logiciel pris en charge par L.V.A.S.I., même s'il
n'a pas été choisi, pour indiqué s'il sera, ou non, installé.)

5°/ Lorsque tout sera terminé, les fichiers téléchargés auront été supprimés,
mais suivant les logiciels installés, il restera peut-être un dossier nommé
"AppDeployToolkit" (situé dans le même dossier que le script principal), il
faudra le supprimer manuellement. Je n'ai pas encore réussi à le faire via le
script car certains éléments restent "utilisés" par Powershell.

-------------------------
NOTES 
-------------------------

- Les installations sont prévues sur un système 64-bit (le 32-bit étant
en train de disparaître). Seules quelques installations scriptées par 
Jason Bergner prennent en considération l'architecture de l'ordinateur
pour installer la bonne version (les scripts ont donc été modifiés pour qu'ils
téléchargent la version correspondant au système).

- Les installations sont prioritairement faites en français. Certains
logiciels s'adaptent à la langue du système, mais si le logiciel doit être
téléchargé dans une langue spécifique, c'est le français que j'ai choisi.

- J'ai écrit/modifier les scripts afin qu'ils téléchargent automatiquement
la dernière version du logiciel disponible. Les script de Jason Bergner, par
exemple, n'étaient pas prévus pour télécharger le logiciel avant l'installation.
Il fallait le faire manuellement, en 32 et 64-bit, avant le lancement du script.

- Le projet est bien entendu en "open-source", libre à vous de le modifier, le
compléter, l'améliorer, etc. Mon souhait ultime étant qu'il existe une interface
utilisateur pour faciliter son utilisation.

- N'hésitez pas à me contacter s'il y a des problèmes avec un ou plusieurs
scripts. N'hésitez pas non plus si vous souhaitez que j'ajoute un logiciel pris
en charge, j'essaierai de faire au mieux.

--------------------------------
CRÉDITS                      
--------------------------------

Un remerciement particulier à Jason Bergner pour son travail partagé sur son
site : https://silentinstallhq.com/
J'espère ne pas avoir trop dénaturé son travail en y apportant mes modifications.

L'auteur, moi-même, Sébastien FRANCOIS
