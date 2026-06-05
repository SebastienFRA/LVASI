@echo off
chcp 65001 >nul
echo ========================================
echo   LVASI - Script de compilation
echo ========================================
echo.

REM Verifier .NET SDK
where dotnet >nul 2>&1
if %errorlevel% neq 0 (
    echo ERREUR: .NET SDK non trouve. Installez .NET 9 SDK.
    pause
    exit /b 1
)

echo [1/4] Compilation de l'application WPF (LVASI)...
dotnet build LVASI\LVASI.csproj -c Release
if %errorlevel% neq 0 (
    echo ERREUR: Echec de la compilation LVASI.
    pause
    exit /b 1
)

echo.
echo [2/4] Publication de LVASI en single-file...
dotnet publish LVASI\LVASI.csproj -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -o publish-fd-embedded
if %errorlevel% neq 0 (
    echo ERREUR: Echec de la publication LVASI.
    pause
    exit /b 1
)

echo.
echo [3/4] Copie de LVASI.exe vers le Bootstrapper...
copy /Y publish-fd-embedded\LVASI.exe Bootstrapper\LVASI.exe >nul

echo.
echo [4/4] Compilation du Bootstrapper...
dotnet build Bootstrapper\Bootstrapper.csproj -c Release
if %errorlevel% neq 0 (
    echo ERREUR: Echec de la compilation du Bootstrapper.
    pause
    exit /b 1
)

echo.
echo [5/5] Creation du dossier final...
if not exist publish-final mkdir publish-final
copy /Y Bootstrapper\bin\Release\net48\Bootstrapper.exe publish-final\LVASI.exe >nul

echo.
echo ========================================
echo   Compilation terminee !
echo   Fichier final: publish-final\LVASI.exe
echo ========================================
pause
