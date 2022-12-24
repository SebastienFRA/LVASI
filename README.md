# L.V.A.S.I. - Latest Version Auto Silent Install

![](https://img.shields.io/badge/Platform-Windows--64-lightgrey) ![](https://img.shields.io/badge/Powershell-darkblue?logo=powershell) ![GitHub](https://img.shields.io/github/license/SebastienFRA/LVASI?label=License) [![GitHub release (latest by date)](https://img.shields.io/github/v/release/SebastienFRA/LVASI?label=Release)](https://github.com/SebastienFRA/LVASI/releases/latest) [![GitHub all releases](https://img.shields.io/github/downloads/SebastienFRA/LVASI/total?color=g&label=Github%20Downloads)](https://github.com/SebastienFRA/LVASI/releases/latest)  [![Download LVASI](https://img.shields.io/sourceforge/dt/lvasi.svg?label=SourceForge%20Downloads)](https://sourceforge.net/projects/lvasi/)  
[![Twitter](https://img.shields.io/badge/Follow%20me-1DA1F2?style=flat&logo=twitter&logoColor=white)](https://twitter.com/intent/follow?original_referer=https%3A%2F%2Fpublish.twitter.com%2F&ref_src=twsrc%5Etfw%7Ctwcamp%5Ebuttonembed%7Ctwterm%5Efollow%7Ctwgr%5EPuma_n&region=follow_link&screen_name=Puma_n)  
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

As of 12/16/2022, [221 softwares are supported](https://github.com/SebastienFRA/LVASI/blob/main/Liste.md). 

[![Télécharger](https://github.com/SebastienFRA/LVASI/blob/main/img/Download_light.png)](https://github.com/SebastienFRA/LVASI/releases/download/v2.49/LVASI_v2.49.exe)


[![Demo CountPages alpha](https://github.com/SebastienFRA/LVASI/blob/main/img/LVASI_v2.48.gif)](https://youtu.be/ux5MgNagxnU)

---
**FEATURES:**
---

- It is possible to install the selection of software:  
  *LVASI downloads software, installs and deletes downloaded files*

- It is possible to only download the selection:  
  *LVASI downloads the software in a dedicated folder*
 
- It is possible to install what was previously downloaded:  
  *LVASI installs all software in the download folder. Files are not deleted after installation*
  
  [**Full guide here**](https://github.com/SebastienFRA/LVASI/blob/main/LVASI%20-%202.1%2B%20-%20AIDE.md)

-------------------------
NOTES 
-------------------------
- ⚠ If you are using LVASI on a newly purchased or reinstalled PC, it is necessary to open Internet Explorer (not Edge) for the first time in order to accept internet access. If you don't, downloads won't work.

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

- The LVASI icon comes from the flaticon site [here](https://www.flaticon.com/free-icon/software_4196389)

-------------------------
IN CASE OF PROBLEM :
-------------------------

LVASI creates a log file named "LVASI_logfile.txt" where the errors it encounters are written, you can take a look at it or send it to me by reporting the errors you encounter. Unfortunately, sometimes downloads and installations do not work without LVASI reporting an error.
- If software does not install / download:
   - The download may simply have failed. ➡ Restarting the installation / downloading of the software may be sufficient.
   - Download link fetching by LVASI may be outdated. ➡ Notify me of the software that is causing the problem so that I can rectify it.

- If the downloaded software weighs only a few KB (its installation will therefore not work):
   - Download link fetching by LVASI may be outdated. ➡ Notify me of the software that is causing the problem so that I can rectify it.

- To report an error, you can:
   - Open an issue [here](https://github.com/SebastienFRA/LVASI/issues), it allows everyone to see that someone has already posted the problem encountered.
   - Contact me by [mail](mailto:sebastien.lvasi@gmail.com)
   - Contact me via [Twitter](https://twitter.com/Puma_n)


--------------------------------
CREDITS                      
--------------------------------

Special thanks to Jason Bergner for his shared work on his website:
https://silentinstallhq.com/

The author, myself, Sébastien FRANCOIS  
  
  <a href='https://ko-fi.com/V7V7EJIL4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
