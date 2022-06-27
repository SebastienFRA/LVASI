#L.V.A.S.I.                                                   
Latest Version Auto Silent Install

------------------------------------------------------------		  
PRESENTATION 
------------------------------------------------------------

L.V.A.S.I. is a small personal project that responds to a desire:
To have a tool that allows me to download, install automatically and
without intervention on my part, the software I need in their latest
versions. This is to facilitate the acquisition or reinstallation of
a computer.

L.V.A.S.I. works thanks to scripts written under PowerShell 5. It
therefore works exclusively under Windows.

Knowing nothing about it at all before embarking on this project,
I scoured the internet a lot to find the answers I was looking for.
In the end, the scripts are for a good part of me, and the other almost
exclusively based on the work of Jason Bergner from the website
"SilentInstallHQ.com". It is his work, which he makes available, that
I have used for at least half of the software.

It is certain that the scripts are not optimized, but they work it is
already a victory for me. My focus with this project is installing and
not updating or uninstalling software, so I didn't dwell on those last
2 parts about Jason Bergner's scripts.

As of 06/26/2022, 15 software are supported

-------------------------------------------------
USE
-------------------------------------------------

The operation is as follows:

-  A main script (LVASI.ps1) is responsible for serving as an interface
with the user

- A script for each of the supported software is present in the "Software"
folder

+++ Execution +++

- First unzip the file in the folder of your choice.

- For the main script to take into account the installation of a desired
software, simply put the script of the latter, present in the "Logiciels"
folder in the same folder as the main script using a copy /to stick on.

- When the scripts of the chosen software are all put in the same folder as
the main script, just right-click on the main script "LVASI.ps1" and choose
"Run with PowerShell".

- A Powershell window then opens and instructions are displayed for before
launching the installations.

WARNING: The script asks to disable UAC before starting, this in order not to
be interrupted by Windows during the execution of certain installations. The
script will offer to re-enable it at the end of the process.

- Once the validations have been carried out, the script will proceed with the
downloads and installations of the chosen software. A message will be displayed
in the console to indicate whether each software has been installed or not. (A
message appears systematically for each software supported by L.V.A.S.I., even
if it has not been chosen, to indicate whether or not it will be installed.)

- When everything is finished, the downloaded files will have been deleted, but
depending on the software installed, there may remain a folder named "AppDeployToolkit"
(located in the same folder as the main script), it will have to be deleted manually.
I haven't managed to do it through the script yet because some elements remain "used"
by Powershell.

-------------------------
NOTES 
-------------------------

- Installations are planned on a 64-bit system (32-bit being phased out). Only a few
installations scripted by Jason Bergner take into consideration the architecture of
the computer to install the correct version (the scripts have therefore been modified
so that they download the version corresponding to the system).

- The installations are primarily made in French. Some software adapts to the language
of the system, but if the software must be downloaded in a specific language, it is
French that I have chosen.

- I wrote/modified the scripts so that they automatically download the latest software
version available. Jason Bergner's scripts, for example, were not intended to download
software before installation. It had to be done manually, in 32 and 64-bit, before
launching the script.

- The project is of course in "open-source", you are free to modify it, complete it,
improve it, etc. My ultimate wish being that there is a user interface to make it easier
to use.

- Feel free to contact me if there are any issues with one or more scripts. Also feel
free if you want me to add supported software, I'll try to do my best.

--------------------------------
CREDITS                      
--------------------------------

A special thanks to Jason Bergner for his work shared on his website:
https://silentinstallhq.com/ I hope not to have distorted his work too much by making
my modifications.

The author, myself, Sébastien FRANCOIS
