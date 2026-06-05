@echo off
setlocal enabledelayedexpansion

title LVASI - Installation

:: Check if running as admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrateur requis. Relancement avec elevation...
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)

:: Check if .NET 9 Desktop Runtime is installed (by directory presence)
echo Verification de .NET 9 Desktop Runtime...
if exist "%ProgramFiles%\dotnet\shared\Microsoft.WindowsDesktop.App\9.*" goto :run
if exist "%ProgramFiles(x86)%\dotnet\shared\Microsoft.WindowsDesktop.App\9.*" goto :run

:: Try checking via dotnet --list-runtimes
dotnet --list-runtimes 2>nul | findstr "WindowsDesktop.App 9." >nul
if %errorlevel% equ 0 goto :run

echo .NET 9 Desktop Runtime non trouve. Telechargement...
set RUNTIME_URL=https://aka.ms/dotnet/9.0/windowsdesktop-runtime-win-x64.exe
set INSTALLER=%TEMP%\dotnet9-runtime.exe

echo Telechargement du runtime .NET 9...
curl -L -o "%INSTALLER%" "%RUNTIME_URL%" 2>&1
if %errorlevel% neq 0 (
    echo Erreur de telechargement.
    echo Veuillez installer manuellement :
    start "" "https://dotnet.microsoft.com/en-us/download/dotnet/9.0"
    pause
    exit /b 1
)

echo Installation du runtime...
"%INSTALLER%" /install /quiet /norestart
del "%INSTALLER%"

echo Installation terminee.

:run
echo Demarrage de LVASI...
start "" "%~dp0LVASI.exe"