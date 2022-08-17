# L.V.A.S.I. - Latest Version Auto Silent Install

![](https://img.shields.io/badge/Platform-Windows--64-lightgrey) ![GitHub](https://img.shields.io/github/license/SebastienFRA/LVASI?label=License) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/SebastienFRA/LVASI?label=Release) ![GitHub Release Date](https://img.shields.io/github/release-date/SebastienFRA/LVASI?label=Release%20Date) ![GitHub all releases](https://img.shields.io/github/downloads/SebastienFRA/LVASI/total?color=g&label=Github%20Downloads)  [![Download LVASI](https://img.shields.io/sourceforge/dt/lvasi.svg?label=SourceForge%20Downloads)](https://sourceforge.net/projects/lvasi/files/latest/download)
------------------------------------------------------------	
PRESENTATION 
------------------------------------------------------------
**Version française [ici](https://github.com/SebastienFRA/LVASI/blob/main/LISEZ-MOI.MD)**

L.V.A.S.I. was born from a desire to have a tool that allows me to download,
install automatically and without intervention on my part, the software
I need in their latest versions. This is to facilitate the acquisition
or reinstallation of a computer.

Knowing nothing about code before embarking on this project, I
scoured the internet a lot to find the answers I was looking for.
I used Jason Bergner's "SilentInstallHQ.com" site a lot.

As of 08/14/2022, [142 softwares are supported](https://github.com/SebastienFRA/LVASI/blob/main/Liste.md). **Get help [here](https://github.com/SebastienFRA/LVASI/blob/main/LVASI%20-%202.1%2B%20-%20HELP.md)** 

[![Demo CountPages alpha](https://github.com/SebastienFRA/LVASI/blob/main/img/LVASI%202.3.gif)](https://youtu.be/ux5MgNagxnU)

-------------------------
NOTES 
-------------------------

- ⚠ Sometimes Windows detects LVASI as unwanted (not systematically). It's a false positive, I don't know why but nothing in the code is malicious. LVASI only downloads installation files from official sources and nothing else. Maybe because of checking for an LVASI update on startup? I don't have the answer yet.

- Installations are planned on a 64-bit system (32-bit being phased out).

- The installations are primarily made in French. Some software adapts to the language
of the system, but if the software must be downloaded in a specific language, it is
French that I have chosen.

- I wrote the scripts so that they automatically download the latest software version
available.

- The project is of course in "open-source", you are free to modify it, complete it,
improve it, etc.

- Feel free to contact me if there are any problems downloading or installing. I will try to solve the problem
as quickly as possible.

- In "online mode", for OpenOffice and Geforce Experience, 7-zip is required. If you don't have it, LVASI installs it during the process and then uninstalls it.

- LVASI works thanks to a PowerShell script that I make executable thanks to WIN-PS2EXE available on Github [here](https://github.com/MScholtes/Win-PS2EXE).

--------------------------------
CREDITS                      
--------------------------------

Special thanks to Jason Bergner for his shared work on his website:
https://silentinstallhq.com/

The author, myself, Sébastien FRANCOIS
