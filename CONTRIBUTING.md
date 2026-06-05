# LVASI - Guide de compilation

## Prérequis
- **.NET 9 SDK** (https://dotnet.microsoft.com/download/dotnet/9.0)
- **.NET Framework 4.8 Developer Pack** (inclus dans Visual Studio ou SDK Windows)
- **Git** (optionnel, pour cloner le projet)

## Fichiers/dossiers requis à la racine

```
LVASI/
├── build.bat                    ← Script de compilation
├── global.ico                   ← Icône de l'application
├── LVASI/                       ← Projet WPF principal
│   ├── LVASI.csproj
│   ├── App.xaml / MainWindow.xaml
│   ├── Data/
│   │   └── software.json        ← Catalogue des logiciels
│   ├── Logos/                   ← Logos des logiciels (*.png)
│   ├── CategoryIcons/           ← Icônes des catégories (*.png)
│   ├── Lang/                    ← Fichiers de traduction (*.json)
│   ├── Flags/                   ← Drapeaux des langues (*.png)
│   └── (autres fichiers .cs, .xaml...)
└── Bootstrapper/                ← Projet .NET Framework 4.8
    ├── Bootstrapper.csproj
    ├── Program.cs
    ├── InstallForm.cs
    ├── app.manifest
    └── LVASI.exe                ← Généré automatiquement par build.bat
```

## Compilation

Double-cliquez sur **`build.bat`** à la racine du projet.

Le script :
1. Compile l'application WPF (LVASI)
2. La publie en single-file framework-dependent
3. Copie l'exe dans le dossier Bootstrapper
4. Compile le Bootstrapper (qui embarque LVASI.exe)
5. Produit le fichier final dans `publish-final\LVASI.exe`

## Résultat

Le fichier `publish-final\LVASI.exe` (~93 Mo) est un exe unique qui :
- Vérifie la présence de .NET 9 Desktop Runtime
- Propose de l'installer si absent
- Lance l'application LVASI

## Notes
- Les fichiers `software.json`, logos, langues, etc. sont **embarqués** dans l'exe (EmbeddedResource).
- Pour modifier le catalogue, éditez `LVASI/Data/software.json` puis recompilez.
- Le Bootstrapper est en .NET Framework 4.8 car il doit fonctionner sur tout Windows sans runtime supplémentaire.
