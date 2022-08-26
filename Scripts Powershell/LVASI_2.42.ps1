Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase, System.Windows.Forms, System.Drawing 
[xml]$XML = @"
<Window 
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

    Title="L.V.A.S.I. : Installez simplement ... et toujours la dernière version ! - Simply install ... and always the latest version!" Height="550" Width="900" ScrollViewer.VerticalScrollBarVisibility="Disabled" MinWidth="900" MinHeight="550" MaxWidth="900" MaxHeight="550">
 
    <Grid>

    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Right" Height="120" Margin="0,10,5,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="210" ToolTip="Selection">
    <Bold>--- SÉLECTION ---</Bold>
    </TextBlock>
    
    <Button Name="sebselect" Content="Essentiels" VerticalAlignment="Top" Margin="0,40,61,0" FontSize="14" Height="28" HorizontalAlignment="Right" Width="98" ToolTip="Essentials"/>

    <Button Name="decocher" Content="Tout décocher" VerticalAlignment="Top" Margin="0,80,61,0" FontSize="14" Height="28" HorizontalAlignment="Right" Width="98" ToolTip="Uncheck all"/>

    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Right" Height="120" Margin="0,135,5,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="210" ToolTip="Online Mode">
    <Bold>--- MODE EN LIGNE ---</Bold>
    </TextBlock>

    <Button Name="installer" Content="Installer" ToolTipService.ShowOnDisabled="True" ToolTip="Télécharger et installer la sélection.&#10;Download and install selection." IsEnabled="False" VerticalAlignment="Top" Margin="0,165,61,0" FontSize="14" Height="28" HorizontalAlignment="Right" Width="98"/>

    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Right" Height="120" Margin="0,195,5,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="210">
    <Bold>------</Bold>
    </TextBlock>

    <Button Name="telecharger" IsEnabled="False" ToolTipService.ShowOnDisabled="True" ToolTip="Télécharger la sélection sans l'installer.&#10;Download the selection without installing it." Content="Télécharger" VerticalAlignment="Top" Margin="0,220,61,0" FontSize="14" Height="28" HorizontalAlignment="Right" Width="98" />
    
    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Right" Height="150" Margin="0,275,5,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="210" ToolTip="Offline mode">
    <Bold>--- MODE HORS LIGNE ---</Bold>
    </TextBlock>

    <Button Name="check" ToolTip='Vérifier le contenu du dossier "LVASI - Téléchargements".&#10;Check the contents of the "LVASI - Téléchargements" folder.' Content="🔁"
    VerticalAlignment="Top" Margin="0,305,95,0" FontSize="18" Height="28" HorizontalAlignment="Right" Width="28" />

    <Button Name="offinstaller" ToolTipService.ShowOnDisabled="True" ToolTip="Installer les logiciels téléchargés précédemment.&#10;Install previously downloaded software." Content="Installer" IsEnabled="False" VerticalAlignment="Top" Margin="0,345,61,0" FontSize="14" Height="28" HorizontalAlignment="Right" Width="98" />

    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Right" Height="200" Margin="0,395,5,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="210">
    <Bold>--- CONTACT ---</Bold>
    <LineBreak />
    <LineBreak />
    <Hyperlink Name="mygithub">Github</Hyperlink> / <Hyperlink Name="mymail">Mail</Hyperlink> / <Hyperlink Name="mytwitter">Twitter</Hyperlink>
    </TextBlock>

    <TextBlock FontSize="14" TextAlignment="Center" HorizontalAlignment="Center" Height="20" Margin="0,0,0,2" TextWrapping="Wrap" VerticalAlignment="Bottom" Width="400">
    Version 2.42 du 26 août 2022 <Italic>(170 logiciels supportés)</Italic>
    </TextBlock>

    <Grid>
        <TabControl TabStripPlacement="Left" Margin="5,0,210,25" FontSize="14" HorizontalContentAlignment="Left">

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="📦 Compression" ToolTip="Compression"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="szip" Content="7-Zip" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="bandizip" Content="Bandizip" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="peazip" Content="Peazip" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30" >
            <TabItem.Header>
            <TextBlock Text="📄 Documents" ToolTip="Documents"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="calibre" Content="Calibre" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="drawio" Content="Draw.io" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="evernote" Content="Evernote" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="homebank" Content="HomeBank" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="joplin" Content="Joplin" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="kindlepc" Content="Kindle PC" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="kobodesktop" Content="Kobo Desktop" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="libreoffice" Content="LibreOffice" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="maxicompte" Content="MaxiCompte" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="openoffice" Content="OpenOffice" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="pdf24" Content="PDF24 Creator" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="pdfcreator" Content="PDFCreator" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="sigil" Content="Sigil" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="sumatrapdf" Content="SumatraPDF" HorizontalAlignment="Left" Margin="10,309,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="teamworks" Content="TeamWorks" HorizontalAlignment="Left" Margin="10,332,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🔬 Éducation" ToolTip="Education"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="celestia" Content="Celestia" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="gcompris" Content="GCompris" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="geogebra" Content="GeoGebra" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="klavaro" Content="Klavaro" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="qalculate" Content="Qalculate!" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="stellarium" Content="Stellarium" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30" >
            <TabItem.Header>
            <TextBlock Text="🎮 Jeux" ToolTip="Games"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="bluestacks" Content="BlueStacks 4" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="epicgamestore" Content="Epic Game Store" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="geforce" Content="GeForce Experience" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="geforcenow" Content="GeForce Now" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="goggalaxy" Content="GOG Galaxy" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="noxplayer" Content="NoxPlayer" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="origin" Content="Origin" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="playnite" Content="PlayNite" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="retroarch" Content="RetroArch" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="romstation" Content="RomStation" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="steam" Content="Steam" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="xbox" Content="Xbox 🧰" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
            </Grid>
            </TabItem>

            <TabItem Height="30" >
            <TabItem.Header>
            <TextBlock Text="🖼 Images" ToolTip="Pictures"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="fileoptimizer" Content="FileOptimizer" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="gimp" Content="Gimp" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="imageglass" Content="ImageGlass" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="inkscape" Content="Inkscape" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="krita" Content="Krita" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="photofiltre" Content="PhotoFiltre 7 ℹ" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top" ToolTip="Logiciel sans installation, ne peut être que téléchargé.&#10;Software without installation, can only be downloaded."/>
                <CheckBox Name="xnview" Content="XnView" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30" >
            <TabItem.Header>
            <TextBlock Text="✉ Messageries" ToolTip="Messaging"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="androidmessages" Content="Android Messages Desktop" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="caprine" Content="Caprine" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="discord" Content="Discord" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="messenger" Content="Facebook Messenger" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="ferdi" Content="Ferdi" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="signal" Content="Signal" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="slack" Content="Slack" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="telegram" Content="Telegram" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="thunderbird" Content="Thunderbird" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="tweeten" Content="Tweeten" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="viber" Content="Viber" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="whatsapp" Content="WhatsApp" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="zoom" Content="Zoom" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🎵 Audio" ToolTip="Audio"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="amazonmusic" Content="Amazon Music 🧰" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="audacity" Content="Audacity" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="clementine" Content="Clementine" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="deezer" Content="Deezer" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="itunes" Content="iTunes" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="mediamonkey" Content="MediaMonkey" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="musescore" Content="MuseScore" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="musicbee" Content="MusicBee 🧰" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="spotify" Content="Spotify" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="strawberry" Content="Strawberry" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="tunein" Content="TuneIn" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="winamp" Content="Winamp" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="youtubemusic" Content="Youtube Music" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🎬 Vidéo" ToolTip="Video"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="qkvd" Content="4K Video Downloader" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="disney" Content="Disney + 🧰" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="handbrake" Content="HandBrake" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="klitebasic" Content="K-Lite Codec Pack (basic)" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="klitestd" ToolTip="MediaPlayerClassic-HC inclus" Content="K-Lite Codec Pack (standard)" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="klitemega" ToolTip="MediaPlayerClassic-HC inclus" Content="K-Lite Codec Pack (mega)" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="kdenlive" Content="Kdenlive" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="kodi" Content="Kodi" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="mpcbe" Content="MediaPlayerClassic-BE" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="mpchc" Content="MediaPlayerClassic-HC" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="mkvtoolnix" Content="MKVToolNix" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="netflix" Content="Netflix 🧰" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="obsstudio" Content="OBS Studio" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="openshot" Content="OpenShot" HorizontalAlignment="Left" Margin="10,309,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="plexmediaserver" Content="Plex Media Server" HorizontalAlignment="Left" Margin="10,332,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="primevideo" Content="Prime Vidéo 🧰" HorizontalAlignment="Left" Margin="10,355,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="screentogif" Content="ScreenToGif" HorizontalAlignment="Left" Margin="10,378,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="sharex" Content="ShareX" HorizontalAlignment="Left" Margin="10,401,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="shotcut" Content="Shotcut" HorizontalAlignment="Left" Margin="10,424,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="vlc" Content="VLC" HorizontalAlignment="Left" Margin="10,447,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="📐 3D" ToolTip="3D"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="tdbuilder" Content="3D Builder 🧰" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="blender" Content="Blender" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="cura" Content="Cura" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="freecad" Content="FreeCAD" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="fusion360" Content="Fusion360" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="ideamaker" Content="ideaMaker" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="lycheeslicer" Content="Lychee Slicer" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="prusaslicer" Content="PrusaSlicer" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="sweethome" Content="Sweet Home 3D" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🌎 Navigateurs" ToolTip="Web browsers"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="brave" Content="Brave" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="chrome" Content="Chrome" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="chromium" Content="Chromium" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="firefox" Content="Firefox" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="opera" Content="Opera" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="thor" Content="Thor ℹ" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top" ToolTip="Thor ne s'installe pas comme les autres logiciels, son installation créé un dossier sur le bureau.&#10;Thor does not install like other software, its installation creates a folder on the desktop."/>
                <CheckBox Name="vivaldi" Content="Vivaldi" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="waterfox" Content="Waterfox" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="💻 Dev" ToolTip="Dev"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="directx" Content="DirectX" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="filezilla" Content="FileZilla" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="github" Content="Github Desktop" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="godotengine" Content="Godot Engine ℹ" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top" ToolTip="Logiciel sans installation, ne peut être que téléchargé.&#10;Software without installation, can only be downloaded."/>
                <CheckBox Name="notepad" Content="NotePad++" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="putty" Content="Putty" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="python" Content="Python" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="visualcode" Content="Visual Studio Code" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="winget" Content="WinGet ℹ" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top" ToolTip="Nécessaire pour installer les applications du Store avec LVASI (notées avec 🧰) &#010;Déjà présent dans Windows 11 et les récentes versions de Windows 10&#10;Required to install Store apps with LVASI (denoted with 🧰) &#010;Already present in Windows 11 and recent versions of Windows 10"/>
                <CheckBox Name="winscp" Content="WinSCP" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🚑 Sécurité / Santé" ToolTip="Safety / Health"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="adwcleaner" Content="ADWCleaner ℹ" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" ToolTip="Logiciel sans installation, ne peut être que téléchargé.&#10;Software without installation, can only be downloaded."/>
                <CheckBox Name="avgfree" Content="AVG Free" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="bitwarden" Content="Bitwarden" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="bleachbit" Content="Bleachbit" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="ccleaner" Content="CCleaner" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="expressvpn" Content="ExpressVPN" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="glary" Content="Glary Utilities" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="keepass" Content="KeePass 2.x" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="malwarebytes" Content="Malwarebytes" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="nordvpn" Content="NordVPN" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="spybot" Content="Spybot" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="veracrypt" Content="VeraCrypt" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="wisediskmanager" Content="Wise Disk Manager" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="📥 Téléchargements" ToolTip="Downloads"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="deluge" Content="Deluge" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="fdm" Content="Free Download Manager" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="jdl" Content="JDownloader" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="qbittorrent" Content="qBittorrent" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="transmission" Content="Transmission" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="☁ Cloud" ToolTip="Cloud"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="gdrive" Content="Google Drive" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="megasync" Content="MEGAsync" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="nextcloud" Content="Nextcloud" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="owncloud" Content="ownCloud" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="synctrayzor" Content="SyncTrayzor" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="🛠 Outils" ToolTip="Tools"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="balena" Content="BalenaEtcher" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="burnaware" Content="BurnAware" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="cdburnerxp" Content="CDBurnerXP" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="everything" Content="Everything" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="flameshot" Content="Flameshot" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="hpsmart" Content="HP Smart 🧰" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top" ToolTip="Application du Store, peut nécessiter d'installer WinGet (dans l'onglet 'Dev')&#010;Ne peut être qu'installé en 'Mode En ligne'&#10;Store app, may need to install WinGet (in 'Dev' tab) Can only be installed in 'Online Mode'"/>
                <CheckBox Name="kdeconnect" Content="KDEConnect" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="mediainfo" Content="MediaInfo" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="netlimiter" Content="NetLimiter" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="parsec" Content="Parsec" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="pushbullet" Content="PushBullet" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="qtranslate" Content="QTranslate" HorizontalAlignment="Left" Margin="10,263,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="qtt" Content="QTTabBar" HorizontalAlignment="Left" Margin="10,286,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="raspberrypi" Content="RaspberryPiImager" HorizontalAlignment="Left" Margin="10,309,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="recuva" Content="Recuva" HorizontalAlignment="Left" Margin="10,332,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="rescuezilla" Content="Rescuezilla ℹ" HorizontalAlignment="Left" Margin="10,355,0,0" VerticalAlignment="Top" ToolTip="Image disque, ne peut être que téléchargé.&#10;Disk image, can only be downloaded."/>
                <CheckBox Name="revo" Content="RevoUninstaller" HorizontalAlignment="Left" Margin="10,378,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="rufus" Content="Rufus ℹ" HorizontalAlignment="Left" Margin="10,401,0,0" VerticalAlignment="Top" ToolTip="Logiciel sans installation, ne peut être que téléchargé.&#10;Software without installation, can only be downloaded."/>
                <CheckBox Name="snappydriver" Content="Snappy Driver Installer Origin ℹ" HorizontalAlignment="Left" Margin="10,424,0,0" VerticalAlignment="Top" ToolTip="Logiciel sans installation, ne peut être que téléchargé.&#10;Software without installation, can only be downloaded."/>
                <CheckBox Name="speccy" Content="Speccy" HorizontalAlignment="Left" Margin="10,447,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="teamviewer" Content="TeamViewer" HorizontalAlignment="Left" Margin="270,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="virtualbox" Content="VirtualBox" HorizontalAlignment="Left" Margin="270,33,0,0" VerticalAlignment="Top"/>
           </Grid>
            </TabItem>

            <TabItem Height="30">
            <TabItem.Header>
            <TextBlock Text="✨ Améliorations" ToolTip="Tweaks"/>
            </TabItem.Header>
            <Grid>
                <CheckBox Name="copyq" Content="CopyQ" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="files" Content="Files" HorizontalAlignment="Left" Margin="10,33,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="ksnip" Content="Ksnip" HorizontalAlignment="Left" Margin="10,56,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="lightbulb" Content="LightBulb" HorizontalAlignment="Left" Margin="10,79,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="modernflyouts" Content="ModernFlyouts" HorizontalAlignment="Left" Margin="10,102,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="openshell" Content="OpenShell" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="powertoys" Content="PowerToys" HorizontalAlignment="Left" Margin="10,148,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="quicklook" Content="QuickLook" HorizontalAlignment="Left" Margin="10,171,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="rainmeter" Content="Rainmeter" HorizontalAlignment="Left" Margin="10,194,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="teracopy" Content="TeraCopy" HorizontalAlignment="Left" Margin="10,217,0,0" VerticalAlignment="Top"/>
                <CheckBox Name="winaero" Content="WinaeroTweaker" HorizontalAlignment="Left" Margin="10,240,0,0" VerticalAlignment="Top"/>
            </Grid>
            </TabItem>

        </TabControl>
    </Grid>
    </Grid>  
     
</Window>
"@

$FormXML = (New-Object System.Xml.XmlNodeReader $XML)
$Window = [Windows.Markup.XamlReader]::Load($FormXML)


#region Vérification mise à jour
$repo = "SebastienFRA/LVASI"

$releases = "https://api.github.com/repos/$repo/releases"

$ProgressPreference = 'SilentlyContinue'
$tag = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name
$ProgressPreference = 'Continue'
if ($tag -gt "v2.42"){
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Asterisk
$MessageBody = "Une version plus récente de LVASI existe ($tag). Voulez-vous la télécharger ?
Si oui, LVASI sera téléchargé (dans le même dossier que l'actuel) et cette session se fermera.
---
A newer version of LVASI exists ($tag). Do you want to download it?
If yes, LVASI will be downloaded (in the same folder as the current one) and this session will be closed."
$MessageTitle = "LVASI - Info mise à jour"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($Result -eq "Yes"){
$ProgressPreference = 'SilentlyContinue'
$url = ((Invoke-WebRequest -uri "https://github.com/SebastienFRA/LVASI/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI_$tag.exe"
$ProgressPreference = 'Continue'
exit
}
}
#endregion

#region variables
$installer = $Window.FindName("installer")
$sebselect = $Window.FindName("sebselect")
$decocher = $Window.FindName("decocher")
$telecharger = $Window.FindName("telecharger")
$offinstaller = $Window.FindName("offinstaller")
$check = $Window.FindName("check")
$szip = $Window.FindName("szip")
$bandizip = $Window.FindName("bandizip")
$peazip = $Window.FindName("peazip")
$calibre = $Window.FindName("calibre")
$evernote = $Window.FindName("evernote")
$joplin = $Window.FindName("joplin")
$libreoffice = $Window.FindName("libreoffice")
$maxicompte = $Window.FindName("maxicompte")
$openoffice = $Window.FindName("openoffice")
$pdfcreator = $Window.FindName("pdfcreator")
$sigil = $Window.FindName("sigil")
$sumatrapdf = $Window.FindName("sumatrapdf")
$teamworks = $Window.FindName("teamworks")
$gcompris = $Window.FindName("gcompris")
$geogebra = $Window.FindName("geogebra")
$bluestacks = $Window.FindName("bluestacks")
$egs = $Window.FindName("epicgamestore")
$noxplayer = $Window.FindName("noxplayer")
$origin = $Window.FindName("origin")
$playnite = $Window.FindName("playnite")
$steam = $Window.FindName("steam")
$fileoptimizer = $Window.FindName("fileoptimizer")
$gimp = $Window.FindName("gimp")
$inkscape = $Window.FindName("inkscape")
$krita = $Window.FindName("krita")
$xnview = $Window.FindName("xnview")
$androidmessages = $Window.FindName("androidmessages")
$discord = $Window.FindName("discord")
$signal = $Window.FindName("signal")
$thunderbird = $Window.FindName("thunderbird")
$viber = $Window.FindName("viber")
$whatsapp = $Window.FindName("whatsapp")
$zoom = $Window.FindName("zoom")
$qkvd = $Window.FindName("qkvd")
$audacity = $Window.FindName("audacity")
$clementine = $Window.FindName("clementine")
$handbrake = $Window.FindName("handbrake")
$itunes = $Window.FindName("itunes")
$klitebasic = $Window.FindName("klitebasic")
$klitestd = $Window.FindName("klitestd")
$klitemega = $Window.FindName("klitemega")
$kodi = $Window.FindName("kodi")
$mediamonkey = $Window.FindName("mediamonkey")
$mpchc = $Window.FindName("mpchc")
$mkvtoolnix = $Window.FindName("mkvtoolnix")
$musicbee = $Window.FindName("musicbee")
$openshot = $Window.FindName("openshot")
$plexmediaserver = $Window.FindName("plexmediaserver")
$shotcut = $Window.FindName("shotcut")
$spotify = $Window.FindName("spotify")
$vlc = $Window.FindName("vlc")
$winamp = $Window.FindName("winamp")
$blender = $Window.FindName("blender")
$cura = $Window.FindName("cura")
$freecad = $Window.FindName("freecad")
$fusion360 = $Window.FindName("fusion360")
$ideamaker = $Window.FindName("ideamaker")
$lycheeslicer = $Window.FindName("lycheeslicer")
$prusaslicer = $Window.FindName("prusaslicer")
$brave = $Window.FindName("brave")
$chrome = $Window.FindName("chrome")
$firefox = $Window.FindName("firefox")
$opera = $Window.FindName("opera")
$filezilla = $Window.FindName("filezilla")
$notepad = $Window.FindName("notepad")
$winscp = $Window.FindName("winscp")
$adwcleaner = $Window.FindName("adwcleaner")
$avgfree = $Window.FindName("avgfree")
$bitwarden = $Window.FindName("bitwarden")
$malwarebytes = $Window.FindName("malwarebytes")
$nordvpn = $Window.FindName("nordvpn")
$spybot = $Window.FindName("spybot")
$fdm = $Window.FindName("fdm")
$qbittorrent = $Window.FindName("qbittorrent")
$gdrive = $Window.FindName("gdrive")
$balena = $Window.FindName("balena")
$bleachbit = $Window.FindName("bleachbit")
$ccleaner = $Window.FindName("ccleaner")
$cdburnerxp = $Window.FindName("cdburnerxp")
$glary = $Window.FindName("glary")
$lightbulb = $Window.FindName("lightbulb")
$modernflyouts = $Window.FindName("modernflyouts")
$netlimiter = $Window.FindName("netlimiter")
$openshell = $Window.FindName("openshell")
$powertoys = $Window.FindName("powertoys")
$qtt = $Window.FindName("qtt")
$raspberrypi = $Window.FindName("raspberrypi")
$recuva = $Window.FindName("recuva")
$revo = $Window.FindName("revo")
$speccy = $Window.FindName("speccy")
$teamviewer = $Window.FindName("teamviewer")
$virtualbox = $Window.FindName("virtualbox")
$wisediskmanager = $Window.FindName("wisediskmanager")
$celestia = $Window.FindName("celestia")
$github = $Window.FindName("github")
$ksnip = $Window.FindName("ksnip")
$mediainfo = $Window.FindName("mediainfo")
$jdl = $Window.FindName("jdl")
$obsstudio = $Window.FindName("obsstudio")
$putty = $Window.FindName("putty")
$telegram = $Window.FindName("telegram")
$stellarium = $Window.FindName("stellarium")
$files = $Window.FindName("files")
$sharex = $Window.FindName("sharex")
$imageglass = $Window.FindName("imageglass")
$everything = $Window.FindName("everything")
$mpcbe = $Window.FindName("mpcbe")
$veracrypt = $Window.FindName("veracrypt")
$kdeconnect = $Window.FindName("kdeconnect")
$pushbullet = $Window.FindName("pushbullet")
$screentogif = $Window.FindName("screentogif")
$vivaldi = $Window.FindName("vivaldi")
$goggalaxy = $Window.FindName("goggalaxy")
$winaero = $Window.FindName("winaero")
$retroarch = $Window.FindName("retroarch")
$romstation = $Window.FindName("romstation")
$directx = $Window.FindName("directx")
$visualcode = $Window.FindName("visualcode")
$geforce = $Window.FindName("geforce")
$geforcenow = $Window.FindName("geforcenow")
$megasync = $Window.FindName("megasync")
$nextcloud = $Window.FindName("nextcloud")
$owncloud = $Window.FindName("owncloud")
$synctrayzor = $Window.FindName("synctrayzor")
$tweeten = $Window.FindName("tweeten")
$quicklook = $Window.FindName("quicklook")
$qalculate = $Window.FindName("qalculate")
$deezer = $Window.FindName("deezer")
$youtubemusic = $Window.FindName("youtubemusic")
$slack = $Window.FindName("slack")
$keepass = $Window.FindName("keepass")
$deluge = $Window.FindName("deluge")
$homebank = $Window.FindName("homebank")
$klavaro = $Window.FindName("klavaro")
$transmission = $Window.FindName("transmission")
$winget = $Window.FindName("winget")
$tdbuilder = $Window.FindName("tdbuilder")
$netflix = $Window.FindName("netflix")
$disney = $Window.FindName("disney")
$hpsmart = $Window.FindName("hpsmart")
$primevideo = $Window.FindName("primevideo")
$amazonmusic = $Window.FindName("amazonmusic")
$tunein = $Window.FindName("tunein")
$xbox = $Window.FindName("xbox")
$drawio = $Window.FindName("drawio")
$burnaware = $Window.FindName("burnaware")
$ferdi = $Window.FindName("ferdi")
$caprine = $Window.FindName("caprine")
$messenger = $Window.FindName("messenger")
$expressvpn = $Window.FindName("expressvpn")
$photofiltre = $Window.FindName("photofiltre")
$teracopy = $Window.FindName("teracopy")
$rufus = $Window.FindName("rufus")
$thor = $Window.FindName("thor")
$rescuezilla = $Window.FindName("rescuezilla")
$kdenlive = $Window.FindName("kdenlive")
$godotengine = $Window.FindName("godotengine")
$strawberry = $Window.FindName("strawberry")
$snappydriver = $Window.FindName("snappydriver")
$rainmeter = $Window.FindName("rainmeter")
$flameshot = $Window.FindName("flameshot")
$copyq = $Window.FindName("copyq")
$musescore = $Window.FindName("musescore")
$kindlepc = $Window.FindName("kindlepc")
$kobodesktop = $Window.FindName("kobodesktop")
$sweethome = $Window.FindName("sweethome")
$python = $Window.FindName("python")
$waterfox = $Window.FindName("waterfox")
$chromium = $Window.FindName("chromium")
$pdf24 = $Window.FindName("pdf24")
$parsec = $Window.FindName("parsec")
$qtranslate = $Window.FindName("qtranslate")
#endregion

#region Activation boutons Installer

($szip, $bandizip, $peazip, $calibre, $evernote, $joplin, $libreoffice, $maxicompte, $openoffice, $pdfcreator, $sigil,
$sumatrapdf, $teamworks, $gcompris, $geogebra, $bluestacks, $egs, $noxplayer, $origin, $playnite, $steam, $fileoptimizer,
$gimp, $inkscape, $krita, $xnview, $androidmessages, $discord, $signal, $thunderbird, $viber, $whatsapp, $zoom, $qkvd,
$audacity, $clementine, $handbrake, $itunes, $klitebasic, $klitestd, $klitemega, $kodi, $mediamonkey, $mpchc, $mkvtoolnix,
$musicbee, $openshot, $plexmediaserver, $shotcut, $spotify, $vlc, $winamp, $blender, $cura, $freecad, $fusion360, $ideamaker,
$lycheeslicer, $prusaslicer, $brave, $chrome, $firefox, $opera, $filezilla, $notepad, $winscp, $avgfree,
$bitwarden, $malwarebytes, $nordvpn, $spybot, $fdm, $qbittorrent, $gdrive, $balena, $bleachbit, $ccleaner, $cdburnerxp,
$glary, $lightbulb, $modernflyouts, $netlimiter, $openshell, $powertoys, $qtt, $raspberrypi, $recuva,
$revo, $speccy, $teamviewer, $virtualbox, $wisediskmanager, $celestia, $github, $ksnip, $mediainfo, $jdl, $obsstudio,
$putty, $telegram, $stellarium, $files, $sharex, $imageglass, $everything, $mpcbe, $veracrypt, $kdeconnect, $pushbullet,
$screentogif, $vivaldi, $goggalaxy, $winaero, $retroarch, $romstation, $directx, $visualcode, $geforce, $geforcenow, $megasync, $nextcloud,
$owncloud, $synctrayzor, $tweeten, $quicklook, $qalculate, $deezer, $youtubemusic, $slack, $keepass, $deluge, $homebank, $klavaro, $transmission, $winget,
$tdbuilder, $netflix, $disney, $hpsmart, $primevideo, $amazonmusic, $tunein, $xbox, $drawio, $burnaware, $ferdi, $caprine, $messenger,
$expressvpn, $teracopy, $thor, $kdenlive, $strawberry, $rainmeter, $flameshot, $copyq, $musescore, $kindlepc, $kobodesktop, $sweethome,
$python, $waterfox, $chromium, $pdf24, $parsec, $qtranslate).add_click{
if ($szip.IsChecked -or $bandizip.IsChecked -or $peazip.IsChecked -or $calibre.IsChecked -or $evernote.IsChecked -or 
$joplin.IsChecked -or $libreoffice.IsChecked -or $maxicompte.IsChecked -or $openoffice.IsChecked -or $pdfcreator.IsChecked -or
$sigil.IsChecked -or $sumatrapdf.IsChecked -or $teamworks.IsChecked -or $gcompris.IsChecked -or $geogebra.IsChecked -or
$bluestacks.IsChecked -or $egs.IsChecked -or $noxplayer.IsChecked -or $origin.IsChecked -or $playnite.IsChecked -or
$steam.IsChecked -or $fileoptimizer.IsChecked -or $gimp.IsChecked -or $inkscape.IsChecked -or $krita.IsChecked -or
$xnview.IsChecked -or $androidmessages.IsChecked -or $discord.IsChecked -or $signal.IsChecked -or $thunderbird.IsChecked -or
$viber.IsChecked -or $whatsapp.IsChecked -or $zoom.IsChecked -or $qkvd.IsChecked -or $audacity.IsChecked -or $clementine.IsChecked -or
$handbrake.IsChecked -or $itunes.IsChecked -or $klitebasic.IsChecked -or $klitestd.IsChecked -or $klitemega.IsChecked -or
$kodi.IsChecked -or $mediamonkey.IsChecked -or $mpchc.IsChecked -or $mkvtoolnix.IsChecked -or $musicbee.IsChecked -or
$openshot.IsChecked -or $plexmediaserver.IsChecked -or $shotcut.IsChecked -or $spotify.IsChecked -or $vlc.IsChecked -or
$winamp.IsChecked -or $blender.IsChecked -or $cura.IsChecked -or $freecad.IsChecked -or $fusion360.IsChecked -or $ideamaker.IsChecked -or
$lycheeslicer.IsChecked -or $prusaslicer.IsChecked -or $brave.IsChecked -or $chrome.IsChecked -or $firefox.IsChecked -or
$opera.IsChecked -or $filezilla.IsChecked -or $notepad.IsChecked -or $winscp.IsChecked -or $avgfree.IsChecked -or
$bitwarden.IsChecked -or $malwarebytes.IsChecked -or $nordvpn.IsChecked -or $spybot.IsChecked -or $fdm.IsChecked -or
$qbittorrent.IsChecked -or $gdrive.IsChecked -or $balena.IsChecked -or $bleachbit.IsChecked -or $ccleaner.IsChecked -or
$cdburnerxp.IsChecked -or $glary.IsChecked -or $lightbulb.IsChecked -or $modernflyouts.IsChecked -or
$netlimiter.IsChecked -or $openshell.IsChecked -or $powertoys.IsChecked -or $qtt.IsChecked -or $raspberrypi.IsChecked -or
$recuva.IsChecked -or $revo.IsChecked -or $speccy.IsChecked -or $teamviewer.IsChecked -or $virtualbox.IsChecked -or
$wisediskmanager.IsChecked -or $celestia.IsChecked -or $github.IsChecked -or $ksnip.IsChecked -or $mediainfo.IsChecked -or
$jdl.IsChecked -or $obsstudio.IsChecked -or $putty.IsChecked -or $telegram.IsChecked -or $stellarium.IsChecked -or
$files.IsChecked -or $sharex.IsChecked -or $imageglass.IsChecked -or $everything.IsChecked -or $mpcbe.IsChecked -or
$veracrypt.IsChecked -or $kdeconnect.IsChecked -or $pushbullet.IsChecked -or $screentogif.IsChecked -or $vivaldi.IsChecked -or
$goggalaxy.ischecked -or $winaero.IsChecked -or $retroarch.ischecked -or $romstation.ischecked -or $directx.ischecked -or $visualcode.isChecked -or
$geforce.ischecked -or $geforcenow.ischecked -or $megasync.ischecked -or $nextcloud.ischecked -or $owncloud.ischecked -or $synctrayzor.ischecked -or
$tweeten.ischecked -or $quicklook.ischecked -or $qalculate.ischecked -or $deezer.ischecked -or $youtubemusic.ischecked -or $slack.ischecked -or
$keepass.ischecked -or $deluge.isChecked -or $homebank.ischecked -or $klavaro.ischecked -or $transmission.ischecked -or $winget.ischecked -or
$tdbuilder.ischecked -or $netflix.ischecked -or $disney.ischecked -or $hpsmart.ischecked -or $primevideo.ischecked -or $amazonmusic.ischecked -or
$tunein.ischecked -or $xbox.ischecked -or $drawio.ischecked -or $burnaware.ischecked -or $ferdi.ischecked -or $caprine.ischecked -or
$messenger.ischecked -or $expressvpn.ischecked -or $teracopy.ischecked -or $thor.ischecked -or $kdenlive.ischecked -or $strawberry.ischecked -or 
$rainmeter.ischecked -or $flameshot.ischecked -or $copyq.ischecked -or $musescore.ischecked -or $kindlepc.ischecked -or $kobodesktop.ischecked -or
$sweethome.ischecked -or $python.ischecked -or $waterfox.ischecked -or $chromium.ischecked -or $pdf24.ischecked -or $parsec.ischecked -or
$qtranslate.ischecked){
$installer.IsEnabled = $true}else{
$installer.IsEnabled = $false}}

#endregion

#region Activation boutons Télécharger

($szip, $bandizip, $peazip, $calibre, $evernote, $joplin, $libreoffice, $maxicompte, $openoffice, $pdfcreator, $sigil,
$sumatrapdf, $teamworks, $gcompris, $geogebra, $bluestacks, $egs, $noxplayer, $origin, $playnite, $steam, $fileoptimizer,
$gimp, $inkscape, $krita, $xnview, $androidmessages, $discord, $signal, $thunderbird, $viber, $whatsapp, $zoom, $qkvd,
$audacity, $clementine, $handbrake, $itunes, $klitebasic, $klitestd, $klitemega, $kodi, $mediamonkey, $mpchc, $mkvtoolnix,
$openshot, $plexmediaserver, $shotcut, $spotify, $vlc, $winamp, $blender, $cura, $freecad, $fusion360, $ideamaker,
$lycheeslicer, $prusaslicer, $brave, $chrome, $firefox, $opera, $filezilla, $notepad, $winscp, $adwcleaner, $avgfree,
$bitwarden, $malwarebytes, $nordvpn, $spybot, $fdm, $qbittorrent, $gdrive, $balena, $bleachbit, $ccleaner, $cdburnerxp,
$glary, $lightbulb, $modernflyouts, $netlimiter, $openshell, $powertoys, $qtt, $raspberrypi, $recuva, $godotengine,
$revo, $speccy, $teamviewer, $virtualbox, $wisediskmanager, $celestia, $github, $ksnip, $mediainfo, $jdl, $obsstudio,
$putty, $telegram, $stellarium, $files, $sharex, $imageglass, $everything, $mpcbe, $veracrypt, $kdeconnect, $pushbullet,
$screentogif, $vivaldi, $goggalaxy, $winaero, $retroarch, $romstation, $directx, $visualcode, $geforce, $geforcenow, $megasync, $nextcloud,
$owncloud, $synctrayzor, $tweeten, $quicklook, $qalculate, $deezer, $youtubemusic, $slack, $keepass, $deluge, $homebank, $klavaro, $transmission, $winget,
$tunein, $drawio, $burnaware, $ferdi, $caprine, $messenger, $expressvpn, $photofiltre, $teracopy, $rufus, $thor, $rescuezilla, $kdenlive, $strawberry,
$snappydriver, $rainmeter, $flameshot, $copyq, $musescore, $kindlepc, $kobodesktop, $sweethome, $python, $waterfox, $chromium,
$pdf24, $parsec, $qtranslate).add_click{
if ($szip.IsChecked -or $bandizip.IsChecked -or $peazip.IsChecked -or $calibre.IsChecked -or $evernote.IsChecked -or 
$joplin.IsChecked -or $libreoffice.IsChecked -or $maxicompte.IsChecked -or $openoffice.IsChecked -or $pdfcreator.IsChecked -or
$sigil.IsChecked -or $sumatrapdf.IsChecked -or $teamworks.IsChecked -or $gcompris.IsChecked -or $geogebra.IsChecked -or
$bluestacks.IsChecked -or $egs.IsChecked -or $noxplayer.IsChecked -or $origin.IsChecked -or $playnite.IsChecked -or
$steam.IsChecked -or $fileoptimizer.IsChecked -or $gimp.IsChecked -or $inkscape.IsChecked -or $krita.IsChecked -or
$xnview.IsChecked -or $androidmessages.IsChecked -or $discord.IsChecked -or $signal.IsChecked -or $thunderbird.IsChecked -or
$viber.IsChecked -or $whatsapp.IsChecked -or $zoom.IsChecked -or $qkvd.IsChecked -or $audacity.IsChecked -or $clementine.IsChecked -or
$handbrake.IsChecked -or $itunes.IsChecked -or $klitebasic.IsChecked -or $klitestd.IsChecked -or $klitemega.IsChecked -or
$kodi.IsChecked -or $mediamonkey.IsChecked -or $mpchc.IsChecked -or $mkvtoolnix.IsChecked -or
$openshot.IsChecked -or $plexmediaserver.IsChecked -or $shotcut.IsChecked -or $spotify.IsChecked -or $vlc.IsChecked -or
$winamp.IsChecked -or $blender.IsChecked -or $cura.IsChecked -or $freecad.IsChecked -or $fusion360.IsChecked -or $ideamaker.IsChecked -or
$lycheeslicer.IsChecked -or $prusaslicer.IsChecked -or $brave.IsChecked -or $chrome.IsChecked -or $firefox.IsChecked -or
$opera.IsChecked -or $filezilla.IsChecked -or $notepad.IsChecked -or $winscp.IsChecked -or $adwcleaner.IsChecked -or $avgfree.IsChecked -or
$bitwarden.IsChecked -or $malwarebytes.IsChecked -or $nordvpn.IsChecked -or $spybot.IsChecked -or $fdm.IsChecked -or
$qbittorrent.IsChecked -or $gdrive.IsChecked -or $balena.IsChecked -or $bleachbit.IsChecked -or $ccleaner.IsChecked -or
$cdburnerxp.IsChecked -or $glary.IsChecked -or $lightbulb.IsChecked -or $modernflyouts.IsChecked -or
$netlimiter.IsChecked -or $openshell.IsChecked -or $powertoys.IsChecked -or $qtt.IsChecked -or $raspberrypi.IsChecked -or
$recuva.IsChecked -or $revo.IsChecked -or $speccy.IsChecked -or $teamviewer.IsChecked -or $virtualbox.IsChecked -or
$wisediskmanager.IsChecked -or $celestia.IsChecked -or $github.IsChecked -or $ksnip.IsChecked -or $mediainfo.IsChecked -or
$jdl.IsChecked -or $obsstudio.IsChecked -or $putty.IsChecked -or $telegram.IsChecked -or $stellarium.IsChecked -or
$files.IsChecked -or $sharex.IsChecked -or $imageglass.IsChecked -or $everything.IsChecked -or $mpcbe.IsChecked -or
$veracrypt.IsChecked -or $kdeconnect.IsChecked -or $pushbullet.IsChecked -or $screentogif.IsChecked -or $vivaldi.IsChecked -or
$goggalaxy.ischecked -or $winaero.IsChecked -or $retroarch.ischecked -or $romstation.ischecked -or $directx.ischecked -or $visualcode.isChecked -or
$geforce.ischecked -or $geforcenow.ischecked -or $megasync.ischecked -or $nextcloud.ischecked -or $owncloud.ischecked -or $synctrayzor.ischecked -or
$tweeten.ischecked -or $quicklook.ischecked -or $qalculate.ischecked -or $deezer.ischecked -or $youtubemusic.ischecked -or $slack.ischecked -or
$keepass.ischecked -or $deluge.isChecked -or $homebank.ischecked -or $klavaro.ischecked -or $transmission.ischecked -or $winget.ischecked -or
$tunein.ischecked -or $drawio.ischecked - $burnaware.ischecked -or $ferdi.ischecked -or $caprine.ischecked -or $messenger.ischecked -or
$expressvpn.ischecked -or $photofiltre.ischecked -or $teracopy.ischecked -or $rufus.ischecked -or $thor.ischecked -or $rescuezilla.ischecked -or
$kdenlive.ischecked -or $godotengine.ischecked -or $strawberry.ischecked -or $snappydriver.ischecked -or $rainmeter.ischecked -or
$flameshot.ischecked -or $copyq.ischecked -or $musescore.ischecked -or $kindlepc.ischecked -or $kobodesktop.ischecked -or $sweethome.ischecked -or
$python.ischecked -or $waterfox.ischecked -or $chromium.ischecked -or $pdf24.ischecked -or $parsec.ischecked -or $qtranslate.ischecked){
$telecharger.IsEnabled = $true}else{
$telecharger.IsEnabled = $false}}

#endregion

#region Seb's Select
$sebselect.add_click{
$szip.IsChecked = $true ; $bandizip.IsChecked =$false ; $peazip.IsChecked = $false ; $calibre.IsChecked = $false ; $evernote.IsChecked = $false ; 
$joplin.IsChecked = $false ; $libreoffice.IsChecked = $true ; $maxicompte.IsChecked = $false ; $openoffice.IsChecked = $false ; $pdfcreator.IsChecked = $false ;
$sigil.IsChecked = $false ; $sumatrapdf.IsChecked = $true ; $teamworks.IsChecked = $false ; $gcompris.IsChecked = $false ; $geogebra.IsChecked = $false ;
$bluestacks.IsChecked = $false ; $egs.IsChecked = $false ; $noxplayer.IsChecked = $false ; $origin.IsChecked = $false ; $playnite.IsChecked = $false ;
$steam.IsChecked = $false ; $fileoptimizer.IsChecked = $false ; $gimp.IsChecked = $false ; $inkscape.IsChecked = $false ; $krita.IsChecked = $false ;
$xnview.IsChecked = $false ; $androidmessages.IsChecked = $false ; $discord.IsChecked = $false ; $signal.IsChecked = $false ; $thunderbird.IsChecked = $false ;
$viber.IsChecked = $false ; $whatsapp.IsChecked = $false ; $zoom.IsChecked = $false ; $qkvd.IsChecked = $false ; $audacity.IsChecked = $false ; $clementine.IsChecked = $false ;
$handbrake.IsChecked = $false ; $itunes.IsChecked = $false ; $klitebasic.IsChecked = $false ; $klitestd.IsChecked = $true ; $klitemega.IsChecked = $false ;
$kodi.IsChecked = $false ; $mediamonkey.IsChecked = $false ; $mpchc.IsChecked = $false ; $mkvtoolnix.IsChecked = $false ; $musicbee.IsChecked = $false ;
$openshot.IsChecked = $false ; $plexmediaserver.IsChecked = $false ; $shotcut.IsChecked = $false ; $spotify.IsChecked = $false ; $vlc.IsChecked = $false ;
$winamp.IsChecked = $false ; $blender.IsChecked = $false ; $cura.IsChecked = $false ; $freecad.IsChecked = $false ; $fusion360.IsChecked = $false ; $ideamaker.IsChecked = $false ;
$lycheeslicer.IsChecked = $false ; $prusaslicer.IsChecked = $false ; $brave.IsChecked = $false ; $chrome.IsChecked = $false ; $firefox.IsChecked = $true ;
$opera.IsChecked = $false ; $filezilla.IsChecked = $false ; $notepad.IsChecked = $false ; $winscp.IsChecked = $false ; $adwcleaner.IsChecked = $false ; $avgfree.IsChecked = $false ;
$bitwarden.IsChecked = $false ; $malwarebytes.IsChecked = $false ; $nordvpn.IsChecked = $false ; $spybot.IsChecked = $true ; $fdm.IsChecked = $false ;
$qbittorrent.IsChecked = $false ; $gdrive.IsChecked = $false ; $balena.IsChecked = $false ; $bleachbit.IsChecked = $false ; $ccleaner.IsChecked = $false ;
$cdburnerxp.IsChecked = $false ; $glary.IsChecked = $false ; $lightbulb.IsChecked = $false ; $modernflyouts.IsChecked = $false ;
$netlimiter.IsChecked = $false ; $openshell.IsChecked = $false ; $powertoys.IsChecked = $false ; $qtt.IsChecked = $false ; $raspberrypi.IsChecked = $false ;
$recuva.IsChecked = $false ; $revo.IsChecked = $true ; $speccy.IsChecked = $false ; $teamviewer.IsChecked = $false ; $virtualbox.IsChecked = $false ;
$wisediskmanager.IsChecked = $true ; $celestia.IsChecked = $false ; $github.IsChecked = $false ; $ksnip.IsChecked = $false ; $mediainfo.IsChecked = $false ;
$jdl.IsChecked = $false ; $obsstudio.IsChecked = $false ; $putty.IsChecked = $false ; $telegram.IsChecked = $false ; $stellarium.IsChecked = $false ;
$files.IsChecked = $false ; $sharex.IsChecked = $false ; $imageglass.IsChecked = $false ; $everything.IsChecked = $false ; $mpcbe.IsChecked = $false ;
$veracrypt.IsChecked = $false ; $kdeconnect.IsChecked = $false ; $pushbullet.IsChecked = $false ; $screentogif.IsChecked = $false ; $vivaldi.IsChecked =$false
$goggalaxy.IsChecked = $false ; $winaero.ischecked = $false ; $retroarch.ischecked = $false ; $romstation.ischecked = $false ; $directx.ischecked = $false
$visualcode.ischecked = $false ; $geforce.ischecked = $false ; $geforcenow.ischecked = $false ; $megasync.ischecked = $false ; $nextcloud.ischecked = $false ;
$owncloud.ischecked = $false ; $synctrayzor.ischecked = $false ; $tweeten.ischecked = $false ; $quicklook.ischecked = $false ; $qalculate.ischecked = $false ;
$deezer.ischecked = $false ; $youtubemusic.ischecked = $false ; $slack.ischecked = $false ; $keepass.ischecked = $false ; $deluge.ischecked = $false ;
$homebank.ischecked = $false ; $klavaro.ischecked = $false ; $transmission.ischecked = $false ; $winget.IsChecked = $false ; $tdbuilder.ischecked = $false ;
$netflix.ischecked = $false ; $disney.ischecked = $false ; $hpsmart.ischecked = $false ; $primevideo.ischecked = $false ; $amazonmusic.ischecked = $false ;
$tunein.ischecked = $false ; $xbox.ischecked = $false ; $drawio.ischecked = $false ; $burnaware.ischecked = $false ; $ferdi.ischecked = $false ;
$caprine.ischecked = $false ; $messenger.ischecked = $false ; $expressvpn.ischecked = $false ; $photofiltre.ischecked = $false ; $teracopy.ischecked = $false ;
$rufus.ischecked = $false ; $thor.ischecked = $false ; $rescuezilla.ischecked = $false ; $kdenlive.ischecked = $false ; $godotengine.ischecked = $false ;
$strawberry.ischecked = $false ; $snappydriver.ischecked = $false ; $rainmeter.ischecked = $false ; $flameshot.ischecked = $false ; $copyq.ischecked = $false ;
$musescore.ischecked = $false ; $kindlepc.ischecked = $false ; $kobodesktop.ischecked = $false ; $sweethome.ischecked = $false ; $python.ischecked = $false ;
$waterfox.ischecked = $false ; $chromium.ischecked = $false ; $pdf24.ischecked = $false ; $parsec.ischecked = $false ; $qtranslate.ischecked = $false ;
$installer.IsEnabled = $true ; $telecharger.IsEnabled = $true ; $klitebasic.IsEnabled = $false ; $klitestd.IsEnabled = $true ; $klitemega.IsEnabled = $false
}
#endregion

#region Décocher
$decocher.add_click{

$szip.IsChecked = $false ; $bandizip.IsChecked =$false ; $peazip.IsChecked = $false ; $calibre.IsChecked = $false ; $evernote.IsChecked = $false ; 
$joplin.IsChecked = $false ; $libreoffice.IsChecked = $false ; $maxicompte.IsChecked = $false ; $openoffice.IsChecked = $false ; $pdfcreator.IsChecked = $false ;
$sigil.IsChecked = $false ; $sumatrapdf.IsChecked = $false ; $teamworks.IsChecked = $false ; $gcompris.IsChecked = $false ; $geogebra.IsChecked = $false ;
$bluestacks.IsChecked = $false ; $egs.IsChecked = $false ; $noxplayer.IsChecked = $false ; $origin.IsChecked = $false ; $playnite.IsChecked = $false ;
$steam.IsChecked = $false ; $fileoptimizer.IsChecked = $false ; $gimp.IsChecked = $false ; $inkscape.IsChecked = $false ; $krita.IsChecked = $false ;
$xnview.IsChecked = $false ; $androidmessages.IsChecked = $false ; $discord.IsChecked = $false ; $signal.IsChecked = $false ; $thunderbird.IsChecked = $false ;
$viber.IsChecked = $false ; $whatsapp.IsChecked = $false ; $zoom.IsChecked = $false ; $qkvd.IsChecked = $false ; $audacity.IsChecked = $false ; $clementine.IsChecked = $false ;
$handbrake.IsChecked = $false ; $itunes.IsChecked = $false ; $klitebasic.IsChecked = $false ; $klitestd.IsChecked = $false ; $klitemega.IsChecked = $false ;
$kodi.IsChecked = $false ; $mediamonkey.IsChecked = $false ; $mpchc.IsChecked = $false ; $mkvtoolnix.IsChecked = $false ; $musicbee.IsChecked = $false ;
$openshot.IsChecked = $false ; $plexmediaserver.IsChecked = $false ; $shotcut.IsChecked = $false ; $spotify.IsChecked = $false ; $vlc.IsChecked = $false ;
$winamp.IsChecked = $false ; $blender.IsChecked = $false ; $cura.IsChecked = $false ; $freecad.IsChecked = $false ; $fusion360.IsChecked = $false ; $ideamaker.IsChecked = $false ;
$lycheeslicer.IsChecked = $false ; $prusaslicer.IsChecked = $false ; $brave.IsChecked = $false ; $chrome.IsChecked = $false ; $firefox.IsChecked = $false ;
$opera.IsChecked = $false ; $filezilla.IsChecked = $false ; $notepad.IsChecked = $false ; $winscp.IsChecked = $false ; $adwcleaner.IsChecked = $false ; $avgfree.IsChecked = $false ;
$bitwarden.IsChecked = $false ; $malwarebytes.IsChecked = $false ; $nordvpn.IsChecked = $false ; $spybot.IsChecked = $false ; $fdm.IsChecked = $false ;
$qbittorrent.IsChecked = $false ; $gdrive.IsChecked = $false ; $balena.IsChecked = $false ; $bleachbit.IsChecked = $false ; $ccleaner.IsChecked = $false ;
$cdburnerxp.IsChecked = $false ; $glary.IsChecked = $false ; $lightbulb.IsChecked = $false ; $modernflyouts.IsChecked = $false ;
$netlimiter.IsChecked = $false ; $openshell.IsChecked = $false ; $powertoys.IsChecked = $false ; $qtt.IsChecked = $false ; $raspberrypi.IsChecked = $false ;
$recuva.IsChecked = $false ; $revo.IsChecked = $false ; $speccy.IsChecked = $false ; $teamviewer.IsChecked = $false ; $virtualbox.IsChecked = $false ;
$wisediskmanager.IsChecked = $false ; $celestia.IsChecked = $false ; $github.IsChecked = $false ; $ksnip.IsChecked = $false ; $mediainfo.IsChecked = $false ;
$jdl.IsChecked = $false ; $obsstudio.IsChecked = $false ; $putty.IsChecked = $false ; $telegram.IsChecked = $false ; $stellarium.IsChecked = $false ;
$files.IsChecked = $false ; $sharex.IsChecked = $false ; $imageglass.IsChecked = $false ; $everything.IsChecked = $false ; $mpcbe.IsChecked = $false ;
$veracrypt.IsChecked = $false ; $kdeconnect.IsChecked = $false ; $pushbullet.IsChecked = $false ; $screentogif.IsChecked = $false ; $vivaldi.IsChecked =$false ;
$goggalaxy.ischecked = $false ; $winaero.IsChecked = $false ; $retroarch.ischecked = $false ; $romstation.ischecked = $false ; $directx.ischecked = $false
$visualcode.ischecked = $false ; $geforce.ischecked = $false ; $geforcenow.ischecked = $false ; $megasync.ischecked = $false ; $nextcloud.ischecked = $false ;
$owncloud.ischecked = $false ; $synctrayzor.ischecked = $false ; $tweeten.ischecked = $false ; $quicklook.ischecked = $false ; $qalculate.ischecked = $false ;
$deezer.ischecked = $false ; $youtubemusic.ischecked = $false ; $slack.ischecked = $false ; $keepass.ischecked = $false ; $deluge.ischecked = $false ;
$homebank.ischecked = $false ; $klavaro.ischecked = $false ; $transmission.ischecked = $false ; $winget.IsChecked = $false ; $tdbuilder.ischecked = $false ;
$netflix.ischecked = $false ; $disney.ischecked = $false ; $hpsmart.ischecked = $false ; $primevideo.ischecked = $false ; $amazonmusic.ischecked = $false ;
$tunein.ischecked = $false ; $xbox.ischecked = $false ; $drawio.ischecked = $false ; $burnaware.ischecked = $false ; $ferdi.ischecked = $false ;
$caprine.ischecked = $false ; $messenger.ischecked = $false ; $expressvpn.ischecked = $false ; $photofiltre.ischecked = $false ; $teracopy.ischecked = $false ;
$rufus.ischecked = $false ; $thor.ischecked = $false ; $rescuezilla.ischecked = $false ; $kdenlive.ischecked = $false ; $godotengine.ischecked = $false ;
$strawberry.ischecked = $false ; $snappydriver.ischecked = $false ; $rainmeter.ischecked = $false ; $flameshot.ischecked = $false ; $copyq.ischecked = $false ;
$musescore.ischecked = $false ; $kindlepc.ischecked = $false ; $kobodesktop.ischecked = $false ; $sweethome.ischecked = $false ; $python.ischecked = $false ;
$waterfox.ischecked = $false ; $chromium.ischecked = $false ; $pdf24.ischecked = $false ; $parsec.ischecked = $false ; $qtranslate.ischecked = $false ;
$installer.IsEnabled = $false ; $telecharger.IsEnabled = $false ; $klitebasic.IsEnabled = $true ; $klitemega.IsEnabled = $true ; $klitestd.isenabled = $true ; $mpchc.isenabled = $true}
#endregion

#region Activation Installer Hors-ligne
$check.add_click{
$dwnlinfo = Get-ChildItem ".\LVASI - Téléchargements"
#$dwnlinfo.count
if ($dwnlinfo.count -eq 0){
$offinstaller.isenabled = $false}
else{
$offinstaller.isenabled = $true}
}
#endregion

#region Désactivation Klite
$klitebasic.add_click{
if ($klitebasic.isChecked){
$klitestd.isenabled = $false
$klitemega.IsEnabled = $false}
else{
$klitestd.isenabled = $true
$klitemega.IsEnabled = $true}
}

$klitestd.add_click{
if ($klitestd.isChecked){
$klitebasic.isenabled = $false
$klitemega.IsEnabled = $false
$mpchc.IsChecked = $false
$mpchc.IsEnabled = $false}
else{
$klitebasic.isenabled = $true
$klitemega.IsEnabled = $true
$mpchc.IsEnabled = $true}
}

$klitemega.add_click{
if ($klitemega.isChecked){
$klitebasic.isenabled = $false
$klitestd.IsEnabled = $false
$mpchc.IsChecked = $false
$mpchc.IsEnabled = $false}
else{
$klitebasic.isenabled = $true
$klitestd.IsEnabled = $true
$mpchc.IsEnabled = $true}
}
#endregion

$installer.add_click({
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Asterisk
$MessageBody = "Les logiciels sélectionnés vont être installés.
Voulez-vous continuer ?
(LVASI sera indisponible pendant la durée des installations.)
---
The selected software will be installed.
Do you want to continue ?
(LVASI will be unavailable for the duration of the installations.)"
$MessageTitle = "LVASI - INSTALLATIONS"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)

if ($Result -eq "Yes"){
$window.WindowState= "Minimized"
Start-Transcript -Append ".\LVASI_logfile.txt"
$ProgressPreference = 'SilentlyContinue'

$global:7zipneed = $false
New-Item ".\LVASI - Installation" -ItemType Directory -force

#region Winget
if ($winget.ischecked){

$url = ((Invoke-WebRequest -uri "https://github.com/microsoft/winget-cli/releases/latest").links | Where-Object href -like "*.msixbundle").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Winget.msixbundle"

Add-AppPackage -Path ".\LVASI - Installation\Winget.msixbundle"

remove-item ".\LVASI - Installation\Winget.msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winget','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Compression
#region 7-Zip
if ($szip.ischecked){

$url = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\7-zip.exe"

Start-Process ".\LVASI - Installation\7-zip.exe" /S -wait

remove-item ".\LVASI - Installation\7-zip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'7-Zip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bandizip
if ($bandizip.ischecked){

Invoke-WebRequest "https://dl.bandisoft.com/bandizip.std/BANDIZIP-SETUP-STD-ALL.EXE" -OutFile ".\LVASI - Installation\Bandizip.exe"

Start-Process -FilePath ".\LVASI - Installation\Bandizip.exe" -ArgumentList "/S" -Wait

Remove-Item ".\LVASI - Installation\Bandizip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bandizip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region peazip
if ($peazip.ischecked){

$url = ((Invoke-WebRequest -uri "https://github.com/peazip/PeaZip/releases/latest").links | Where-Object href -like "*WIN64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\PeaZip.exe"

Start-Process ".\LVASI - Installation\PeaZip.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\PeaZip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Peazip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Documents
#region Calibre
if ($calibre.IsChecked){

$url = "https://calibre-ebook.com/dist/win64"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Calibre.msi"

Start-Process ".\LVASI - Installation\Calibre.msi" -argumentlist '/quiet' -wait

remove-item ".\LVASI - Installation\Calibre.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Calibre','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Draw.io
if ($drawio.ischecked){

$url = ((Invoke-WebRequest -uri "https://github.com/jgraph/drawio-desktop/releases/latest").links | Where-Object href -like "*windows-installer.exe" | Where-Object href -NotLike *github*).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Drawio.exe"

Start-Process ".\LVASI - Installation\Drawio.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Drawio.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Draw.io','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Evernote
if ($evernote.IsChecked){

$url = ((Invoke-WebRequest -uri "https://evernote.com/intl/fr/download").links | Where-Object href -like "*setup.exe" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Evernote.exe"

Start-Process ".\LVASI - Installation\Evernote.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Evernote.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Evernote','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HomeBank
if ($homebank.ischecked){

$version = ((Invoke-WebRequest -uri "http://homebank.free.fr/fr/downloads.php").links | where-object href -like "*setup.exe"| Select-Object -First 1).href
$versionurl = $version -replace ("\.\.","")
$url = "http://homebank.free.fr$versionurl"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\HomeBank.exe"

Start-Process ".\LVASI - Installation\HomeBank.exe" -argumentlist "/VERYSILENT /ALLUSERS /NORESTART" -wait

remove-item ".\LVASI - Installation\HomeBank.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'HomeBank','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Joplin
if ($joplin.IsChecked){

$url = ((Invoke-WebRequest -uri "https://github.com/laurent22/joplin/releases/latest").links | Where-Object href -like "*Setup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Joplin.exe"

Start-Process ".\LVASI - Installation\Joplin.exe" -argumentlist "/alluser /S" -wait

remove-item ".\LVASI - Installation\Joplin.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Joplin','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kindle PC
if ($kindlepc.ischecked){
$url = "https://www.amazon.fr/kindlepcdownload/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Kindle PC.exe"

Start-Process ".\LVASI - Installation\Kindle PC.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Kindle PC.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kindle PC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kobo Desktop
if ($kobodesktop.ischecked){
$url = "https://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Kobo Desktop.exe"

Start-Process ".\LVASI - Installation\Kobo Desktop.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Kobo Desktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kobo Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LibreOffice
if ($libreoffice.IsChecked){

$IOTD = ((Invoke-WebRequest -Uri ‘https://fr.libreoffice.org/download/telecharger-libreoffice/?type=win-x86’).Links | Where-Object innerHTML -like “*Win_x86_sdk.msi”).href
$IOTDsplit = $IOTD -csplit("//download.documentfoundation.org/")
$IOTDsplit2 = -join $IOTDsplit
$url = $IOTDsplit2 -csplit ("_sdk")
$url2 = -join $url
$source = "https://miroir.univ-lorraine.fr/documentfoundation/"
$download = "$source$url2"

Invoke-WebRequest $download -outfile ".\LVASI - Installation\LibreOffice.x86.msi"

Start-Process ".\LVASI - Installation\LibreOffice.x86.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\LibreOffice.x86.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LibreOffice','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MaxiCompte
if ($maxicompte.IsChecked){
$url = "https://www.persoapps.com/download/maxicompte.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\MaxiCompte.exe"

Start-Process ".\LVASI - Installation\MaxiCompte.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\MaxiCompte.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MaxiCompte','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenOffice
if ($openoffice.IsChecked){

$IOTD = ((Invoke-WebRequest -Uri ‘https://www.openoffice.org/download/index.html’).Links | Where-Object innertext -like “Released*”).title
$IOTDsplit = $IOTD -csplit("Released: Apache OpenOffice ")
$url = "https://sourceforge.net/projects/openofficeorg.mirror/files/$IOTDsplit/binaries/fr/Apache_OpenOffice_${IOTDsplit}_Win_x86_install_fr.exe/download"
$download = ($url -replace "\s","")

$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile("$download",".\LVASI - Installation\OpenOffice.exe")

$7zip = Test-Path -Path "${env:ProgramFiles}\7-Zip\7z.exe" -PathType Leaf

if ($7zip -eq $true)
{

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Installation\OpenOffice.exe" "-o$(".\LVASI - Installation\OpenOffice")" -y

Start-Process ".\LVASI - Installation\OpenOffice\setup.exe" /qn -wait

Remove-item ".\LVASI - Installation\OpenOffice" -Recurse
Remove-Item ".\LVASI - Installation\OpenOffice.exe"


}
else
{
$global:7zipneed = $true

$url7zip = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url7zip" -outfile ".\LVASI - Installation\7-zip.exe"

Start-Process ".\LVASI - Installation\7-zip.exe" /S -wait

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Installation\OpenOffice.exe" "-o$(".\LVASI - Installation\OpenOffice")" -y

Start-Process ".\LVASI - Installation\OpenOffice\setup.exe" /qn -wait

Remove-item ".\LVASI - Installation\OpenOffice" -Recurse
Remove-Item ".\LVASI - Installation\OpenOffice.exe"
Remove-Item ".\LVASI - Installation\7-zip.exe"
}
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenOffice','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDF24 Creator
if ($pdf24.ischecked){
$url = ((Invoke-WebRequest -uri "https://creator.pdf24.org/listVersions.php" -UseBasicParsing).links | where-Object href -like "*.msi" | Select-Object -First 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\PDF24 Creator.msi"

Start-Process ".\LVASI - Installation\PDF24 Creator.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\PDF24 Creator.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDF24 Creator','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDFCreator
if ($pdfcreator.IsChecked){
$url = "https://download.pdfforge.org/download/pdfcreator/PDFCreator-stable?download"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\PDFCreator.exe"

Start-Process ".\LVASI - Installation\PDFCreator.exe" -argumentlist '/COMPONENTS="program" /VERYSILENT /NORESTART' -wait

remove-item ".\LVASI - Installation\PDFCreator.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDFCreator','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sigil
if ($sigil.IsChecked){

$url = ((Invoke-WebRequest -uri "https://sigil-ebook.com/sigil/download/").links | Where-Object innerHTML -like "Latest Windows x64 download").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Sigil.exe"

Start-Process ".\LVASI - Installation\Sigil.exe" -argumentlist "/ALLUSERS /VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Sigil.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sigil','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SumatraPDF
if ($sumatrapdf.IsChecked){
$IOTD = ((Invoke-WebRequest -uri "https://www.sumatrapdfreader.org/download-free-pdf-viewer").links | Where-Object innerHTML -like "*64-install.exe").href
$url = "https://www.sumatrapdfreader.org"
$download = "$url$IOTD"
$download

Invoke-WebRequest $download -OutFile ".\LVASI - Installation\SumatraPDF-install.exe"

Start-Process ".\LVASI - Installation\SumatraPDF-install.exe" /s -wait

remove-item ".\LVASI - Installation\SumatraPDF-install.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SumatraPDF','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Teamworks
if ($teamworks.IsChecked){
$url = "https://www.teamworks.ovh/fichiers/windows/Teamworks.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Teamworks.exe"

Start-Process ".\LVASI - Installation\Teamworks.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Teamworks.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Teamworks','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Éducation
#region Celestia
if ($celestia.IsChecked){

$url = ((Invoke-WebRequest -uri "https://github.com/CelestiaProject/Celestia/releases/latest").links | Where-Object href -like "*win.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Celestia.exe"

Start-Process ".\LVASI - Installation\Celestia.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Celestia.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Celestia','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GCompris
if ($gcompris.IsChecked){

$url = ((Invoke-WebRequest -uri "https://gcompris.net/downloads-fr.html").links | Where-Object innerHTML -like "*Windows 64bit" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\GCompris.exe"

Start-Process ".\LVASI - Installation\GCompris.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\GCompris.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GCompris','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeoGebra
if ($geogebra.IsChecked){
$url = "https://download.geogebra.org/package/win-msi6"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\GeoGebra.msi"

Start-Process ".\LVASI - Installation\GeoGebra.msi" -argumentlist "/qb" -wait

remove-item ".\LVASI - Installation\GeoGebra.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeoGebra','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Klavaro
if ($klavaro.ischecked){

$url = ((Invoke-WebRequest -uri "https://klavaro.sourceforge.io/fr/index.html").links | Where-Object href -like "*setup.exe*").href

Invoke-WebRequest -Uri $url -OutFile ".\LVASI - Installation\Klavaro.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox

Start-Process ".\LVASI - Installation\Klavaro.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Klavaro.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Klavaro','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Qalculate
if ($qalculate.ischecked){

$url = ((Invoke-WebRequest -uri "https://github.com/Qalculate/qalculate-gtk/releases/latest").links | Where-Object href -like "*x64.msi" | Select-Object -Last 1).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Qalculate.msi"

Start-Process ".\LVASI - Installation\Qalculate.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\Qalculate.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Qalculate!','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Stellarium
if ($stellarium.IsChecked){

$url = ((Invoke-WebRequest -Uri 'https://github.com/Stellarium/stellarium/releases/latest' -UseBasicParsing).links | Where-Object href -like "*win64.exe" ).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Stellarium.exe"

Start-Process ".\LVASI - Installation\Stellarium.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Stellarium.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Stellarium','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Jeux
#region Bluestacks
if ($bluestacks.IsChecked){
$url = "https://cloud.bluestacks.com/get_offline_download?os_arch=x64"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\BlueStacks.exe"

Start-Process ".\LVASI - Installation\BlueStacks.exe" -argumentlist "-s" -wait

remove-item ".\LVASI - Installation\BlueStacks.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bluestacks','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Epic Game Store
if ($egs.IsChecked){
$url = "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\EpicGameStore.msi"

Start-Process ".\LVASI - Installation\EpicGameStore.msi" -argumentlist '/quiet' -wait

remove-item ".\LVASI - Installation\EpicGameStore.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Epic Game Store','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Experience
if ($geforce.ischecked){

$url = ((Invoke-WebRequest -Uri 'https://www.nvidia.com/fr-fr/geforce/geforce-experience/' -UseBasicParsing).links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\GeForce Experience.exe"

$7zip = Test-Path -Path "${env:ProgramFiles}\7-Zip\7z.exe" -PathType Leaf

if ($7zip -eq $true)
{

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Installation\GeForce Experience.exe" "-o$(".\LVASI - Installation\GeForce Experience")" -y


Start-Process ".\LVASI - Installation\GeForce Experience\setup.exe" -ArgumentList "-s" -wait

Remove-item ".\LVASI - Installation\GeForce Experience" -Recurse
Remove-Item ".\LVASI - Installation\GeForce Experience.exe"

}
else
{
$global:7zipneed = $true

$url7zip = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url7zip" -outfile ".\LVASI - Installation\7-zip.exe"

Start-Process ".\LVASI - Installation\7-zip.exe" /S -wait

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Installation\GeForce Experience.exe" "-o$(".\LVASI - Installation\GeForce Experience")" -y


Start-Process ".\LVASI - Installation\GeForce Experience\setup.exe" -ArgumentList "-s" -wait

Remove-item ".\LVASI - Installation\GeForce Experience" -Recurse
Remove-Item ".\LVASI - Installation\GeForce Experience.exe"
Remove-Item ".\LVASI - Installation\7-zip.exe"
}

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Experience','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Now
if ($geforcenow.ischecked){
$url = "https://download.nvidia.com/gfnpc/GeForceNOW-release.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\GeForce Now.exe"

Start-Process ".\LVASI - Installation\GeForce Now.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\GeForce Now.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Now','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}

#endregion

#region GOG Galaxy
if ($goggalaxy.IsChecked){
$url = "https://content-system.gog.com/open_link/download?path=/open/galaxy/client/2.0.51.86/setup_galaxy_2.0.51.86.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\GOGGalaxy.exe"

Start-Process ".\LVASI - Installation\GOGGalaxy.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\GOGGalaxy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GOG Galaxy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NoxPlayer
if ($noxplayer.IsChecked){
$url = "https://fr.bignox.com/fr/download/fullPackage?formal"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\NoxPlayer.exe"

Start-Process ".\LVASI - Installation\NoxPlayer.exe" -argumentlist "--silent" -wait

remove-item ".\LVASI - Installation\NoxPlayer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NoxPlayer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Origin
if ($origin.IsChecked){
$url = "https://www.dm.origin.com/download"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Origin.exe"

Start-Process ".\LVASI - Installation\Origin.exe" -argumentlist "/SILENT /NOLAUNCH" -wait

remove-item ".\LVASI - Installation\Origin.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Origin','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Playnite
if ($playnite.IsChecked){

$url = ((Invoke-WebRequest -uri "https://github.com/JosefNemec/Playnite/releases/latest").links | Where-Object href -like "*Playnite*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Playnite.exe"

Start-Process ".\LVASI - Installation\Playnite.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Playnite.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Playnite','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RetroArch
if ($retroarch.ischecked){

$url = ((Invoke-WebRequest -uri "https://www.retroarch.com/?page=platforms").links | Where-Object innerHTML -like "Installer (64bit)" | Where-Object href -like "*/windows/x86_64/*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\RetroArch.exe"

Start-Process ".\LVASI - Installation\RetroArch.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\RetroArch.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RetroArch','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RomStation
if ($romstation.ischecked){

$url = ((Invoke-WebRequest -uri "https://www.romstation.fr/installation").links | Where-Object href -like "*x64.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\RomStation.exe"

Start-Process ".\LVASI - Installation\RomStation.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\RomStation.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RomStation','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Steam
if ($steam.IsChecked){
Invoke-WebRequest "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -outfile ".\LVASI - Installation\Steam.exe"

Start-Process -FilePath ".\LVASI - Installation\Steam.exe" /S -wait

Remove-Item ".\LVASI - Installation\Steam.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Steam','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Xbox
if ($xbox.IsChecked){
winget install -q 9MV0B5HZVK9Z --accept-source-agreements --accept-package-agreements
}
#endregion
#endregion

#region Images
#region FileOptimizer
if ($fileoptimizer.IsChecked){

$url = ((Invoke-WebRequest -uri "https://sourceforge.net/projects/nikkhokkho/files/FileOptimizer/").links | Where-Object href -like "/projects/nikkhokkho/files/FileOptimizer/*"| Select -First 1).href

$dwn = ((Invoke-Webrequest -uri "https://sourceforge.net$url").links |Where-Object href -like "*FileOptimizerSetup.exe/download").href

Invoke-WebRequest -Uri $dwn -OutFile ".\LVASI - Installation\FileOptimizer.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox

Start-Process ".\LVASI - Installation\FileOptimizer.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\FileOptimizer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileOptimizer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Gimp
if ($gimp.IsChecked){

$IOTD = ((Invoke-WebRequest -uri "https://www.gimp.org/downloads/").links | Where-Object id -like "win-download-link").href

Invoke-WebRequest "https:$IOTD" -OutFile ".\LVASI - Installation\Gimp.exe"

Start-Process ".\LVASI - Installation\Gimp.exe" -argumentlist "/VERYSILENT /NORESTART /ALLUSERS" -wait

remove-item ".\LVASI - Installation\Gimp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Gimp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ImageGlass
if ($imageglass.IsChecked){

$url = ((Invoke-WebRequest -uri "https://imageglass.org/download").links | Where-Object title -like "*installer x64 version*" ).href
$version = $url -csplit('https://imageglass.org/release/download/')
$url2 = "https://imageglass.org/release/$version/download"
$dwl = $url2 -replace ("\s","")

Invoke-WebRequest "$dwl" -outfile ".\LVASI - Installation\ImageGlass.msi"

Start-Process ".\LVASI - Installation\ImageGlass.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\ImageGlass.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ImageGlass','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Inkscape
if ($inkscape.IsChecked){

$url = ((Invoke-WebRequest -Uri 'https://inkscape.org/release/' -UseBasicParsing).links | Where-Object href -like "*windows*" ).href

$url2 = "https://inkscape.org$url"
$url3 = ((Invoke-WebRequest -Uri $url2 -UseBasicParsing).links | Where-Object href -like "*64-bit*" ).href

$url4 = "https://inkscape.org$url3"
$url5 = ((Invoke-WebRequest -Uri $url4 -UseBasicParsing).links | Where-Object href -like "*exe*" ).href

$url6 = "https://inkscape.org$url5"
$url7 = ((Invoke-WebRequest -Uri $url6 -UseBasicParsing).links | Where-Object href -like "*item*exe*" ).href

Invoke-WebRequest "https://inkscape.org$url7" -OutFile ".\LVASI - Installation\Inkscape.exe"

Start-Process ".\LVASI - Installation\Inkscape.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Inkscape.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Inkscape','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Krita
if ($krita.IsChecked){

$url = ((Invoke-WebRequest -uri "https://krita.org/fr/telechargement/krita-desktop/").links | Where-Object innerText -like "*Windows Installeur 64-bit*" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Krita.exe"

Start-Process ".\LVASI - Installation\Krita.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Krita.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Krita','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region XnView
if ($xnview.IsChecked){

$url = ((Invoke-WebRequest -uri "https://www.xnview.com/fr/xnviewmp/#downloads").links | Where-Object href -like "*Win-x64.exe" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\XnView.exe"

Start-Process ".\LVASI - Installation\XnView.exe" -ArgumentList "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\XnView.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'XnView','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Messageries
#region Android Messages Desktop
if ($androidmessages.IsChecked){

$url = ((Invoke-WebRequest -uri "https://github.com/chrisknepper/android-messages-desktop/releases/latest").links | Where-Object href -like "*Setup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\AndroidMessagesDesktop.exe"

Start-Process ".\LVASI - Installation\AndroidMessagesDesktop.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\AndroidMessagesDesktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Android Messages Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Caprine
if ($caprine.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/sindresorhus/caprine/releases/latest").links | where-object href -like "*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Caprine.exe"

Start-Process ".\LVASI - Installation\Caprine.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Caprine.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Caprine','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Discord
if ($discord.IsChecked){
$url = "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Discord.exe"

start-process ".\LVASI - Installation\Discord.exe" -ArgumentList "/s" -wait

remove-item ".\LVASI - Installation\Discord.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Discord','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Facebook Messenger
if ($messenger.ischecked){
$url = "https://www.messenger.com/messenger/desktop/downloadV2/?platform=win"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\FacebookMessenger.exe"

Start-Process ".\LVASI - Installation\FacebookMessenger.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\FacebookMessenger.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Facebook Messenger','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Ferdi
if ($ferdi.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/getferdi/ferdi/releases/latest").links | Where-Object href -like "*Ferdi-Setup*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Ferdi.exe"

Start-Process ".\LVASI - Installation\Ferdi.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Ferdi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ferdi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Signal
if ($signal.IsChecked){
$url = "https://api.github.com/repos/signalapp/Signal-Desktop/releases/latest"
$tag = (Invoke-WebRequest "$url" | ConvertFrom-Json)[0].tag_name
$version = $tag -csplit "v"
$dwn = "https://updates.signal.org/desktop/signal-desktop-win-$version.exe"
$download = $dwn -replace ("\s","")

Invoke-WebRequest $download -OutFile ".\LVASI - Installation\Signal.exe"

Start-Process ".\LVASI - Installation\Signal.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Signal.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Signal','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Slack
if ($slack.ischecked){
$url = "https://slack.com/api/desktop.latestRelease?arch=x64&variant=exe&redirect=true"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Slack.exe"

Start-Process ".\LVASI - Installation\Slack.exe" -argumentlist "-s" -wait

remove-item ".\LVASI - Installation\Slack.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Slack','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Telegram
if ($telegram.IsChecked){
$url = "https://telegram.org/dl/desktop/win64"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Telegram.exe"

Start-Process ".\LVASI - Installation\Telegram.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Telegram.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Telegram','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thunderbird
if ($thunderbird.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.thunderbird.net/en-US/thunderbird/all/").links | Where-Object title -like "*Download for Windows 64-bit in French*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Thunderbird.exe"

Start-Process ".\LVASI - Installation\Thunderbird.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Thunderbird.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thunderbird','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Tweeten
if ($tweeten.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/MehediH/Tweeten/releases/latest").links | where-object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Tweeten.exe"

Start-Process ".\LVASI - Installation\Tweeten.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Tweeten.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Tweeten','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Viber
if ($viber.IsChecked){
$url = "https://download.cdn.viber.com/desktop/windows/ViberSetup.msi"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Viber.msi"

Start-Process ".\LVASI - Installation\Viber.msi" -ArgumentList "/quiet" -wait

remove-item ".\LVASI - Installation\Viber.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Viber','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WhatsApp
if ($whatsapp.IsChecked){
$url = "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\WhatsApp.exe"

Start-Process ".\LVASI - Installation\WhatsApp.exe" -argumentlist '--silent' -wait

remove-item ".\LVASI - Installation\WhatsApp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WhatsApp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Zoom
if ($zoom.IsChecked){
$url = ((Invoke-WebRequest -uri "https://zoom.us/download#client_4meeting").links | Where-Object href -like "*ZoomInstallerFull.msi?archType=x64" ).href

Invoke-WebRequest "https:\\zoom.us$url" -OutFile ".\LVASI - Installation\Zoom.msi"

Start-Process ".\LVASI - Installation\Zoom.msi" -ArgumentList "/quiet" -wait

remove-item ".\LVASI - Installation\Zoom.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Zoom','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Audio
#region Amazon Music
if ($amazonmusic.IsChecked){
winget install -q 9NMS233VM4Z9 --accept-source-agreements --accept-package-agreements
}
#endregion

#region Audacity
if ($audacity.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/audacity/audacity/releases/latest").links | Where-Object href -like "*64bit.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Audacity.exe"

Start-Process ".\LVASI - Installation\Audacity.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Audacity.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Audacity','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Clementine
if ($clementine.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/clementine-player/Clementine/releases/latest").links | Where-Object href -like "*ClementineSetup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Clementine.exe"

Start-Process ".\LVASI - Installation\Clementine.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Clementine.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Clementine','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Deezer
if ($deezer.ischecked){
$url = "https://www.deezer.com/desktop/download?platform=win32&architecture=x86"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\DeezerDesktop.exe"

Start-Process ".\LVASI - Installation\DeezerDesktop.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\DeezerDesktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deezer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region iTunes
if ($itunes.IsChecked){
$url = "https://www.apple.com/itunes/download/win64"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\iTunes.exe"

Start-Process ".\LVASI - Installation\iTunes.exe" -ArgumentList "/qn" -wait

remove-item ".\LVASI - Installation\iTunes.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'iTunes','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaMonkey
if ($mediamonkey.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.mediamonkey.com/download").links | Where-Object href -like "*Setup.exe" | Where-Object innerHTML -like "standard version" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\MediaMonkey.exe"

Start-Process ".\LVASI - Installation\MediaMonkey.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\MediaMonkey.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaMonkey','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MuseScore
if ($musescore.ischecked){
$url = ((Invoke-WebRequest -uri "https://musescore.org/download/musescore.msi" -UseBasicParsing).links | where href -like "*64.msi").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\MuseScore.msi"

Start-Process ".\LVASI - Installation\MuseScore.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\MuseScore.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MuseScore','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MusicBee
if ($musicbee.IsChecked){
winget install -q 9P4CLT2RJ1RS --accept-source-agreements --accept-package-agreements

}
#endregion

#region Spotify
if ($spotify.IsChecked){
$url = "https://download.spotify.com/SpotifyFullSetup.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Spotify.exe"
$location = Get-Location
Start-process explorer.exe -argumentlist "$location\LVASI - Installation\Spotify.exe"
Start-sleep -Seconds 2
Do{
$Item = ".\LVASI - Installation\Spotify.exe"
If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
$IsLocked} until ($IsLocked -eq $false)
Stop-Process -name Spotify -force

remove-item ".\LVASI - Installation\Spotify.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spotify','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Strawberry
if ($strawberry.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/strawberrymusicplayer/strawberry/releases/latest").links | Where-Object href -like "*msvc-x64.exe" | Where-Object href -notlike "*Debug*").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Strawberry.exe"

Start-Process ".\LVASI - Installation\Strawberry.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Strawberry.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Strawberry','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TuneIn
if ($tunein.ischecked){
$url = "https://tunein.com/download/windows/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\TuneIn.exe"

Start-Process ".\LVASI - Installation\TuneIn.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\TuneIn.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TuneIn','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Winamp
if ($winamp.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.winamp.com/").links | Where-Object innerHTML -like "Download" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Winamp.exe"

Start-Process ".\LVASI - Installation\Winamp.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Winamp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winamp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Youtube Music
if ($youtubemusic.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ytmdesktop/ytmdesktop/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Youtube Music Desktop.exe"

Start-Process ".\LVASI - Installation\Youtube Music Desktop.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Youtube Music Desktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Youtube Music','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Vidéo
#region 4K Video Downloader
if ($qkvd.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.4kdownload.com/fr/downloads#").links | Where-Object href -like "*4kvideodownloader*x64.msi*").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\4KVideoDownloader.msi"

Start-Process ".\LVASI - Installation\4KVideoDownloader.msi" -argumentlist "/quiet /norestart" -wait

remove-item ".\LVASI - Installation\4KVideoDownloader.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'4k Video Downloader','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Disney +
if ($disney.IsChecked){
winget install -q 9NXQXXLFST89 --accept-source-agreements --accept-package-agreements
}
#endregion

#region HandBrake
if ($handbrake.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/HandBrake/HandBrake/releases/latest").links | Where-Object href -like "*x86_64-Win_GUI.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\HandBrake.exe"

Start-Process ".\LVASI - Installation\HandBrake.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\HandBrake.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Handbrake','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Basic
if ($klitebasic.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_basic.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\K-Lite Basic.exe"

Start-Process ".\LVASI - Installation\K-Lite Basic.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\K-Lite Basic.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Standard
if ($klitestd.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_standard.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\K-Lite Standard.exe"

Start-Process ".\LVASI - Installation\K-Lite Standard.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\K-Lite Standard.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Mega
if ($klitemega.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_mega.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\K-Lite Mega.exe"

Start-Process ".\LVASI - Installation\K-Lite Mega.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\K-Lite Mega.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kdenlive
if ($kdenlive.ischecked){
$url = ((Invoke-WebRequest -uri "https://kdenlive.org/en/download/").links | where-object href -like "*.exe" |Where-Object href -NotLike "*standalone*").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Kdenlive.exe"

Start-Process ".\LVASI - Installation\Kdenlive.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Kdenlive.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kdenlive','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kodi
if ($kodi.IsChecked){
$url = ((Invoke-WebRequest -uri "https://kodi.tv/download/windows").links | Where-Object innerText -like "*64BIT*").href
$url2 = $url
$down1 = $url2.substring(0,$url2.length -8)
$down1

Invoke-WebRequest "$down1" -OutFile ".\LVASI - Installation\Kodi.exe"

Start-Process ".\LVASI - Installation\Kodi.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Kodi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kodi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-BE
if ($mpcbe.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Aleksoid1978/MPC-BE/releases/latest").links | Where-Object href -like "*x64*installer.zip").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\MPC-BE.zip"

Expand-Archive -LiteralPath ".\LVASI - Installation\MPC-BE.zip" -DestinationPath ".\"

$exe = Get-ChildItem -Path ".\LVASI - Installation\" -include "MPC-BE*.exe" -File -Recurse

Start-Process "$exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\MPC-BE.zip"
remove-item "$exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-BE','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-HC
if ($mpchc.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/clsid2/mpc-hc/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\MPC-HC.exe"

Start-Process ".\LVASI - Installation\MPC-HC.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\MPC-HC.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-HC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MKVToolNix
if ($mkvtoolnix.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.fosshub.com/MKVToolNix.html").links | Where-Object innerHTML -like "*Windows*installer*(64-bit)*").href
$urlsplit = $url -csplit('-setup.exe')
$url2 = "$urlsplit"
$version =$url2.substring($url2.length -7)
$dwn = "https://mkvtoolnix.download/windows/releases/$version/mkvtoolnix-64-bit-$version-setup.exe"
$dwn2 = $dwn -replace ("\s","")

Invoke-WebRequest $dwn2 -OutFile ".\LVASI - Installation\MKVToolNix.exe"

start-process ".\LVASI - Installation\MKVToolNix.exe" -ArgumentList "/S" -wait

remove-item ".\LVASI - Installation\MKVToolNix.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MKVToolNix','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Netflix
if ($netflix.IsChecked){
winget install -q 9WZDNCRFJ3TJ --accept-source-agreements --accept-package-agreements
}
#endregion

#region OBS Studio
if ($obsstudio.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/obsproject/obs-studio/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\OBSStudio.exe"

Start-Process ".\LVASI - Installation\OBSStudio.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\OBSStudio.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OBS Studio','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShot
if ($openshot.IsChecked){
$IOTD = ((Invoke-WebRequest -uri "https://github.com/OpenShot/openshot-qt/releases/latest").links | Where-Object href -like "*x86_64.exe").href

Invoke-WebRequest "https://github.com$IOTD" -OutFile ".\LVASI - Installation\OpenShot.exe"

Start-Process ".\LVASI - Installation\OpenShot.exe" -argumentlist "/VERYSILENT /NORESTART /LANG=1036" -wait

remove-item ".\LVASI - Installation\OpenShot.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Plex Media Server
if ($plexmediaserver.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.videohelp.com/software/Plex").links | Where-Object innerHTML -like "*Download*Windows" | Where-Object href -like "*downloads*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\PlexMediaServer.exe"

Start-Process ".\LVASI - Installation\PlexMediaServer.exe" -argumentlist "/install /quiet /norestart" -wait

remove-item ".\LVASI - Installation\PlexMediaServer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Plex Media Server','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Prime Video
if ($primevideo.IsChecked){
winget install -q 9P6RC76MSMMJ --accept-source-agreements --accept-package-agreements
}
#endregion

#region ScreenToGif
if ($screentogif.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/NickeManarin/ScreenToGif/releases/latest").links | Where-Object href -NotLike "*Light*" | Where-Object href -like "*Setup.x64.msi" ).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\ScreenToGif.msi"

Start-Process ".\LVASI - Installation\ScreenToGif.msi" -argumentlist "/qb" -wait

remove-item ".\LVASI - Installation\ScreenToGif.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ScreenToGif','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ShareX
if ($sharex.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ShareX/ShareX/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\ShareX.exe"

Start-Process ".\LVASI - Installation\ShareX.exe" -argumentlist "/VERYSILENT /NORESTART /NORUN" -wait

remove-item ".\LVASI - Installation\ShareX.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ShareX','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Shotcut
if ($shotcut.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/mltframework/shotcut/releases/latest").links | Where-Object href -like "*win64*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Shotcut.exe"

Start-Process ".\LVASI - Installation\Shotcut.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Shotcut.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Shotcut','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VLC
if ($vlc.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘http://download.videolan.org/vlc/last/win64/’).Links | Where-Object innerHTML -like “*win64.msi”).href

Invoke-WebRequest "http://download.videolan.org/vlc/last/win64/$url" -OutFile ".\LVASI - Installation\VLC.msi"

Start-Process ".\LVASI - Installation\VLC.msi " -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\VLC.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VLC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region 3D
#region 3D Builder
if ($tdbuilder.IsChecked){
winget install -q 9WZDNCRFJ3T6 --accept-source-agreements --accept-package-agreements
}
#endregion

#region Blender
if ($blender.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.blender.org/download/").links | Where-Object href -like "*windows-x64.msi*" | Where-Object class -like "js-download").href
$urlsplit = $url -csplit ("https://www.blender.org/download")
$download = "https://ftp.nluug.nl/pub/graphics/blender$urlsplit"
$dwn = ("$download" -replace "\s","")
$dwnfinal = $dwn.Substring(0,$dwn.Length -1)

Invoke-WebRequest $dwnfinal -OutFile ".\LVASI - Installation\Blender.msi"

Start-Process ".\LVASI - Installation\Blender.msi" -ArgumentList "/quiet" -wait

remove-item ".\LVASI - Installation\Blender.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Blender','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Cura
if ($cura.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Ultimaker/Cura/releases/latest").links | Where-Object href -like "*win64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Cura.exe"

Start-Process -FilePath ".\LVASI - Installation\Cura.exe" -ArgumentList "/S" -Wait

Remove-Item ".\LVASI - Installation\Cura.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Cura','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FreeCAD
if ($freecad.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.freecadweb.org/downloads.php").links | Where-Object innerHTML -like "*64-Bit installer*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\FreeCAD-install.exe"

Start-Process ".\LVASI - Installation\FreeCAD-install.exe" -ArgumentList "/S" -wait

remove-item ".\LVASI - Installation\FreeCAD-install.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FreeCAD','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Fusion360
if ($fusion360.IsChecked){
$url = "https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Fusion360.exe"

Start-Process ".\LVASI - Installation\Fusion360.exe" -ArgumentList "--quiet" -wait

remove-item ".\LVASI - Installation\Fusion360.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Fusion360','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ideaMaker
if ($ideamaker.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://www.raise3d.com/download/' -UseBasicParsing).links | Where-Object href -like "*download*exe" ).href
$status = ([regex]::match($content.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null {'Error'}
}

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\ideaMaker.exe"

Start-Process -FilePath ".\LVASI - Installation\ideaMaker.exe" -ArgumentList "/S" -Wait

Remove-Item ".\LVASI - Installation\ideaMaker.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ideaMaker','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Lychee Slicer
if ($lycheeslicer.IsChecked){
$url = ((Invoke-WebRequest -uri "https://mango3d.io/downloads/").links | Where-Object class -like "*button_0*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\LycheeSlicer.exe"

Start-Process -FilePath ".\LVASI - Installation\LycheeSlicer.exe" -ArgumentList "/S" -Wait

Remove-Item ".\LVASI - Installation\LycheeSlicer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Lychee Slicer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PrusaSlicer
if ($prusaslicer.IsChecked){
$url = "https://cdn.prusa3d.com/downloads/drivers/PrusaSlicer_Win_standalone_2.4.2.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\PrusaSlicer.exe"

Start-Process ".\LVASI - Installation\PrusaSlicer.exe" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\PrusaSlicer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PrusaSlicer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sweet Home 3D
if ($sweethome.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.sweethome3d.com/fr/download.jsp" -UseBasicParsing).links | Where-Object href -like "*sourceforge.net/projects/sweethome3d/*.exe*" | Select -First 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Sweet Home 3D.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox

Start-Process ".\LVASI - Installation\Sweet Home 3D.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\Sweet Home 3D.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sweet Home 3D','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Navigateurs
#region Brave
if ($brave.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/brave/brave-browser/releases/latest").links | Where-Object href -like "*StandaloneSilent*Setup.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\BraveSilent.exe"

Start-Process ".\LVASI - Installation\BraveSilent.exe" -wait

remove-item ".\LVASI - Installation\BraveSilent.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Brave','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chrome
if ($chrome.IsChecked){
$url = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BFFF2C7A8-1C36-4C54-BB60-F9B63E5C9E58%7D%26lang%3Dfr%26browser%3D3%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Chrome.exe"

start-process ".\LVASI - Installation\Chrome.exe" -argumentlist "/silent /install" -verb Runas -wait

remove-item ".\LVASI - Installation\Chrome.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chrome','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chromium
if ($chromium.ischecked){
$url = ((Invoke-WebRequest -uri "https://chromium.woolyss.com/download/" -UseBasicParsing).links | where-Object href -like "*Win_x64*mini_installer.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Chromium.exe"

Start-Process ".\LVASI - Installation\Chromium.exe" -argumentlist "--install --silent --system-level" -wait

remove-item ".\LVASI - Installation\Chromium.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chromium','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Firefox
if ($firefox.IsChecked){
Invoke-WebRequest "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=fr" -OutFile ".\LVASI - Installation\Firefox.exe"

Start-Process -FilePath ".\LVASI - Installation\Firefox.exe" -Argumentlist "/S" -Wait

Remove-Item ".\LVASI - Installation\Firefox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Firefox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Opera
if ($opera.IsChecked){
$url = "https://net.geo.opera.com/opera/stable/windows"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Opera.exe"

Start-Process ".\LVASI - Installation\Opera.exe" -ArgumentList "/silent /allusers=1 /launchbrowser=0" -wait

remove-item ".\LVASI - Installation\Opera.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Opera','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thor
if ($thor.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.torproject.org/fr/download/").links | where-object href -like "*.exe" |Select-Object -first 1).href

Invoke-WebRequest "https://www.torproject.org$url" -outfile ".\LVASI - Installation\Thor.exe"

Start-Process ".\LVASI - Installation\Thor.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Thor.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thor','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Vivaldi
if ($vivaldi.IsChecked){
$url = ((Invoke-WebRequest -uri "https://vivaldi.com/download/").links | Where-Object outerText -like "Windows 64bit" |Select-Object -Skip 1 ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Vivaldi.exe"

Start-Process ".\LVASI - Installation\Vivaldi.exe" -argumentlist "--vivaldi-silent --do-not-launch-chrome --system-level" -wait

remove-item ".\LVASI - Installation\Vivaldi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Vivaldi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Waterfox
if ($waterfox.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.waterfox.net/download/" -UseBasicParsing).links | where-Object href -like "*Setup.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Waterfox.exe"

Start-Process ".\LVASI - Installation\Waterfox.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Waterfox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Waterfox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Dev
#region DirectX
if ($directx.ischecked){
$url = "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\DirectXSetup.exe"

Start-Process ".\LVASI - Installation\DirectXSetup.exe" -argumentlist "/Q" -wait

remove-item ".\LVASI - Installation\DirectXSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'DirectX','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FileZilla
if ($filezilla.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://filezilla-project.org/download.php?show_all=1’).Links | Where-Object innerHTML -like “*win64-setup.exe”).href
$IOTDsplit = $IOTD -cSplit("amp;")
$download = -join $IOTDsplit

Invoke-WebRequest $download -outfile ".\LVASI - Installation\Filezilla.exe"

Start-Process -FilePath ".\LVASI - Installation\Filezilla.exe" -ArgumentList "/S" -Wait

Remove-Item ".\LVASI - Installation\Filezilla.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileZilla','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Github Desktop
if ($github.IsChecked){
$url = "https://central.github.com/deployments/desktop/desktop/latest/win32"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Github.exe"

Start-Process ".\LVASI - Installation\Github.exe" -argumentlist "--silent" -wait

remove-item ".\LVASI - Installation\Github.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Github Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Notepad++
if ($notepad.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest").links | Where-Object href -like "*Installer.x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Notepad++.exe"

Start-Process -FilePath ".\LVASI - Installation\Notepad++.exe" -Argumentlist "/S" -Wait

Remove-Item ".\LVASI - Installation\Notepad++.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Notepad++','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Putty
if ($putty.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html’).Links | Where-Object innerHTML -like “*64bit*msi*”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Putty.msi"

Start-Process ".\LVASI - Installation\Putty.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\Putty.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Putty','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Python
if ($python.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.python.org/downloads/" -UseBasicParsing).links | where-Object href -like "*python*.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Python.exe"

Start-Process ".\LVASI - Installation\Python.exe" -argumentlist "/quiet /InstallAllUsers" -wait

remove-item ".\LVASI - Installation\Python.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Python','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Visual Studio Code
if ($visualcode.ischecked){
    $url = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
    
    Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\VisualStudioCode.exe"
    
    Start-Process ".\LVASI - Installation\VisualStudioCode.exe" -argumentlist "/VERYSILENT /NORESTART /MERGETASKS=!runcode" -wait
    
    remove-item ".\LVASI - Installation\VisualStudioCode.exe"
    
    [reflection.assembly]::loadwithpartialname('System.Windows.Forms')
    [reflection.assembly]::loadwithpartialname('System.Drawing')
    $notify = new-object system.windows.forms.notifyicon
    $notify.icon = [System.Drawing.SystemIcons]::Information
    $notify.visible = $true
    $notify.showballoontip(10000,'Visual Studio Code','Installation terminée',[system.windows.forms.tooltipicon]::Info)
    }
#endregion

#region WinSCP
if ($winscp.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://winscp.net/eng/download.php' -UseBasicParsing).links | Where-Object href -like "*download*exe" ).href
$status = ([regex]::match($url.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null {'Error'}
}

$url2= "https://winscp.net$url"
$dwn = ((Invoke-WebRequest -uri "$url2").links |Where-Object innerHTML -like "Direct download").href

Invoke-WebRequest "$dwn" -OutFile ".\LVASI - Installation\WinSCP.exe"

Start-Process -FilePath ".\LVASI - Installation\WinSCP.exe" -ArgumentList "/VERYSILENT /NORESTART /ALLUSERS" -Wait

Remove-Item ".\LVASI - Installation\WinSCP.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinSCP','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Sécurité / Santé
#region AVG Free
if ($avgfree.IsChecked){
$url = "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN_AVG/installertype_FULL/build_RELEASE/cookie_mmm_bav_998_999_000_m"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\AVG.exe"

Start-Process ".\LVASI - Installation\AVG.exe" -argumentlist "/SILENT" -wait

remove-item ".\LVASI - Installation\AVG.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'AVG Free','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bitwarden
if ($bitwarden.IsChecked){
$url = "https://vault.bitwarden.com/download/?app=desktop&platform=windows"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\Bitwarden.exe"

Start-Process ".\LVASI - Installation\Bitwarden.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Bitwarden.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bitwarden','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bleachbit
if ($bleachbit.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.bleachbit.org/download/windows").links | Where-Object innerHTML -like "*installer*.exe" ).href
$version = $url.Substring($url.length -25)
$dwn = "https://download.bleachbit.org/$version"

Invoke-WebRequest "$dwn" -OutFile ".\LVASI - Installation\Bleachbit.exe"

Start-Process ".\LVASI - Installation\Bleachbit.exe" -argumentlist "/S /allusers" -Verb runas -wait

remove-item ".\LVASI - Installation\Bleachbit.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bleachbit','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CCleaner
if ($ccleaner.IsChecked){
$url = "https://bits.avcdn.net/productfamily_CCLEANER/insttype_FREE/platform_WIN_PIR/installertype_ONLINE/build_RELEASE/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\ccsetup.exe"

Start-Process ".\LVASI - Installation\ccsetup.exe" -ArgumentList "/S" -wait

remove-item ".\LVASI - Installation\ccsetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CCleaner','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ExpressVPN
if ($expressvpn.ischecked){
$url = "https://www.expressvpn.com/fr/clients/latest/windows"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\ExpressVPN.exe"

Start-Process ".\LVASI - Installation\ExpressVPN.exe" -argumentlist "/install /quiet /norestart"

Start-sleep -Seconds 2
Do{
$Item = ".\ExpressVPN.exe"

If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
} until ($IsLocked -eq $false)
Stop-Process -Name 'ExpressVPN','ExpressVPNNotificationService' -Force -ErrorAction SilentlyContinue

remove-item ".\LVASI - Installation\ExpressVPN.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ExpressVPN','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Glary Utilities
if ($glary.IsChecked){
$url = "https://www.glarysoft.com/aff/download.php?s=GU"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\GlaryUtilities.exe"

Start-Process ".\LVASI - Installation\GlaryUtilities.exe" -argumentlist '/S' -wait

remove-item ".\LVASI - Installation\GlaryUtilities.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Glary Utilities','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region KeePass
if ($keepass.ischecked){
$url = ((Invoke-WebRequest -uri "https://sourceforge.net/projects/keepass/files/KeePass%202.x/").links | Where-Object href -like "*/projects/keepass/files/KeePass*"|Where-Object href -NotLike "*stats*" | Select-Object -First 1).href

$link = ((Invoke-WebRequest -uri "https://sourceforge.net$url").links |Where-Object href -like "*msi/download" ).href

Invoke-WebRequest -Uri $link -OutFile ".\LVASI - Installation\KeePass.msi" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Firefox

Start-Process ".\LVASI - Installation\KeePass.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\KeePass.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KeePass','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Malwarebytes
if ($malwarebytes.IsChecked){
$url = "https://data-cdn.mbamupdates.com/web/mb4-setup-consumer/MBSetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\MBSetup.exe"

Start-Process ".\LVASI - Installation\MBSetup.exe" -argumentlist "/VERYSILENT /LANG=1036 /NORESTART" -verb Runas -wait

remove-item ".\LVASI - Installation\MBSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Malwarebytes','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NordVPN
if ($nordvpn.IsChecked){
$url = "https://downloads.nordcdn.com/apps/windows/NordVPN/latest/NordVPNSetup_x64.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\NordVPN.exe"

start-process ".\LVASI - Installation\NordVPN.exe" -ArgumentList "/VERYSILENT /NORESTART /SUPPRESSMSGBOXES" -wait

remove-item ".\LVASI - Installation\NordVPN.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NordVPN','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Spybot
if ($spybot.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.filehorse.com/download-spybot-search-destroy/download/").links | Where-Object outerText -like "*Start Download*" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Spybot.exe"

Start-Process ".\LVASI - Installation\Spybot.exe" -argumentlist "/VERYSILENT /NORESTART /NOAUTORUN"

Start-Sleep -Seconds 2
Do{
$Item = ".\LVASI - Installation\Spybot.exe"
If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
$IsLocked} until ($IsLocked -eq $false)

remove-item ".\LVASI - Installation\Spybot.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spybot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VeraCrypt
if ($veracrypt.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/veracrypt/VeraCrypt/releases/latest").links | Where-Object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\VeraCrypt.msi"

Start-Process ".\LVASI - Installation\VeraCrypt.msi" -argumentlist "/qb ACCEPTLICENSE=YES" -wait

remove-item ".\LVASI - Installation\VeraCrypt.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VeraCrypt','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Wise Disk Manager
if ($wisediskmanager.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘https://www.wisecleaner.com/wise-disk-cleaner.html’).Links | Where-Object innertext -like “Free Download”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\WDC.exe"

Start-Process ".\LVASI - Installation\WDC.exe" /VERYSILENT -wait

remove-item ".\LVASI - Installation\WDC.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Wise Disk Manager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Téléchargements
#region Deluge
if ($deluge.ischecked){
$version = ((Invoke-WebRequest -uri "https://ftp.osuosl.org/pub/deluge/windows/").links | Where-Object href -like "*win64-setup.exe" | Select-Object -first 1).href
$url = "https://ftp.osuosl.org/pub/deluge/windows/$version"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Deluge.exe"

Start-Process ".\LVASI - Installation\Deluge.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Deluge.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deluge','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Free Download Manager
if ($fdm.IsChecked){
$url = "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\FDM.exe"

Start-Process ".\LVASI - Installation\FDM.exe" -argumentlist "/ALLUSERS /VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\FDM.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Free Download Manager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region JDownloader
if ($jdl.IsChecked){
$url = "https://installer.jdownloader.org/lvasi/JDownloader2Setup_windows-x64.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\JDownloader.exe"

Start-Process ".\LVASI - Installation\JDownloader.exe" -argumentlist "-q -Dfilelinks=dlc,jdc,ccf,rsdf -Ddesktoplink=true -Dexecuteafter=false" -wait

remove-item ".\LVASI - Installation\JDownloader.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'JDownloader','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region qBittorrent
if ($qbittorrent.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://www.qbittorrent.org/download.php’).Links | Where-Object innerHTML -like “*32-bit installer”).href
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile("$IOTD",".\LVASI - Installation\qBittorrent.exe")

Start-Process ".\LVASI - Installation\qBittorrent.exe" -ArgumentList "/S" -wait

remove-item ".\LVASI - Installation\qBittorrent.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'qBittorrent','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Transmission
if ($transmission.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/transmission/transmission/releases/latest").links | Where-Object href -like "*x64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Transmission.msi"

Start-Process ".\LVASI - Installation\Transmission.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\Transmission.msi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Transmission','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Cloud
#region Google Drive
if ($gdrive.IsChecked){
$url = "https://dl.google.com/drive-file-stream/GoogleDrive.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\GoogleDrive.exe"

Start-Process ".\LVASI - Installation\GoogleDrive.exe" -ArgumentList "--silent" -wait

remove-item ".\LVASI - Installation\GoogleDrive.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Google Drive','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MEGA
if ($megasync.ischecked){
$url = "https://mega.nz/MEGAsyncSetup64.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\MEGAsyncSetup.exe"

Start-Process ".\LVASI - Installation\MEGAsyncSetup.exe" -argumentlist "/S /ALLUSERS" -wait

remove-item ".\LVASI - Installation\MEGAsyncSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MEGAsync','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Nextcloud
if ($nextcloud.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/nextcloud/desktop/releases/latest").links | Where-Object href -like "*64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Nextcloud.msi"

Start-Process ".\LVASI - Installation\Nextcloud.msi" -argumentlist "REBOOT=ReallySuppress /quiet" -wait

remove-item ".\LVASI - Installation\Nextcloud.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Nextcloud','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ownCloud
if ($owncloud.ischecked){
$url = ((Invoke-WebRequest -uri "https://owncloud.com/desktop-app/" -UseBasicParsing).links | Where-Object outerHTML -like "*href*x64.msi*blank*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\ownCloud.msi"

Start-Process ".\LVASI - Installation\ownCloud.msi" -argumentlist "REBOOT=ReallySuppress /quiet" -wait

remove-item ".\LVASI - Installation\ownCloud.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ownCloud','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SyncTrayzor
if ($synctrayzor.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/canton7/SyncTrayzor/releases/latest").links | Where-Object href -like "*64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\SyncTrayzorSetup.exe"

Start-Process ".\LVASI - Installation\SyncTrayzorSetup.exe" -argumentlist "/SP- /VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\SyncTrayzorSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SyncTrayzor','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Outils
#region BalenaEtcher
if ($balena.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/balena-io/etcher/releases/latest").links | Where-Object href -like "*-Setup-*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\BalenaEtcher.exe"

Start-Process ".\LVASI - Installation\BalenaEtcher.exe" /S -wait

remove-item ".\LVASI - Installation\BalenaEtcher.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BalenaEtcher','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region BurnAware
if ($burnaware.ischecked){
$url0 = ((Invoke-WebRequest -uri "https://www.burnaware.com/download.html").links | where href -like "*downloads/burnaware_free*").href
$url= "https://www.burnaware.com$url0"

Invoke-WebRequest -Uri $url -OutFile ".\LVASI - Installation\BurnAware.exe"

Start-Process ".\LVASI - Installation\BurnAware.exe" -argumentlist "/VERYSILENT /NORESTART /SUPPRESSMSGBOXES" -wait

remove-item ".\LVASI - Installation\BurnAware.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BurnAware','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CDBurnerXP
if ($cdburnerxp.IsChecked){
$url = "https://cdburnerxp.se/downloadsetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\CDBurnerXP.exe"

Start-Process ".\LVASI - Installation\CDBurnerXP.exe" -argumentlist '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -wait

remove-item ".\LVASI - Installation\CDBurnerXP.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CDBurnerXP','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Everything
if ($everything.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.voidtools.com/downloads/").links | Where-Object innerHTML -like "Download Installer 64-bit" ).href

Invoke-WebRequest "https://www.voidtools.com$url" -outfile ".\LVASI - Installation\Everything.exe"

Start-Process ".\LVASI - Installation\Everything.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Everything.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Everything','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Flameshot
if ($flameshot.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/flameshot-org/flameshot/releases/latest").links | Where-Object href -like "*win64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Flameshot.msi"

Start-Process ".\LVASI - Installation\Flameshot.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\Flameshot.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Flameshot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HP Smart
if ($hpsmart.IsChecked){
winget install -q 9WZDNCRFHWLH --accept-source-agreements --accept-package-agreements
}
#endregion

#region KDEConnect
if ($kdeconnect.IsChecked){
$url = ((Invoke-WebRequest -uri "https://kdeconnect.kde.org/download.html").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\KDEConnect.exe"

Start-Process ".\LVASI - Installation\KDEConnect.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\KDEConnect.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KDEConnect','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaInfo
if ($mediainfo.IsChecked){
$url = ((Invoke-WebRequest -uri "https://mediaarea.net/fr/MediaInfo").links | Where-Object innerHTML -like "*Download*" |Where-Object href -like "*exe").href

Invoke-WebRequest "https:$url" -OutFile ".\LVASI - Installation\MediaInfo.exe"

Start-Process ".\LVASI - Installation\MediaInfo.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\MediaInfo.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaInfo','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NetLimiter
if ($netlimiter.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.netlimiter.com/").links | Where-Object innerHTML -like "*DOWNLOAD*" ).href

Invoke-WebRequest "https://www.netlimiter.com$url" -outfile ".\LVASI - Installation\NetLimiter.exe"

Start-Process ".\LVASI - Installation\NetLimiter.exe" -ArgumentList "/exenoui /qn" -wait

remove-item ".\LVASI - Installation\NetLimiter.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NetLimiter','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Parsec
if ($parsec.ischecked){
$url = "https://builds.parsecgaming.com/package/parsec-windows.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\Parsec.exe"

Start-Process ".\LVASI - Installation\Parsec.exe" -argumentlist "/silent /norun" -wait

remove-item ".\LVASI - Installation\Parsec.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Parsec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PushBullet
if ($pushbullet.IsChecked){
$url = "https://update.pushbullet.com/pushbullet_installer.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\PushBullet.exe"

Start-Process ".\LVASI - Installation\PushBullet.exe" -argumentlist "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-" -wait

remove-item ".\LVASI - Installation\PushBullet.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PushBullet','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTranslate
if ($qtranslate.ischecked){
$url = ((Invoke-WebRequest -uri "https://quest-app.appspot.com/home" -UseBasicParsing).links | where-Object href -like "*.exe").href

Invoke-WebRequest "https:$url" -outfile ".\LVASI - Installation\QTranslate.exe"

Start-Process ".\LVASI - Installation\QTranslate.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\QTranslate.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTranslate','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTTabBar
if ($qtt.IsChecked){
$url = ((Invoke-WebRequest -uri "http://qttabbar.wikidot.com/qttabbar1").links | Where-Object innerHTML -like "*64bit" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\QTTabBar.zip"

Expand-Archive ".\LVASI - Installation\QTTabBar.zip" -DestinationPath ".\LVASI - Installation\"

Start-Process ".\LVASI - Installation\QTTabBar.exe" -argumentlist "/qi" -wait

remove-item ".\LVASI - Installation\QTTabBar.zip"
remove-item ".\LVASI - Installation\QTTabBar.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTTabBar','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Raspberry Pi Imager
if ($raspberrypi.IsChecked){
$url = "https://downloads.raspberrypi.org/imager/imager_latest.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\RaspberryPiImager.exe"

Start-Process ".\LVASI - Installation\RaspberryPiImager.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\RaspberryPiImager.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Raspberry Pi Imager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Recuva
if ($recuva.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.ccleaner.com/fr-fr/recuva/download/standard").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Recuva.exe"

Start-Process ".\LVASI - Installation\Recuva.exe" -argumentlist '/S' -wait

remove-item ".\LVASI - Installation\Recuva.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Recuva','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RevoUninstaller
if ($revo.IsChecked){
$url = "https://download.revouninstaller.com/download/revosetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\RevoUninstaller.exe"

Start-Process ".\LVASI - Installation\RevoUninstaller.exe" -argumentlist '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART' -wait

remove-item ".\LVASI - Installation\RevoUninstaller.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RevoUninstaller','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Speccy
if ($speccy.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.ccleaner.com/fr-fr/speccy/download/standard").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Installation\Speccy.exe"

Start-Process ".\LVASI - Installation\Speccy.exe" -argumentlist '/S' -wait

remove-item ".\LVASI - Installation\Speccy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Speccy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeamViewer
if ($teamviewer.IsChecked){
$url = "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\TeamViewer.exe"

Start-Process ".\LVASI - Installation\TeamViewer.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\TeamViewer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeamViewer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VirtualBox
if ($virtualbox.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.virtualbox.org/wiki/Downloads").links | Where-Object innerText -like "*Windows hosts*").href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Installation\VirtualBox.exe"

Start-Process ".\LVASI - Installation\VirtualBox" -argumentlist "--silent --ignore-reboot" -wait

remove-item ".\LVASI - Installation\VirtualBox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VirtualBox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Améliorations
#region CopyQ
if ($copyq.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/hluk/CopyQ/releases/latest").links | Where-Object href -like "*setup.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\CopyQ.exe"

Start-Process ".\LVASI - Installation\CopyQ.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\CopyQ.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CopyQ','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Files
if ($files.IsChecked){
    $url = ((Invoke-WebRequest -uri "https://github.com/files-community/Files/releases/latest").links | Where-Object href -like "*msixbundle").href
    
    Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Files.msixbundle"
    
    Add-AppxPackage -Path ".\LVASI - Installation\Files.msixbundle"
    
    remove-item ".\LVASI - Installation\Files.msixbundle"
    
    [reflection.assembly]::loadwithpartialname('System.Windows.Forms')
    [reflection.assembly]::loadwithpartialname('System.Drawing')
    $notify = new-object system.windows.forms.notifyicon
    $notify.icon = [System.Drawing.SystemIcons]::Information
    $notify.visible = $true
    $notify.showballoontip(10000,'Files','Installation terminée',[system.windows.forms.tooltipicon]::Info)
    }
#endregion

#region Ksnip
if ($ksnip.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ksnip/ksnip/releases/latest").links | Where-Object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Ksnip.msi"

Start-Process ".\LVASI - Installation\Ksnip.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\Ksnip.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ksnip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LightBulb
if ($lightbulb.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Tyrrrz/LightBulb/releases/latest").links | Where-Object href -like "*LightBulb-Installer.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\LightBulb.exe"

Start-Process ".\LVASI - Installation\LightBulb.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

remove-item ".\LVASI - Installation\LightBulb.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LightBulb','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ModernFlyouts
if ($modernflyouts.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ModernFlyouts-Community/ModernFlyouts/releases/latest").links | Where-Object href -like "*.Msixbundle").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\ModernFlyouts.Msixbundle"

Add-AppxPackage -Path ".\LVASI - Installation\ModernFlyouts.Msixbundle"

remove-item ".\LVASI - Installation\ModernFlyouts.Msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ModernFlyouts','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShell
if ($openshell.IsChecked){

$url = ((Invoke-WebRequest -uri "https://github.com/Open-Shell/Open-Shell-Menu/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Openshell.exe"

Start-Process -FilePath ".\LVASI - Installation\Openshell.exe" -ArgumentList "/qn" -Wait

Remove-Item ".\LVASI - Installation\Openshell.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShell','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PowerToys
if ($powertoys.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/microsoft/PowerToys/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\PowerToys.exe"

Start-Process ".\LVASI - Installation\PowerToys.exe" -argumentlist "/install /quiet /norestart" -wait

remove-item ".\LVASI - Installation\PowerToys.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PowerToys','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QuickLook
if ($quicklook.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/QL-Win/QuickLook/releases/latest").links | where-object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\QuickLook.msi"

Start-Process ".\LVASI - Installation\QuickLook.msi" -argumentlist "/quiet" -wait

remove-item ".\LVASI - Installation\QuickLook.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QuickLook','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Rainmeter
if ($rainmeter.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/rainmeter/rainmeter/releases/latest").links | Where-Object href -like "*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Installation\Rainmeter.exe"

Start-Process ".\LVASI - Installation\Rainmeter.exe" -argumentlist "/S" -wait

remove-item ".\LVASI - Installation\Rainmeter.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Rainmeter','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeraCopy
if ($teracopy.ischecked){
$url = "https://codesector.com/files/teracopy.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\TeraCopy.exe"

Start-Process ".\LVASI - Installation\TeraCopy.exe" -argumentlist "/exenoui /quiet" -wait

remove-item ".\LVASI - Installation\TeraCopy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeraCopy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WinaeroTweaker
if ($winaero.isChecked){
$url = "https://winaerotweaker.com/download/winaerotweaker.zip"

Invoke-WebRequest "$url" -outfile ".\LVASI - Installation\WinaeroTweaker.zip"

expand-archive ".\LVASI - Installation\WinaeroTweaker.zip" -DestinationPath ".\LVASI - Installation\WinaeroTweaker\"

$exe = Get-ChildItem -Path ".\LVASI - Installation\WinaeroTweaker\" -include "*setup.exe" -file -Recurse

Start-Process $exe -argumentlist "/SP- /VERYSILENT" -wait

remove-item ".\LVASI - Installation\WinaeroTweaker.zip"
Remove-Item ".\LVASI - Installation\WinaeroTweaker\" -recurse -force

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinaeroTweaker','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Désintallation de 7zip si besoin
if ($global:7zipneed -eq $true){
Start-Process "${env:ProgramFiles}\7-Zip\Uninstall.exe" -argumentlist "/S" -wait
}
#endregion

$ProgressPreference = 'Continue'

Stop-Transcript

start-sleep -Seconds 2

Remove-Item ".\LVASI - Installation" -Recurse -force

$window.WindowState= "Maximized"
	
[System.Windows.Forms.MessageBox]::Show("Toutes les installations sont terminées.
(Si des logiciels n'ont pas été correctement installés, n'hésitez pas à me contacter)","LVASI - INSTALLATIONS","Ok",'Asterisk')
}
else{}})

$telecharger.add_click({
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Asterisk
$MessageBody = "Les logiciels sélectionnés vont être téléchargés.
Voulez-vous continuer ?
(LVASI sera indisponible pendant la durée des téléchargements.)
---
The selected software will be downloaded.
Do you want to continue ?
(LVASI will be unavailable for the duration of the downloads.)"
$MessageTitle = "LVASI - TÉLÉCHARGEMENTS"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)

if ($Result -eq "Yes"){
$window.WindowState= "Minimized"
Start-Transcript -Append ".\LVASI_logfile.txt"
$ProgressPreference = 'SilentlyContinue'

$global:7zipneed = $false
New-Item ".\LVASI - Téléchargements" -ItemType Directory -force

#region Winget
if ($winget.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/microsoft/winget-cli/releases/latest").links | Where-Object href -like "*.msixbundle").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Winget.msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winget','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Compression
#region 7-Zip
if ($szip.ischecked){

$url = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\7-zip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'7-Zip','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bandizip
if ($bandizip.ischecked){
Invoke-WebRequest "https://dl.bandisoft.com/bandizip.std/BANDIZIP-SETUP-STD-ALL.EXE" -OutFile ".\LVASI - Téléchargements\Bandizip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bandizip','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region peazip
if ($peazip.ischecked){

$url = ((Invoke-WebRequest -uri "https://github.com/peazip/PeaZip/releases/latest").links | Where-Object href -like "*WIN64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\PeaZip.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Peazip','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Documents
#region Calibre
if ($calibre.IsChecked){
$url = "https://calibre-ebook.com/dist/win64"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Calibre.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Calibre','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Draw.io
if ($drawio.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/jgraph/drawio-desktop/releases/latest").links | Where-Object href -like "*windows-installer.exe" | Where-Object href -NotLike *github*).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Drawio.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Draw.io','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Evernote
if ($evernote.IsChecked){
$url = ((Invoke-WebRequest -uri "https://evernote.com/intl/fr/download").links | Where-Object href -like "*setup.exe" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Evernote.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Evernote','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HomeBank
if ($homebank.ischecked){
$version = ((Invoke-WebRequest -uri "http://homebank.free.fr/fr/downloads.php").links | where-object href -like "*setup.exe"| Select-Object -First 1).href
$versionurl = $version -replace ("\.\.","")
$url = "http://homebank.free.fr$versionurl"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\HomeBank.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'HomeBank','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Joplin
if ($joplin.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/laurent22/joplin/releases/latest").links | Where-Object href -like "*Setup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Joplin.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Joplin','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kindle PC
if ($kindlepc.ischecked){
$url = "https://www.amazon.fr/kindlepcdownload/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Kindle PC.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kindle PC','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kobo Desktop
if ($kobodesktop.ischecked){
$url = "https://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Kobo Desktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kobo Desktop','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LibreOffice
if ($libreoffice.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://fr.libreoffice.org/download/telecharger-libreoffice/?type=win-x86’).Links | Where-Object innerHTML -like “*Win_x86_sdk.msi”).href
$IOTDsplit = $IOTD -csplit("//download.documentfoundation.org/")
$IOTDsplit2 = -join $IOTDsplit
$url = $IOTDsplit2 -csplit ("_sdk")
$url2 = -join $url
$source = "https://miroir.univ-lorraine.fr/documentfoundation/"
$download = "$source$url2"

Invoke-WebRequest $download -outfile ".\LVASI - Téléchargements\LibreOffice.x86.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LibreOffice','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MaxiCompte
if ($maxicompte.IsChecked){
$url = "https://www.persoapps.com/download/maxicompte.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\MaxiCompte.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MaxiCompte','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenOffice
if ($openoffice.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://www.openoffice.org/download/index.html’).Links | Where-Object innertext -like “Released*”).title
$IOTDsplit = $IOTD -csplit("Released: Apache OpenOffice ")
$url = "https://sourceforge.net/projects/openofficeorg.mirror/files/$IOTDsplit/binaries/fr/Apache_OpenOffice_${IOTDsplit}_Win_x86_install_fr.exe/download"
$download = ($url -replace "\s","")

$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile("$download",".\LVASI - Téléchargements\OpenOffice.exe")

$7zip = Test-Path -Path "${env:ProgramFiles}\7-Zip\7z.exe" -PathType Leaf

if ($7zip -eq $true)
{

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Téléchargements\OpenOffice.exe" "-o$(".\LVASI - Installation\OpenOffice")" -y

Remove-Item ".\LVASI - Téléchargements\OpenOffice.exe"


}
else
{
$7zipneed = $true
$url7zip = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url7zip" -outfile ".\LVASI - Téléchargements\7-zip.exe"

Start-Process ".\LVASI - Téléchargements\7-zip.exe" /S -wait

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Téléchargements\OpenOffice.exe" "-o$(".\LVASI - Installation\OpenOffice")" -y

Remove-Item ".\LVASI - Téléchargements\OpenOffice.exe"
Remove-Item ".\LVASI - Téléchargements\7-zip.exe"
}


[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenOffice','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDF24 Creator
if ($pdf24.ischecked){
$url = ((Invoke-WebRequest -uri "https://creator.pdf24.org/listVersions.php" -UseBasicParsing).links | where-Object href -like "*.msi" | Select-Object -First 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\PDF24 Creator.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDF24 Creator','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDFCreator
if ($pdfcreator.IsChecked){
$url = "https://download.pdfforge.org/download/pdfcreator/PDFCreator-stable?download"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\PDFCreator.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDFCreator','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sigil
if ($sigil.IsChecked){
$url = ((Invoke-WebRequest -uri "https://sigil-ebook.com/sigil/download/").links | Where-Object innerHTML -like "Latest Windows x64 download").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Sigil.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sigil','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SumatraPDF
if ($sumatrapdf.IsChecked){
$IOTD = ((Invoke-WebRequest -uri "https://www.sumatrapdfreader.org/download-free-pdf-viewer").links | Where-Object innerHTML -like "*64-install.exe").href
$url = "https://www.sumatrapdfreader.org"
$download = "$url$IOTD"
$download

Invoke-WebRequest $download -OutFile ".\LVASI - Téléchargements\SumatraPDF-install.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SumatraPDF','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Teamworks
if ($teamworks.IsChecked){
$url = "https://www.teamworks.ovh/fichiers/windows/Teamworks.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Teamworks.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Teamworks','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Éducation
#region Celestia
if ($celestia.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/CelestiaProject/Celestia/releases/latest").links | Where-Object href -like "*win.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Celestia.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Celestia','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GCompris
if ($gcompris.IsChecked){
$url = ((Invoke-WebRequest -uri "https://gcompris.net/downloads-fr.html").links | Where-Object innerHTML -like "*Windows 64bit" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\GCompris.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GCompris','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeoGebra
if ($geogebra.IsChecked){
$url = "https://download.geogebra.org/package/win-msi6"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\GeoGebra.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeoGebra','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Klavaro
if ($klavaro.ischecked){
$url = ((Invoke-WebRequest -uri "https://klavaro.sourceforge.io/fr/index.html").links | Where-Object href -like "*setup.exe*").href

Invoke-WebRequest -Uri $url -OutFile ".\LVASI - Téléchargements\Klavaro.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Klavaro','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Qalculate
if ($qalculate.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Qalculate/qalculate-gtk/releases/latest").links | Where-Object href -like "*x64.msi" | Select-Object -Last 1).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Qalculate.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Qalculate!','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Stellarium
if ($stellarium.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://github.com/Stellarium/stellarium/releases/latest' -UseBasicParsing).links | Where-Object href -like "*win64.exe" ).href
$status = ([regex]::match($content.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null {'Error'}
}

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Stellarium.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Stellarium','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Jeux
#region Bluestacks
if ($bluestacks.IsChecked){
$url = "https://cloud.bluestacks.com/get_offline_download?os_arch=x64"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\BlueStacks.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bluestacks','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Epic Game Store
if ($egs.IsChecked){
$url = "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\EpicGameStore.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Epic Game Store','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Experience
if ($geforce.ischecked){
$url = ((Invoke-WebRequest -Uri 'https://www.nvidia.com/fr-fr/geforce/geforce-experience/' -UseBasicParsing).links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\GeForce Experience.exe"

$7zip = Test-Path -Path "${env:ProgramFiles}\7-Zip\7z.exe" -PathType Leaf

if ($7zip -eq $true)
{

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Téléchargements\GeForce Experience.exe" "-o$(".\LVASI - Téléchargements\GeForce Experience")" -y

Remove-Item ".\LVASI - Téléchargements\GeForce Experience.exe"

}
else
{
$global:7zipneed = $true
$url7zip = ((Invoke-WebRequest -Uri ‘https://www.7-zip.fr/’).Links | Where-Object href -like “*x64.exe”).href

Invoke-WebRequest "$url7zip" -outfile ".\LVASI - Téléchargements\7-zip.exe"

Start-Process ".\LVASI - Téléchargements\7-zip.exe" /S -wait

& ${env:ProgramFiles}\7-Zip\7z.exe x ".\LVASI - Téléchargements\GeForce Experience.exe" "-o$(".\LVASI - Téléchargements\GeForce Experience")" -y

Remove-Item ".\LVASI - Téléchargements\GeForce Experience.exe"
Remove-Item ".\LVASI - Téléchargements\7-zip.exe"
}

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Experience','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Now
if ($geforcenow.ischecked){
$url = "https://download.nvidia.com/gfnpc/GeForceNOW-release.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\GeForce Now.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Now','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GOG Galaxy
if ($goggalaxy.IsChecked){
$url = "https://content-system.gog.com/open_link/download?path=/open/galaxy/client/2.0.51.86/setup_galaxy_2.0.51.86.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\GOGGalaxy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GOG Galaxy','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NoxPlayer
if ($noxplayer.IsChecked){
$url = "https://fr.bignox.com/fr/download/fullPackage?formal"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\NoxPlayer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NoxPlayer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Origin
if ($origin.IsChecked){
$url = "https://www.dm.origin.com/download"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Origin.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Origin','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Playnite
if ($playnite.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/JosefNemec/Playnite/releases/latest").links | Where-Object href -like "*Playnite*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Playnite.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Playnite','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RetroArch
if ($retroarch.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.retroarch.com/?page=platforms").links | Where-Object innerHTML -like "Installer (64bit)" | Where-Object href -like "*/windows/x86_64/*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\RetroArch.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RetroArch','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RomStation
if ($romstation.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.romstation.fr/installation").links | Where-Object href -like "*x64.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\RomStation.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RomStation','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Steam
if ($steam.IsChecked){
Invoke-WebRequest "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -outfile ".\LVASI - Téléchargements\Steam.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Steam','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Images
#region FileOptimizer
if ($fileoptimizer.IsChecked){
$url = ((Invoke-WebRequest -uri "https://sourceforge.net/projects/nikkhokkho/files/FileOptimizer/").links | Where-Object href -like "/projects/nikkhokkho/files/FileOptimizer/*"| Select -First 1).href

$dwn = ((Invoke-Webrequest -uri "https://sourceforge.net$url").links |Where-Object href -like "*FileOptimizerSetup.exe/download").href

Invoke-WebRequest -Uri $dwn -OutFile ".\LVASI - Téléchargements\FileOptimizer.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileOptimizer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Gimp
if ($gimp.IsChecked){
$IOTD = ((Invoke-WebRequest -uri "https://www.gimp.org/downloads/").links | Where-Object id -like "win-download-link").href

Invoke-WebRequest "https:$IOTD" -OutFile ".\LVASI - Téléchargements\Gimp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Gimp','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ImageGlass
if ($imageglass.IsChecked){
$url = ((Invoke-WebRequest -uri "https://imageglass.org/download").links | Where-Object title -like "*installer x64 version*" ).href
$version = $url -csplit('https://imageglass.org/release/download/')
$url2 = "https://imageglass.org/release/$version/download"
$dwl = $url2 -replace ("\s","")

Invoke-WebRequest "$dwl" -outfile ".\LVASI - Téléchargements\ImageGlass.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ImageGlass','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Inkscape
if ($inkscape.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://inkscape.org/release/' -UseBasicParsing).links | Where-Object href -like "*windows*" ).href
$status = ([regex]::match($url.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null2 {'Error'}
}
$url2 = "https://inkscape.org$url"
$url3 = ((Invoke-WebRequest -Uri $url2 -UseBasicParsing).links | Where-Object href -like "*64-bit*" ).href
$status2 = ([regex]::match($url3.RawContent,'(On|Off)line')).value
switch ($status2) {
    Online {'Online'}
    Offline {'Offline'}
    $null2 {'Error'}
}
$url4 = "https://inkscape.org$url3"
$url5 = ((Invoke-WebRequest -Uri $url4 -UseBasicParsing).links | Where-Object href -like "*exe*" ).href
$status3 = ([regex]::match($url5.RawContent,'(On|Off)line')).value
switch ($status3) {
    Online {'Online'}
    Offline {'Offline'}
    $null3 {'Error'}
}
$url6 = "https://inkscape.org$url5"
$url7 = ((Invoke-WebRequest -Uri $url6 -UseBasicParsing).links | Where-Object href -like "*item*exe*" ).href
$status4 = ([regex]::match($url7.RawContent,'(On|Off)line')).value
switch ($status4) {
    Online {'Online'}
    Offline {'Offline'}
    $null4 {'Error'}
}

Invoke-WebRequest "https://inkscape.org$url7" -OutFile ".\LVASI - Téléchargements\Inkscape.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Inkscape','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Krita
if ($krita.IsChecked){
$url = ((Invoke-WebRequest -uri "https://krita.org/fr/telechargement/krita-desktop/").links | Where-Object innerText -like "*Windows Installeur 64-bit*" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Krita.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Krita','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PhotoFiltre
if ($photofiltre.ischecked){
$url = ((Invoke-WebRequest -uri "http://www.photofiltre-studio.com/pf7.htm").links | where href -like "*.zip").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\PhotoFiltre.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PhotoFiltre','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region XnView
if ($xnview.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.xnview.com/fr/xnviewmp/#downloads").links | Where-Object href -like "*Win-x64.exe" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\XnView.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'XnView','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Messageries
#region Android Messages Desktop
if ($androidmessages.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/chrisknepper/android-messages-desktop/releases/latest").links | Where-Object href -like "*Setup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\AndroidMessagesDesktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Android Messages Desktop','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Caprine
if ($caprine.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/sindresorhus/caprine/releases/latest").links | where-object href -like "*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Caprine.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Caprine','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Discord
if ($discord.IsChecked){
$url = "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Discord.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Discord','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Facebook Messenger
if ($messenger.ischecked){
$url = "https://www.messenger.com/messenger/desktop/downloadV2/?platform=win"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\FacebookMessenger.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Facebook Messenger','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Ferdi
if ($ferdi.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/getferdi/ferdi/releases/latest").links | where-object href -like "*Ferdi-Setup*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Ferdi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ferdi','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Signal
if ($signal.IsChecked){
$url = "https://api.github.com/repos/signalapp/Signal-Desktop/releases/latest"
$tag = (Invoke-WebRequest "$url" | ConvertFrom-Json)[0].tag_name
$version = $tag -csplit "v"
$dwn = "https://updates.signal.org/desktop/signal-desktop-win-$version.exe"
$download = $dwn -replace ("\s","")

Invoke-WebRequest $download -OutFile ".\LVASI - Téléchargements\Signal.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Signal','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Slack
if ($slack.ischecked){
$url = "https://slack.com/api/desktop.latestRelease?arch=x64&variant=exe&redirect=true"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Slack.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Slack','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Telegram
if ($telegram.IsChecked){
$url = "https://telegram.org/dl/desktop/win64"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Telegram.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Telegram','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thunderbird
if ($thunderbird.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.thunderbird.net/en-US/thunderbird/all/").links | Where-Object title -like "*Download for Windows 64-bit in French*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Thunderbird.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thunderbird','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Tweeten
if ($tweeten.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/MehediH/Tweeten/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Tweeten.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Tweeten','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Viber
if ($viber.IsChecked){
$url = "https://download.cdn.viber.com/desktop/windows/ViberSetup.msi"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Viber.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Viber','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WhatsApp
if ($whatsapp.IsChecked){
$url = "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\WhatsApp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WhatsApp','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Zoom
if ($zoom.IsChecked){
$url = ((Invoke-WebRequest -uri "https://zoom.us/download#client_4meeting").links | Where-Object href -like "*ZoomInstallerFull.msi?archType=x64" ).href

Invoke-WebRequest "https:\\zoom.us$url" -OutFile ".\LVASI - Téléchargements\Zoom.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Zoom','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Audio

#region Audacity
if ($audacity.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/audacity/audacity/releases/latest").links | Where-Object href -like "*64bit.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Audacity.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Audacity','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Clementine
if ($clementine.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/clementine-player/Clementine/releases/latest").links | Where-Object href -like "*ClementineSetup*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Clementine.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Clementine','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Deezer
if ($deezer.ischecked){
$url = "https://www.deezer.com/desktop/download?platform=win32&architecture=x86"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\DeezerDesktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deezer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region iTunes
if ($itunes.IsChecked){
$url = "https://www.apple.com/itunes/download/win64"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\iTunes.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'iTunes','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaMonkey
if ($mediamonkey.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.mediamonkey.com/download").links | Where-Object href -like "*Setup.exe" | Where-Object innerHTML -like "standard version" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\MediaMonkey.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaMonkey','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MuseScore
if ($musescore.ischecked){
$url = ((Invoke-WebRequest -uri "https://musescore.org/download/musescore.msi" -UseBasicParsing).links | where href -like "*64.msi").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\MuseScore.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'XXXXX','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MusicBee
<#if ($musicbee.IsChecked){
$url = "https://files1.majorgeeks.com/10afebdbffcd4742c81a3cb0f6ce4092156b4375/multimedia/MusicBeeSetup_3_4_Update2.zip"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\MusicBee.zip"

Expand-Archive ".\LVASI - Téléchargements\MusicBee.zip" -DestinationPath ".\LVASI - Téléchargements\"

remove-item ".\LVASI - Téléchargements\MusicBee.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MusicBee','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}#>
#endregion

#region Spotify
if ($spotify.IsChecked){
$url = "https://download.spotify.com/SpotifyFullSetup.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Spotify.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spotify','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Strawberry
if ($strawberry.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/strawberrymusicplayer/strawberry/releases/latest").links | Where-Object href -like "*msvc-x64.exe" | Where-Object href -notlike "*Debug*").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Strawberry.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Strawberry','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TuneIn
if ($tunein.ischecked){
$url = "https://tunein.com/download/windows/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\TuneIn.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TuneIn','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Winamp
if ($winamp.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.winamp.com/").links | Where-Object innerHTML -like "Download" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Winamp.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winamp','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Youtube Music
if ($youtubemusic.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ytmdesktop/ytmdesktop/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Youtube Music Desktop.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Youtube Music','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Vidéo
#region 4K Video Downloader
if ($qkvd.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.4kdownload.com/fr/downloads#").links | Where-Object href -like "*4kvideodownloader*x64.msi*").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\4KVideoDownloader.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'4k Video Downloader','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HandBrake
if ($handbrake.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/HandBrake/HandBrake/releases/latest").links | Where-Object href -like "*x86_64-Win_GUI.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\HandBrake.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Handbrake','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Basic
if ($klitebasic.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_basic.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\K-Lite Basic.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Standard
if ($klitestd.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_standard.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\K-Lite Standard.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Mega
if ($klitemega.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.codecguide.com/download_k-lite_codec_pack_mega.htm").links | Where-Object innerText -like "*Server 1*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\K-Lite Mega.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kdenlive
if ($kdenlive.ischecked){
$url = ((Invoke-WebRequest -uri "https://kdenlive.org/en/download/").links | where-object href -like "*.exe" |Where-Object href -NotLike "*standalone*").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Kdenlive.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kdenlive','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kodi
if ($kodi.IsChecked){
$url = ((Invoke-WebRequest -uri "https://kodi.tv/download/windows").links | Where-Object innerText -like "*64BIT*").href
$url2 = $url
$down1 = $url2.substring(0,$url2.length -8)
$down1

Invoke-WebRequest "$down1" -OutFile ".\LVASI - Téléchargements\Kodi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kodi','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-BE
if ($mpcbe.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Aleksoid1978/MPC-BE/releases/latest").links | Where-Object href -like "*x64*installer.zip").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\MPC-BE.zip"

Expand-Archive -LiteralPath ".\LVASI - Téléchargements\MPC-BE.zip" -DestinationPath ".\LVASI - Téléchargements\"

remove-item ".\LVASI - Téléchargements\MPC-BE.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-BE','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-HC
if ($mpchc.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/clsid2/mpc-hc/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\MPC-HC.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-HC','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MKVToolNix
if ($mkvtoolnix.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.fosshub.com/MKVToolNix.html").links | Where-Object innerHTML -like "*Windows*installer*(64-bit)*").href
$urlsplit = $url -csplit('-setup.exe')
$url2 = "$urlsplit"
$version =$url2.substring($url2.length -7)
$dwn = "https://mkvtoolnix.download/windows/releases/$version/mkvtoolnix-64-bit-$version-setup.exe"
$dwn2 = $dwn -replace ("\s","")

Invoke-WebRequest $dwn2 -OutFile ".\LVASI - Téléchargements\MKVToolNix.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MKVToolNix','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OBS Studio
if ($obsstudio.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/obsproject/obs-studio/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\OBSStudio.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OBS Studio','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShot
if ($openshot.IsChecked){
$IOTD = ((Invoke-WebRequest -uri "https://github.com/OpenShot/openshot-qt/releases/latest").links | Where-Object href -like "*x86_64.exe").href

Invoke-WebRequest "https://github.com$IOTD" -OutFile ".\LVASI - Téléchargements\OpenShot.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShot','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Plex Media Server
if ($plexmediaserver.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.videohelp.com/software/Plex").links | Where-Object innerHTML -like "*Download*Windows" | Where-Object href -like "*downloads*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\PlexMediaServer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Plex Media Server','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ScreenToGif
if ($screentogif.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/NickeManarin/ScreenToGif/releases/latest").links | Where-Object href -NotLike "*Light*" | Where-Object href -like "*Setup.x64.msi" ).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\ScreenToGif.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ScreenToGif','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ShareX
if ($sharex.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ShareX/ShareX/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\ShareX.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ShareX','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Shotcut
if ($shotcut.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/mltframework/shotcut/releases/latest").links | Where-Object href -like "*win64*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Shotcut.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Shotcut','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VLC
if ($vlc.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘http://download.videolan.org/vlc/last/win64/’).Links | Where-Object innerHTML -like “*win64.msi”).href

Invoke-WebRequest "http://download.videolan.org/vlc/last/win64/$url" -OutFile ".\LVASI - Téléchargements\VLC.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VLC','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region 3D
#region Blender
if ($blender.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.blender.org/download/").links | Where-Object href -like "*windows-x64.msi*" | Where-Object class -like "js-download").href
$urlsplit = $url -csplit ("https://www.blender.org/download")
$download = "https://ftp.nluug.nl/pub/graphics/blender$urlsplit"
$dwn = ("$download" -replace "\s","")
$dwnfinal = $dwn.Substring(0,$dwn.Length -1)

Invoke-WebRequest $dwnfinal -OutFile ".\LVASI - Téléchargements\Blender.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Blender','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Cura
if ($cura.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Ultimaker/Cura/releases/latest").links | Where-Object href -like "*win64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Cura.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Cura','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FreeCAD
if ($freecad.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.freecadweb.org/downloads.php").links | Where-Object innerHTML -like "*64-Bit installer*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\FreeCAD-install.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FreeCAD','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Fusion360
if ($fusion360.IsChecked){
$url = "https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Fusion360.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Fusion360','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ideaMaker
if ($ideamaker.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://www.raise3d.com/download/' -UseBasicParsing).links | Where-Object href -like "*download*exe" ).href
$status = ([regex]::match($content.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null {'Error'}
}

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\ideaMaker.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ideaMaker','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Lychee Slicer
if ($lycheeslicer.IsChecked){
$url = ((Invoke-WebRequest -uri "https://mango3d.io/downloads/").links | Where-Object class -like "*button_0*" ).href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\LycheeSlicer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Lychee Slicer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PrusaSlicer
if ($prusaslicer.IsChecked){
$url = "https://cdn.prusa3d.com/downloads/drivers/PrusaSlicer_Win_standalone_2.4.2.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\PrusaSlicer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PrusaSlicer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sweet Home 3D
if ($sweethome.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.sweethome3d.com/fr/download.jsp" -UseBasicParsing).links | Where-Object href -like "*sourceforge.net/projects/sweethome3d/*.exe*" | Select -First 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Sweet Home 3D.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sweet Home 3D','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Navigateurs
#region Brave
if ($brave.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/brave/brave-browser/releases/latest").links | Where-Object href -like "*StandaloneSilent*Setup.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\BraveSilent.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Brave','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chrome
if ($chrome.IsChecked){
$url = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BFFF2C7A8-1C36-4C54-BB60-F9B63E5C9E58%7D%26lang%3Dfr%26browser%3D3%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Chrome.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chrome','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chromium
if ($chromium.ischecked){
$url = ((Invoke-WebRequest -uri "https://chromium.woolyss.com/download/" -UseBasicParsing).links | where-Object href -like "*Win_x64*mini_installer.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Chromium.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chromium','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Firefox
if ($firefox.IsChecked){
Invoke-WebRequest "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=fr" -OutFile ".\LVASI - Téléchargements\Firefox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Firefox','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Opera
if ($opera.IsChecked){
$url = "https://net.geo.opera.com/opera/stable/windows"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Opera.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Opera','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thor
if ($thor.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.torproject.org/fr/download/").links | where-object href -like "*.exe" |Select-Object -first 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Thor.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thor','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Vivaldi
if ($vivaldi.IsChecked){
$url = ((Invoke-WebRequest -uri "https://vivaldi.com/download/").links | Where-Object outerText -like "Windows 64bit" |Select-Object -Skip 1 ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Vivaldi.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Vivaldi','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Waterfox
if ($waterfox.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.waterfox.net/download/" -UseBasicParsing).links | where-Object href -like "*Setup.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Waterfox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Waterfox','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Dev
#region DirectX
if ($directx.ischecked){
$url = "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\DirectXSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'DirectX','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FileZilla
if ($filezilla.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://filezilla-project.org/download.php?show_all=1’).Links | Where-Object innerHTML -like “*win64-setup.exe”).href
$IOTDsplit = $IOTD -cSplit("amp;")
$download = -join $IOTDsplit

Invoke-WebRequest $download -outfile ".\LVASI - Téléchargements\Filezilla.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileZilla','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Github Desktop
if ($github.IsChecked){
$url = "https://central.github.com/deployments/desktop/desktop/latest/win32"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Github.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Github Desktop','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Godot Engine
if ($godotengine.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/godotengine/godot/releases/latest").links | Where-Object href -like "*stable_win64.exe.zip").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Godot Engine.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Godot Engine','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Notepad++
if ($notepad.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest").links | Where-Object href -like "*Installer.x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Notepad++.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Notepad++','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Putty
if ($putty.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html’).Links | Where-Object innerHTML -like “*64bit*msi*”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Putty.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Putty','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Python
if ($python.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.python.org/downloads/" -UseBasicParsing).links | where-Object href -like "*python*.exe").href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Python.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Python','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Visual Studio Code
if ($visualcode.ischecked){
    $url = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
    
    Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\VisualStudioCode.exe"
        
    [reflection.assembly]::loadwithpartialname('System.Windows.Forms')
    [reflection.assembly]::loadwithpartialname('System.Drawing')
    $notify = new-object system.windows.forms.notifyicon
    $notify.icon = [System.Drawing.SystemIcons]::Information
    $notify.visible = $true
    $notify.showballoontip(10000,'Visual Studio Code','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
    }
#endregion

#region WinSCP
if ($winscp.IsChecked){
$url = ((Invoke-WebRequest -Uri 'https://winscp.net/eng/download.php' -UseBasicParsing).links | Where-Object href -like "*download*exe" ).href
$status = ([regex]::match($url.RawContent,'(On|Off)line')).value
switch ($status) {
    Online {'Online'}
    Offline {'Offline'}
    $null {'Error'}
}

$url2= "https://winscp.net$url"
$dwn = ((Invoke-WebRequest -uri "$url2").links |Where-Object innerHTML -like "Direct download").href

Invoke-WebRequest "$dwn" -OutFile ".\LVASI - Téléchargements\WinSCP.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinSCP','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Sécurité / Santé
#region ADWCleaner
if ($adwcleaner.IsChecked){

$url = "https://downloads.malwarebytes.com/file/adwcleaner"
Invoke-WebRequest $url -outfile ".\LVASI - Téléchargements\ADWCleaner.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ADWCleaner','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region AVG Free
if ($avgfree.IsChecked){
$url = "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN_AVG/installertype_FULL/build_RELEASE/cookie_mmm_bav_998_999_000_m"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\AVG.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'AVG Free','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bitwarden
if ($bitwarden.IsChecked){
$url = "https://vault.bitwarden.com/download/?app=desktop&platform=windows"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\Bitwarden.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bitwarden','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bleachbit
if ($bleachbit.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.bleachbit.org/download/windows").links | Where-Object innerHTML -like "*installer*.exe" ).href
$version = $url.Substring($url.length -25)
$dwn = "https://download.bleachbit.org/$version"

Invoke-WebRequest "$dwn" -OutFile ".\LVASI - Téléchargements\Bleachbit.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bleachbit','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CCleaner
if ($ccleaner.IsChecked){
$url = "https://bits.avcdn.net/productfamily_CCLEANER/insttype_FREE/platform_WIN_PIR/installertype_ONLINE/build_RELEASE/"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\ccsetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CCleaner','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ExpressVPN
if ($expressvpn.ischecked){
$url = "https://www.expressvpn.com/fr/clients/latest/windows"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\ExpressVPN.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ExpressVPN','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Glary Utilities
if ($glary.IsChecked){
$url = "https://www.glarysoft.com/aff/download.php?s=GU"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\GlaryUtilities.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Glary Utilities','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region KeePass
if ($keepass.ischecked){
$url = ((Invoke-WebRequest -uri "https://sourceforge.net/projects/keepass/files/KeePass%202.x/").links | Where-Object href -like "*/projects/keepass/files/KeePass*"|Where-Object href -NotLike "*stats*" | Select-Object -First 1).href

$link = ((Invoke-WebRequest -uri "https://sourceforge.net$url").links |Where-Object href -like "*msi/download" ).href

Invoke-WebRequest -Uri $link -OutFile ".\LVASI - Téléchargements\KeePass.msi" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Firefox

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KeePass','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Malwarebytes
if ($malwarebytes.IsChecked){
$url = "https://data-cdn.mbamupdates.com/web/mb4-setup-consumer/MBSetup.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\MalwareBytesSetup.exe"


[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Malwarebytes','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NordVPN
if ($nordvpn.IsChecked){
$url = "https://downloads.nordcdn.com/apps/windows/NordVPN/latest/NordVPNSetup_x64.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\NordVPN.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NordVPN','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Spybot
if ($spybot.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.filehorse.com/download-spybot-search-destroy/download/").links | Where-Object outerText -like "*Start Download*" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Spybot.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spybot','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VeraCrypt
if ($veracrypt.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/veracrypt/VeraCrypt/releases/latest").links | Where-Object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\VeraCrypt.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VeraCrypt','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Wise Disk Manager
if ($wisediskmanager.IsChecked){
$url = ((Invoke-WebRequest -Uri ‘https://www.wisecleaner.com/wise-disk-cleaner.html’).Links | Where-Object innertext -like “Free Download”).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\WiseDiskCleaner.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Wise Disk Manager','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Téléchargements
#region Deluge
if ($deluge.ischecked){
$version = ((Invoke-WebRequest -uri "https://ftp.osuosl.org/pub/deluge/windows/").links | Where-Object href -like "*win64-setup.exe" | Select-Object -first 1).href
$url = "https://ftp.osuosl.org/pub/deluge/windows/$version"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Deluge.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deluge','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Free Download Manager
if ($fdm.IsChecked){
$url = "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\FreeDownloadManager.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Free Download Manager','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region JDownloader
if ($jdl.IsChecked){
$url = "https://installer.jdownloader.org/lvasi/JDownloader2Setup_windows-x64.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\JDownloader.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'JDownloader','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region qBittorrent
if ($qbittorrent.IsChecked){
$IOTD = ((Invoke-WebRequest -Uri ‘https://www.qbittorrent.org/download.php’).Links | Where-Object innerHTML -like “*32-bit installer”).href
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile("$IOTD",".\LVASI - Téléchargements\qBittorrent.exe")

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'qBittorrent','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Transmission
if ($transmission.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/transmission/transmission/releases/latest").links | Where-Object href -like "*x64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Transmission.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Transmission','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Cloud
#region Google Drive
if ($gdrive.IsChecked){
$url = "https://dl.google.com/drive-file-stream/GoogleDrive.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\GoogleDrive.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Google Drive','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MEGA
if ($megasync.ischecked){
$url = "https://mega.nz/MEGAsyncSetup64.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\MEGAsyncSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MEGAsync','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Nextcloud
if ($nextcloud.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/nextcloud/desktop/releases/latest").links | Where-Object href -like "*64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Nextcloud.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Nextcloud','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ownCloud
if ($owncloud.ischecked){
$url = ((Invoke-WebRequest -uri "https://owncloud.com/desktop-app/" -UseBasicParsing).links | Where-Object outerHTML -like "*href*x64.msi*blank*" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\ownCloud.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ownCloud','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SyncTrayzor
if ($synctrayzor.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/canton7/SyncTrayzor/releases/latest").links | Where-Object href -like "*64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\SyncTrayzorSetup.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SyncTrayzor','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Outils
#region BalenaEtcher
if ($balena.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/balena-io/etcher/releases/latest").links | Where-Object href -like "*-Setup-*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\BalenaEtcher.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BalenaEtcher','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region BurnAware
if ($burnaware.ischecked){
$url0 = ((Invoke-WebRequest -uri "https://www.burnaware.com/download.html").links | where href -like "*downloads/burnaware_free*").href
$url= "https://www.burnaware.com$url0"

Invoke-WebRequest -Uri $url -OutFile ".\LVASI - Téléchargements\BurnAware.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BurnAware','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CDBurnerXP
if ($cdburnerxp.IsChecked){
$url = "https://cdburnerxp.se/downloadsetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\CDBurnerXP.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CDBurnerXP','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Everything
if ($everything.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.voidtools.com/downloads/").links | Where-Object innerHTML -like "Download Installer 64-bit" ).href

Invoke-WebRequest "https://www.voidtools.com$url" -outfile ".\LVASI - Téléchargements\Everything.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Everything','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Flameshot
if ($flameshot.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/flameshot-org/flameshot/releases/latest").links | Where-Object href -like "*win64.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Flameshot.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Flameshot','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region KDEConnect
if ($kdeconnect.IsChecked){
$url = ((Invoke-WebRequest -uri "https://kdeconnect.kde.org/download.html").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\KDEConnect.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KDEConnect','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaInfo
if ($mediainfo.IsChecked){
$url = ((Invoke-WebRequest -uri "https://mediaarea.net/fr/MediaInfo").links | Where-Object innerHTML -like "*Download*" |Where-Object href -like "*exe").href

Invoke-WebRequest "https:$url" -OutFile ".\LVASI - Téléchargements\MediaInfo.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaInfo','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NetLimiter
if ($netlimiter.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.netlimiter.com/").links | Where-Object innerHTML -like "*DOWNLOAD*" ).href

Invoke-WebRequest "https://www.netlimiter.com$url" -outfile ".\LVASI - Téléchargements\NetLimiter.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NetLimiter','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Parsec
if ($parsec.ischecked){
$url = "https://builds.parsecgaming.com/package/parsec-windows.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Parsec.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Parsec','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PushBullet
if ($pushbullet.IsChecked){
$url = "https://update.pushbullet.com/pushbullet_installer.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\PushBullet.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PushBullet','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTranslate
if ($qtranslate.ischecked){
$url = ((Invoke-WebRequest -uri "https://quest-app.appspot.com/home" -UseBasicParsing).links | where-Object href -like "*.exe").href

Invoke-WebRequest "https:$url" -outfile ".\LVASI - Téléchargements\QTranslate.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTranslate','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTTabBar
if ($qtt.IsChecked){
$url = ((Invoke-WebRequest -uri "http://qttabbar.wikidot.com/qttabbar1").links | Where-Object innerHTML -like "*64bit" ).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\QTTabBar.zip"

Expand-Archive ".\LVASI - Téléchargements\QTTabBar.zip" -DestinationPath ".\LVASI - Téléchargements\"

remove-item ".\LVASI - Téléchargements\QTTabBar.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTTabBar','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Raspberry Pi Imager
if ($raspberrypi.IsChecked){
$url = "https://downloads.raspberrypi.org/imager/imager_latest.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\RaspberryPiImager.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Raspberry Pi Imager','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Recuva
if ($recuva.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.ccleaner.com/fr-fr/recuva/download/standard").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Recuva.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Recuva','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RevoUninstaller
if ($revo.IsChecked){
$url = "https://download.revouninstaller.com/download/revosetup.exe"

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\RevoUninstaller.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RevoUninstaller','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Rescuezilla
if ($rescuezilla.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/rescuezilla/rescuezilla/releases/latest").links | Where-Object href -like "*.iso" | Select-Object -First 1).href

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\Rescuezilla.iso"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Rescuezilla','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Rufus
if ($rufus.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/pbatard/rufus/releases/latest").links | Where-Object href -like "*exe" | Select-Object -First 1).href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Rufus.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Rufus','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Snappy Driver Installer Origin
if ($snappydriver.ischecked){
$url = ((Invoke-WebRequest -uri "https://www.glenn.delahoy.com/snappy-driver-installer-origin/" -UseBasicParsing).links | Where-object href -like "*.zip" | Where-object href -NotLike "*Themes*").href

Invoke-WebRequest "https://www.glenn.delahoy.com$url" -outfile ".\LVASI - Téléchargements\Snappy Driver Installer Origin.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Snappy Driver Installer Origin','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Speccy
if ($speccy.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.ccleaner.com/fr-fr/speccy/download/standard").links | Where-Object href -like "*.exe" ).href

Invoke-WebRequest $url -OutFile ".\LVASI - Téléchargements\Speccy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Speccy','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeamViewer
if ($teamviewer.IsChecked){
$url = "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe"

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\TeamViewer.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeamViewer','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VirtualBox
if ($virtualbox.IsChecked){
$url = ((Invoke-WebRequest -uri "https://www.virtualbox.org/wiki/Downloads").links | Where-Object innerText -like "*Windows hosts*").href

Invoke-WebRequest "$url" -OutFile ".\LVASI - Téléchargements\VirtualBox.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VirtualBox','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Améliorations
#region CopyQ
if ($copyq.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/hluk/CopyQ/releases/latest").links | Where-Object href -like "*setup.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\CopyQ.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CopyQ','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Files
if ($files.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/files-community/Files/releases/latest").links | Where-Object href -like "*msixbundle").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Files.msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Files','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Ksnip
if ($ksnip.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ksnip/ksnip/releases/latest").links | Where-Object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Ksnip.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ksnip','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LightBulb
if ($lightbulb.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Tyrrrz/LightBulb/releases/latest").links | Where-Object href -like "*LightBulb-Installer.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\LightBulb.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LightBulb','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ModernFlyouts
if ($modernflyouts.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/ModernFlyouts-Community/ModernFlyouts/releases/latest").links | Where-Object href -like "*.Msixbundle").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\ModernFlyouts.Msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ModernFlyouts','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShell
if ($openshell.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/Open-Shell/Open-Shell-Menu/releases/latest").links | Where-Object href -like "*.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Openshell.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShell','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PowerToys
if ($powertoys.IsChecked){
$url = ((Invoke-WebRequest -uri "https://github.com/microsoft/PowerToys/releases/latest").links | Where-Object href -like "*x64.exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\PowerToys.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PowerToys','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QuickLook
if ($quicklook.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/QL-Win/QuickLook/releases/latest").links | Where-Object href -like "*.msi").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\QuickLook.msi"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QuickLook','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Rainmeter
if ($rainmeter.ischecked){
$url = ((Invoke-WebRequest -uri "https://github.com/rainmeter/rainmeter/releases/latest").links | Where-Object href -like "*exe").href

Invoke-WebRequest "https://github.com$url" -OutFile ".\LVASI - Téléchargements\Rainmeter.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Rainmeter','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeraCopy
if ($teracopy.ischecked){
$url = "https://codesector.com/files/teracopy.exe"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\TeraCopy.exe"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeraCopy','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WinaeroTweaker
if ($winaero.isChecked){
$url = "https://winaerotweaker.com/download/winaerotweaker.zip"

Invoke-WebRequest "$url" -outfile ".\LVASI - Téléchargements\WinaeroTweaker.zip"

expand-archive ".\LVASI - Téléchargements\WinaeroTweaker.zip" -DestinationPath ".\LVASI - Téléchargements\WinaeroTweaker\"

remove-item ".\LVASI - Téléchargements\WinaeroTweaker.zip"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinaeroTweaker','Téléchargement terminé',[system.windows.forms.tooltipicon]::Info)
}


#endregion
#endregion

#region Désintallation de 7zip si besoin
if ($global:7zipneed -eq $true){
Start-Process "${env:ProgramFiles}\7-Zip\Uninstall.exe" -argumentlist "/S" -wait
}
#endregion

$ProgressPreference = 'Continue'
Stop-Transcript

start-sleep -Seconds 2

$window.WindowState= "Maximized"
	
[System.Windows.Forms.MessageBox]::Show("Tous les téléchargements sont terminés.
Les logiciels ont été téléchargés dans le dossier:
LVASI - Téléchargements
Ce dossier doit accompagner LVASI pour qu'il puisse les installer hors-ligne.
(Si des logiciels n'ont pas été correctement téléchargés, n'hésitez pas à me contacter)","LVASI - TÉLÉCHARGEMENTS","Ok",'Asterisk')
}}) 

$offinstaller.add_click({

$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Asterisk
$MessageBody = "Les logiciels présents dans le dossier
'LVASI - Téléchargements' vont être installés.
Voulez-vous continuer ?
(LVASI sera indisponible pendant la durée des installations.)
---
The software present in the file
'LVASI - Téléchargements' will be installed.
Do you want to continue ?
(LVASI will be unavailable for the duration of the installations.)"
$MessageTitle = "LVASI - INSTALLATIONS"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)

if ($Result -eq "Yes"){

$window.WindowState= "Minimized"

Start-Transcript -Append ".\LVASI_logfile.txt"

$ProgressPreference = 'SilentlyContinue'

#Region Winget
$testwinget = Test-Path -Path ".\LVASI - Téléchargements\Winget.msixbundle" -PathType Leaf
if ($testwinget -eq $true){

Add-AppPackage -Path ".\LVASI - Téléchargements\Winget.msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winget','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Compression
#region 7-Zip
$testszip = Test-path -path ".\LVASI - Téléchargements\7-zip.exe" -PathType Leaf
if ($testszip -eq $true){
Start-Process ".\LVASI - Téléchargements\7-zip.exe" /S -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'7-Zip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bandizip
$testbandizip = Test-path -path ".\LVASI - Téléchargements\Bandizip.exe" -PathType Leaf
if ($testbandizip -eq $true){
Start-Process -FilePath ".\LVASI - Téléchargements\Bandizip.exe" -ArgumentList "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bandizip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region peazip
$testpeazip = Test-path -path ".\LVASI - Téléchargements\PeaZip.exe" -PathType Leaf
if ($testpeazip -eq $true){

Start-Process ".\LVASI - Téléchargements\PeaZip.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Peazip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Documents
#region Calibre
$testcalibre = Test-path -path ".\LVASI - Téléchargements\Calibre.msi" -PathType Leaf
if ($testcalibre -eq $true){

Start-Process ".\LVASI - Téléchargements\Calibre.msi" -argumentlist '/quiet' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Calibre','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Draw.io
$testdrawio = Test-Path -Path ".\LVASI - Téléchargements\Drawio.exe" -PathType Leaf
if ($testdrawio -eq $true){

Start-Process ".\LVASI - Téléchargements\Drawio.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Draw.io','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Evernote
$testevernote = Test-path -path ".\LVASI - Téléchargements\Evernote.exe" -PathType Leaf
if ($testevernote -eq $true){

Start-Process ".\LVASI - Téléchargements\Evernote.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Evernote','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HomeBank
$testhomebank = Test-Path -Path ".\LVASI - Téléchargements\HomeBank.exe" -PathType Leaf
if ($testhomebank -eq $true){

Start-Process ".\LVASI - Téléchargements\HomeBank.exe" -argumentlist "/VERYSILENT /ALLUSERS /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'HomeBank','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Joplin
$testjoplin = Test-path -path ".\LVASI - Téléchargements\Joplin.exe" -PathType Leaf
if ($testjoplin -eq $true){

Start-Process ".\LVASI - Téléchargements\Joplin.exe" -argumentlist "/alluser /S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Joplin','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kindle PC
$testkindlepc = Test-Path -Path ".\LVASI - Téléchargements\Kindle PC.exe" -PathType Leaf
if ($testkindlepc -eq $true){

Start-Process ".\LVASI - Téléchargements\Kindle PC.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kindle PC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kobo Desktop
$testkobodesktop = Test-Path -Path ".\LVASI - Téléchargements\Kobo Desktop.exe" -PathType Leaf
if ($testkobodesktop -eq $true){

Start-Process ".\LVASI - Téléchargements\Kobo Desktop.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kobo Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LibreOffice
$testlibreoffice = Test-path -path ".\LVASI - Téléchargements\LibreOffice.x86.msi" -PathType Leaf
if ($testlibreoffice -eq $true){

Start-Process ".\LVASI - Téléchargements\LibreOffice.x86.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LibreOffice','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MaxiCompte
$testmaxicompte = Test-path -path ".\LVASI - Téléchargements\MaxiCompte.exe" -PathType Leaf
if ($testmaxicompte -eq $true){

Start-Process ".\LVASI - Téléchargements\MaxiCompte.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MaxiCompte','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenOffice
$testopenoffice = Test-path -path ".\LVASI - Téléchargements\OpenOffice\Setup.exe" -PathType Leaf
if ($testopenoffice -eq $true){

Start-Process ".\LVASI - Téléchargements\OpenOffice\setup.exe" /qn -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenOffice','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDF24 Creator
$testpdf24 = Test-Path -Path ".\LVASI - Téléchargements\PDF24 Creator.msi" -PathType Leaf
if ($testpdf24 -eq $true){

Start-Process ".\LVASI - Téléchargements\PDF24 Creator.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDF24 Creator','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PDFCreator
$testpdfcreator = Test-path -path ".\LVASI - Téléchargements\PDFCreator.exe" -PathType Leaf
if ($testpdfcreator -eq $true){

Start-Process ".\LVASI - Téléchargements\PDFCreator.exe" -argumentlist '/COMPONENTS="program" /VERYSILENT /NORESTART' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PDFCreator','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sigil
$testsigil = Test-path -path ".\LVASI - Téléchargements\Sigil.exe" -PathType Leaf
if ($testsigil -eq $true){

Start-Process ".\LVASI - Téléchargements\Sigil.exe" -argumentlist "/ALLUSERS /VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sigil','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SumatraPDF
$testsumatra = Test-path -path ".\LVASI - Téléchargements\SumatraPDF-install.exe" -PathType Leaf
if ($testsumatra -eq $true){

Start-Process ".\LVASI - Téléchargements\SumatraPDF-install.exe" /s -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SumatraPDF','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Teamworks
$testteamworks = Test-path -path ".\LVASI - Téléchargements\Teamworks.exe" -PathType Leaf
if ($testteamworks -eq $true){

Start-Process ".\LVASI - Téléchargements\Teamworks.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Teamworks','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Éducation
#region Celestia
$testcelestia = Test-path -path ".\LVASI - Téléchargements\Celestia.exe" -PathType Leaf
if ($testcelestia -eq $true){

Start-Process ".\LVASI - Téléchargements\Celestia.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Celestia','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GCompris
$testgcompris = Test-path -path ".\LVASI - Téléchargements\Gcompris.exe" -PathType Leaf
if ($testgcompris -eq $true){

Start-Process ".\LVASI - Téléchargements\GCompris.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GCompris','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeoGebra
$testgeogebra = Test-path -path ".\LVASI - Téléchargements\GeoGebra.msi" -PathType Leaf
if ($testgeogebra -eq $true){

Start-Process ".\LVASI - Téléchargements\GeoGebra.msi" -argumentlist "/qb" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeoGebra','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Klavaro
$testklavaro = Test-Path -Path ".\LVASI - Téléchargements\Klavaro.exe" -PathType Leaf
if ($testklavaro -eq $true){

Start-Process ".\LVASI - Téléchargements\Klavaro.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Klavaro','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Qalculate
$testqalculate = Test-Path -Path ".\LVASI - Téléchargements\Qalculate.msi" -PathType Leaf
if ($testqalculate -eq $true){

Start-Process ".\LVASI - Téléchargements\Qalculate.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Qalculate!','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Stellarium
$teststellarium = Test-path -path ".\LVASI - Téléchargements\Stellarium.exe" -PathType Leaf
if ($teststellarium -eq $true){

Start-Process ".\LVASI - Téléchargements\Stellarium.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Stellarium','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Jeux
#region Bluestacks
$testbluestacks = Test-path -path ".\LVASI - Téléchargements\BlueStacks.exe" -PathType Leaf
if ($testbluestacks -eq $true){

Start-Process ".\LVASI - Téléchargements\BlueStacks.exe" -argumentlist "-s" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bluestacks','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Epic Game Store
$testegs = Test-path -path ".\LVASI - Téléchargements\EpicGameStore.msi" -PathType Leaf
if ($testegs -eq $true){

Start-Process ".\LVASI - Téléchargements\EpicGameStore.msi" -argumentlist '/quiet' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Epic Game Store','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GOG Galaxy
$testgog = Test-Path -Path ".\LVASI - Téléchargements\GOGGalaxy.exe" -PathType Leaf
if ($testgog -eq $true){

Start-Process ".\LVASI - Téléchargements\GOGGalaxy.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GOG Galaxy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Experience
$testgeforce = Test-Path -Path ".\LVASI - Téléchargements\GeForce Experience\setup.exe" -PathType Leaf
if ($testgeforce -eq $true){

Start-Process ".\LVASI - Téléchargements\GeForce Experience\setup.exe" -ArgumentList "-s" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Experience','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region GeForce Now
$testgfnow = Test-Path -Path ".\LVASI - Téléchargements\GeForce Now.exe" -PathType Leaf
if ($testgfnow -eq $true){

Start-Process ".\LVASI - Téléchargements\GeForce Now.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'GeForce Now','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NoxPlayer
$testnox = Test-path -path ".\LVASI - Téléchargements\NoxPlayer.exe" -PathType Leaf
if ($testnox -eq $true){

Start-Process ".\LVASI - Téléchargements\NoxPlayer.exe" -argumentlist "--silent" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NoxPlayer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Origin
$testorigin = Test-path -path ".\LVASI - Téléchargements\Origin.exe" -PathType Leaf
if ($testorigin -eq $true){

Start-Process ".\LVASI - Téléchargements\Origin.exe" -argumentlist "/SILENT /NOLAUNCH" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Origin','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Playnite
$testplaynite = Test-path -path ".\LVASI - Téléchargements\Playnite.exe" -PathType Leaf
if ($testplaynite -eq $true){

Start-Process ".\LVASI - Téléchargements\Playnite.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Playnite','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RetroArch
$testretroarche = Test-path -path ".\LVASI - Téléchargements\RetroArch.exe" -PathType Leaf
if ($testretroarche -eq $true){

Start-Process ".\LVASI - Téléchargements\RetroArch.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RetroArch','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RomStation
$testromstation = Test-path -path ".\LVASI - Téléchargements\RomStation.exe" -PathType Leaf
if ($testromstation -eq $true){

Start-Process ".\LVASI - Téléchargements\RomStation.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RomStation','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Steam
$teststeam = Test-path -path ".\LVASI - Téléchargements\Steam.exe" -PathType Leaf
if ($teststeam -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Steam.exe" /S -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Steam','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Images
#region FileOptimizer
$testfo = Test-path -path ".\LVASI - Téléchargements\FileOptimizer.exe" -PathType Leaf
if ($testfo -eq $true){

Start-Process ".\LVASI - Téléchargements\FileOptimizer.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileOptimizer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Gimp
$testgimp = Test-path -path ".\LVASI - Téléchargements\Gimp.exe" -PathType Leaf
if ($testgimp -eq $true){

Start-Process ".\LVASI - Téléchargements\Gimp.exe" -argumentlist "/VERYSILENT /NORESTART /ALLUSERS" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Gimp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ImageGlass
$testimageglass = Test-path -path ".\LVASI - Téléchargements\ImageGlass.msi" -PathType Leaf
if ($testimageglass -eq $true){

Start-Process ".\LVASI - Téléchargements\ImageGlass.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ImageGlass','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Inkscape
$testinkscape = Test-path -path ".\LVASI - Téléchargements\Inkscape.exe" -PathType Leaf
if ($testinkscape -eq $true){

Start-Process ".\LVASI - Téléchargements\Inkscape.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Inkscape','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Krita
$testkrita = Test-path -path ".\LVASI - Téléchargements\Krita.exe" -PathType Leaf
if ($testkrita -eq $true){

Start-Process ".\LVASI - Téléchargements\Krita.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Krita','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region XnView
$testxnv = Test-path -path ".\LVASI - Téléchargements\XnView.exe" -PathType Leaf
if ($testxnv -eq $true){

Start-Process ".\LVASI - Téléchargements\XnView.exe" -ArgumentList "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'XnView','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Messageries
#region Android Messages Desktop
$testamd = Test-path -path ".\LVASI - Téléchargements\AndroidMessagesDesktop.exe" -PathType Leaf
if ($testamd -eq $true){

Start-Process ".\LVASI - Téléchargements\AndroidMessagesDesktop.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Android Messages Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Caprine
$testcaprine = Test-Path -Path ".\LVASI - Téléchargements\Caprine.exe" -PathType Leaf
if ($testcaprine -eq $true){

Start-Process ".\LVASI - Téléchargements\Caprine.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Caprine','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Discord
$testdiscord = Test-path -path ".\LVASI - Téléchargements\Discord.exe" -PathType Leaf
if ($testdiscord -eq $true){

start-process ".\LVASI - Téléchargements\Discord.exe" -ArgumentList "/s" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Discord','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Facebook Messenger
$testmessenger = Test-Path -Path ".\LVASI - Téléchargements\FacebookMessenger.exe" -PathType Leaf
if ($testmessenger -eq $true){

Start-Process ".\LVASI - Téléchargements\FacebookMessenger.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Facebook Messenger','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Ferdi
$testferdi = Test-Path -Path ".\LVASI - Téléchargements\Ferdi.exe" -PathType Leaf
if ($testferdi -eq $true){

Start-Process ".\LVASI - Téléchargements\Ferdi.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ferdi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Signal
$testsignal = Test-path -path ".\LVASI - Téléchargements\Signal.exe" -PathType Leaf
if ($testsignal -eq $true){

Start-Process ".\LVASI - Téléchargements\Signal.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Signal','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Slack
$testslack = Test-Path -Path ".\LVASI - Téléchargements\Slack.exe" -PathType Leaf
if ($testslack -eq $true){

Start-Process ".\LVASI - Téléchargements\Slack.exe" -argumentlist "-s" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Slack','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Telegram
$testtelegram = Test-path -path ".\LVASI - Téléchargements\Telegram.exe" -PathType Leaf
if ($testtelegram -eq $true){

Start-Process ".\LVASI - Téléchargements\Telegram.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Telegram','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thunderbird
$testthunderbird = Test-path -path ".\LVASI - Téléchargements\Thunderbird.exe" -PathType Leaf
if ($testthunderbird -eq $true){

Start-Process ".\LVASI - Téléchargements\Thunderbird.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thunderbird','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Tweeten
$testtweeten = Test-Path -Path ".\LVASI - Téléchargements\Tweeten.exe" -PathType Leaf
if ($testtweeten -eq $true){

Start-Process ".\LVASI - Téléchargements\Tweeten.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Tweeten','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Viber
$testviber = Test-path -path ".\LVASI - Téléchargements\Viber.msi" -PathType Leaf
if ($testviber -eq $true){

Start-Process ".\LVASI - Téléchargements\Viber.msi" -ArgumentList "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Viber','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WhatsApp
$testwhatsapp = Test-path -path ".\LVASI - Téléchargements\WhatsApp.exe" -PathType Leaf
if ($testwhatsapp -eq $true){

Start-Process ".\LVASI - Téléchargements\WhatsApp.exe" -argumentlist '--silent' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WhatsApp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Zoom
$testzoom = Test-path -path ".\LVASI - Téléchargements\Zoom.msi" -PathType Leaf
if ($testzoom -eq $true){

Start-Process ".\LVASI - Téléchargements\Zoom.msi" -ArgumentList "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Zoom','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Audio
#region Audacity
$testaudacity = Test-path -path ".\LVASI - Téléchargements\Audacity.exe" -PathType Leaf
if ($testaudacity -eq $true){

Start-Process ".\LVASI - Téléchargements\Audacity.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Audacity','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Clementine
$testclementine = Test-path -path ".\LVASI - Téléchargements\Clementine.exe" -PathType Leaf
if ($testclementine -eq $true){

Start-Process ".\LVASI - Téléchargements\Clementine.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Clementine','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Deezer
$testdeezer = Test-Path -Path ".\LVASI - Téléchargements\DeezerDesktop.exe" -PathType Leaf
if ($testdeezer -eq $true){

Start-Process ".\LVASI - Téléchargements\DeezerDesktop.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deezer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region iTunes
$testitunes = Test-path -path ".\LVASI - Téléchargements\iTunes.exe" -PathType Leaf
if ($testitunes -eq $true){

Start-Process ".\LVASI - Téléchargements\iTunes.exe" -ArgumentList "/qn" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'iTunes','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaMonkey
$testmediamonkey = Test-path -path ".\LVASI - Téléchargements\MediaMonkey.exe" -PathType Leaf
if ($testmediamonkey -eq $true){

Start-Process ".\LVASI - Téléchargements\MediaMonkey.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaMonkey','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MuseScore
$testmusescore = Test-Path -Path ".\LVASI - Téléchargements\MuseScore.msi" -PathType Leaf
if ($testmusescore -eq $true){

Start-Process ".\LVASI - Téléchargements\MuseScore.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MuseScore','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MusicBee
<#$exe = Get-ChildItem -Path ".\LVASI - Téléchargements\" -include "MusicBeeSetup*.exe" -file -recurse
$testmusicbee = Test-Path -Path $exe -PathType Leaf
if ($testmusicbee -eq $true){

Start-Process $exe -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MusicBee','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}#>
#endregion

#region Spotify
$testspotify = Test-path -path ".\LVASI - Téléchargements\Spotify.exe" -PathType Leaf
if ($testspotify -eq $true){

Start-Process ".\LVASI - Téléchargements\Spotify.exe"  -verb RunAnUser
$location = Get-Location
Start-process explorer.exe -argumentlist "$location\LVASI - Téléchargements\Spotify.exe"
Start-sleep -Seconds 2
Do{
$Item = ".\LVASI - Téléchargements\Spotify.exe"
If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
$IsLocked} until ($IsLocked -eq $false)
Stop-Process -name Spotify -force

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spotify','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Strawberry
$teststrawberry = Test-Path -Path ".\LVASI - Téléchargements\Strawberry.exe" -PathType Leaf
if ($teststrawberry -eq $true){

Start-Process ".\LVASI - Téléchargements\Strawberry.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Strawberry','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TuneIn
$testtunein = Test-Path -Path ".\LVASI - Téléchargements\TuneIn.exe" -PathType Leaf
if ($testtunein -eq $true){

Start-Process ".\LVASI - Téléchargements\TuneIn.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TuneIn','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Winamp
$testwinamp = Test-path -path ".\LVASI - Téléchargements\Winamp.exe" -PathType Leaf
if ($testwinamp -eq $true){

Start-Process ".\LVASI - Téléchargements\Winamp.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Winamp','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Youtube Music
$testyoutubemusic = Test-Path -Path ".\LVASI - Téléchargements\Youtube Music Desktop.exe" -PathType Leaf
if ($testyoutubemusic -eq $true){

Start-Process ".\LVASI - Téléchargements\Youtube Music Desktop.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Youtube Music','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Vidéo
#region 4K Video Downloader
$testqkvd = Test-path -path ".\LVASI - Téléchargements\4KVideoDownloader.msi" -PathType Leaf
if ($testqkvd -eq $true){

Start-Process ".\LVASI - Téléchargements\4KVideoDownloader.msi" -argumentlist "/quiet /norestart" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'4k Video Downloader','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region HandBrake
$testhandbrake = Test-path -path ".\LVASI - Téléchargements\HandBrake.exe" -PathType Leaf
if ($testhandbrake -eq $true){

Start-Process ".\LVASI - Téléchargements\HandBrake.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Handbrake','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Basic
$testklb = Test-path -path ".\LVASI - Téléchargements\K-Lite Basic.exe" -PathType Leaf
if ($testklb -eq $true){

Start-Process ".\LVASI - Téléchargements\K-Lite Basic.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Standard
$testkls = Test-path -path ".\LVASI - Téléchargements\K-Lite Standard.exe" -PathType Leaf
if ($testkls -eq $true){

Start-Process ".\LVASI - Téléchargements\K-Lite Standard.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region K-Lite Mega
$testklm = Test-path -path ".\LVASI - Téléchargements\K-Lite Mega.exe" -PathType Leaf
if ($testklm -eq $true){

Start-Process ".\LVASI - Téléchargements\K-Lite Mega.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'K-Lite Codec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kdenlive
$testkdenlive = Test-Path -Path ".\LVASI - Téléchargements\Kdenlive.exe" -PathType Leaf
if ($testkdenlive -eq $true){

Start-Process ".\LVASI - Téléchargements\Kdenlive.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kdenlive','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Kodi
$testkodi = Test-path -path ".\LVASI - Téléchargements\Kodi.exe" -PathType Leaf
if ($testkodi -eq $true){

Start-Process ".\LVASI - Téléchargements\Kodi.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Kodi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-BE
$exe = Get-ChildItem -Path ".\LVASI - Téléchargements\" -include "MPC-BE*.exe" -File -Recurse
if ($exe -eq $true){

Start-Process "$exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-BE','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaPlayer Classic-HC
$testmpchc = Test-path -path ".\LVASI - Téléchargements\MPC-HC.exe" -PathType Leaf
if ($testmpchc -eq $true){

Start-Process ".\LVASI - Téléchargements\MPC-HC.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaPlayerClassic-HC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MKVToolNix
$testmkvt = Test-path -path ".\LVASI - Téléchargements\MKVToolNix.exe" -PathType Leaf
if ($testmkvt -eq $true){

start-process ".\LVASI - Téléchargements\MKVToolNix.exe" -ArgumentList "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MKVToolNix','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OBS Studio
$testobss = Test-path -path ".\LVASI - Téléchargements\OBSStudio.exe" -PathType Leaf
if ($testobss -eq $true){

Start-Process ".\LVASI - Téléchargements\OBSStudio.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OBS Studio','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShot
$testopenshot = Test-path -path ".\LVASI - Téléchargements\OpenShot.exe" -PathType Leaf
if ($testopenshot -eq $true){

Start-Process ".\LVASI - Téléchargements\OpenShot.exe" -argumentlist "/VERYSILENT /NORESTART /LANG=1036" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Plex Media Server
$testplex = Test-path -path ".\LVASI - Téléchargements\PlexMediaServer.exe" -PathType Leaf
if ($testplex -eq $true){

Start-Process ".\LVASI - Téléchargements\PlexMediaServer.exe" -argumentlist "/install /quiet /norestart" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Plex Media Server','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ScreenToGif
$teststg = Test-path -path ".\LVASI - Téléchargements\ScreenToGif.msi" -PathType Leaf
if ($teststg -eq $true){

Start-Process ".\LVASI - Téléchargements\ScreenToGif.msi" -argumentlist "/qb" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ScreenToGif','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ShareX
$testsharex = Test-path -path ".\LVASI - Téléchargements\ShareX.exe" -PathType Leaf
if ($testsharex -eq $true){

Start-Process ".\LVASI - Téléchargements\ShareX.exe" -argumentlist "/VERYSILENT /NORESTART /NORUN" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ShareX','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Shotcut
$testshotcut = Test-path -path ".\LVASI - Téléchargements\Shotcut.exe" -PathType Leaf
if ($testshotcut -eq $true){

Start-Process ".\LVASI - Téléchargements\Shotcut.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Shotcut','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VLC
$testvlc = Test-path -path ".\LVASI - Téléchargements\VLC.msi" -PathType Leaf
if ($testvlc -eq $true){

Start-Process ".\LVASI - Téléchargements\VLC.msi " -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VLC','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region 3D
#region Blender
$testblender = Test-path -path ".\LVASI - Téléchargements\Blender.msi" -PathType Leaf
if ($testblender -eq $true){

Start-Process ".\LVASI - Téléchargements\Blender.msi" -ArgumentList "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Blender','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Cura
$testcura = Test-path -path ".\LVASI - Téléchargements\Cura.exe" -PathType Leaf
if ($testcura -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Cura.exe" -ArgumentList "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Cura','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FreeCAD
$testfreecad = Test-path -path ".\LVASI - Téléchargements\FreeCAD-install.exe" -PathType Leaf
if ($testfreecad -eq $true){

Start-Process ".\LVASI - Téléchargements\FreeCAD-install.exe" -ArgumentList "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FreeCAD','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Fusion360
$testfusion = Test-path -path ".\LVASI - Téléchargements\Fusion360.exe" -PathType Leaf
if ($testfusion -eq $true){

Start-Process ".\LVASI - Téléchargements\Fusion360.exe" -ArgumentList "--quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Fusion360','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ideaMaker
$testideamaker = Test-path -path ".\LVASI - Téléchargements\ideaMaker.exe" -PathType Leaf
if ($testideamaker -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\ideaMaker.exe" -ArgumentList "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ideaMaker','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Lychee Slicer
$testlychee = Test-path -path ".\LVASI - Téléchargements\LycheeSlicer.exe" -PathType Leaf
if ($testlychee -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\LycheeSlicer.exe" -ArgumentList "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Lychee Slicer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PrusaSlicer
$testprusa = Test-path -path ".\LVASI - Téléchargements\PrusaSlicer.exe" -PathType Leaf
if ($testprusa -eq $true){

Start-Process ".\LVASI - Téléchargements\PrusaSlicer.exe" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PrusaSlicer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Sweet Home 3D
$testsweethome = Test-Path -Path ".\LVASI - Téléchargements\Sweet Home 3D.exe" -PathType Leaf
if ($testsweethome -eq $true){

Start-Process ".\LVASI - Téléchargements\Sweet Home 3D.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Sweet Home 3D','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Navigateurs
#region Brave
$testbrave = Test-path -path ".\LVASI - Téléchargements\BraveSilent.exe" -PathType Leaf
if ($testbrave -eq $true){

Start-Process ".\LVASI - Téléchargements\BraveSilent.exe" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Brave','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chrome
$testchrome = Test-path -path ".\LVASI - Téléchargements\Chrome.exe" -PathType Leaf
if ($testchrome -eq $true){

start-process ".\LVASI - Téléchargements\Chrome.exe" -argumentlist "/silent /install" -verb Runas -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chrome','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Chromium
$testchromium = Test-Path -Path ".\LVASI - Téléchargements\Chromium.exe" -PathType Leaf
if ($testchromium -eq $true){

Start-Process ".\LVASI - Téléchargements\Chromium.exe" -argumentlist "--install --silent --system-level" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Chromium','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Firefox
$testfirefox = Test-path -path ".\LVASI - Téléchargements\Firefox.exe" -PathType Leaf
if ($testfirefox -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Firefox.exe" -Argumentlist "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Firefox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Opera
$testopera = Test-path -path ".\LVASI - Téléchargements\Opera.exe" -PathType Leaf
if ($testopera -eq $true){

Start-Process ".\LVASI - Téléchargements\Opera.exe" -ArgumentList "/silent /allusers=1 /launchbrowser=0" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Opera','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Thor
$testthor = Test-Path -Path ".\LVASI - Téléchargements\Thor.exe" -PathType Leaf
if ($testthor -eq $true){

Start-Process ".\LVASI - Téléchargements\Thor.exe" -argumentlist "XXX" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Thor','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Vivaldi
$testvivaldi = Test-path -path ".\LVASI - Téléchargements\Vivaldi.exe" -PathType Leaf
if ($testvivaldi -eq $true){

Start-Process ".\LVASI - Téléchargements\Vivaldi.exe" -argumentlist "--vivaldi-silent --do-not-launch-chrome --system-level" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Vivaldi','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Waterfox
$testwaterfox = Test-Path -Path ".\LVASI - Téléchargements\Waterfox.exe" -PathType Leaf
if ($testwaterfox -eq $true){

Start-Process ".\LVASI - Téléchargements\Waterfox.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Waterfox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Dev
#region DirectX
$testdirectx = Test-Path -path ".\LVASI - Téléchargements\DirectXSetup.exe" -PathType Leaf
if ($testdirectx -eq $true){

Start-Process ".\LVASI - Téléchargements\DirectXSetup.exe" -argumentlist "/Q" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'DirectX','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region FileZilla
$testfilezilla = Test-path -path ".\LVASI - Téléchargements\Filezilla.exe" -PathType Leaf
if ($testfilezilla -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Filezilla.exe" -ArgumentList "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'FileZilla','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Github Desktop
$testgithub = Test-path -path ".\LVASI - Téléchargements\Github.exe" -PathType Leaf
if ($testgithub -eq $true){

Start-Process ".\LVASI - Téléchargements\Github.exe" -argumentlist "--silent" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Github Desktop','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Notepad++
$testnotepad = Test-path -path ".\LVASI - Téléchargements\Notepad++.exe" -PathType Leaf
if ($testnotepad -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Notepad++.exe" -Argumentlist "/S" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Notepad++','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Putty
$testputty = Test-path -path ".\LVASI - Téléchargements\Putty.msi" -PathType Leaf
if ($testputty -eq $true){

Start-Process ".\LVASI - Téléchargements\Putty.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Putty','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Python
$testpython = Test-Path -Path ".\LVASI - Téléchargements\Python.exe" -PathType Leaf
if ($testpython -eq $true){

Start-Process ".\LVASI - Téléchargements\Python.exe" -argumentlist "/quiet /InstallAllUsers" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Python','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Visual Studio Code
$testvisualcode = Test-Path -Path ".\LVASI - Téléchargements\VisualStudioCode.exe" -PathType Leaf
if ($testvisualcode -eq $true){
    
    Start-Process ".\LVASI - Téléchargements\VisualStudioCode.exe" -argumentlist "/VERYSILENT /NORESTART /MERGETASKS=!runcode" -wait
    
    [reflection.assembly]::loadwithpartialname('System.Windows.Forms')
    [reflection.assembly]::loadwithpartialname('System.Drawing')
    $notify = new-object system.windows.forms.notifyicon
    $notify.icon = [System.Drawing.SystemIcons]::Information
    $notify.visible = $true
    $notify.showballoontip(10000,'Visual Studio Code','Installation terminée',[system.windows.forms.tooltipicon]::Info)
    }
#endregion

#region WinSCP
$testwinscp = Test-path -path ".\LVASI - Téléchargements\WinSCP.exe" -PathType Leaf
if ($testwinscp -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\WinSCP.exe" -ArgumentList "/VERYSILENT /NORESTART /ALLUSERS" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinSCP','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Sécurité / Santé
#region AVG Free
$testavg = Test-path -path ".\LVASI - Téléchargements\AVG.exe" -PathType Leaf
if ($testavg -eq $true){

Start-Process ".\LVASI - Téléchargements\AVG.exe" -argumentlist "/SILENT" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'AVG Free','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bitwarden
$testbitwarden = Test-path -path ".\LVASI - Téléchargements\Bitwarden.exe" -PathType Leaf
if ($testbitwarden -eq $true){

Start-Process ".\LVASI - Téléchargements\Bitwarden.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bitwarden','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Bleachbit
$testbleachbit = Test-path -path ".\LVASI - Téléchargements\Bleachbit.exe" -PathType Leaf
if ($testbleachbit -eq $true){

Start-Process ".\LVASI - Téléchargements\Bleachbit.exe" -argumentlist "/S /allusers" -Verb runas -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Bleachbit','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CCleaner
$testccleaner = Test-path -path ".\LVASI - Téléchargements\ccsetup.exe" -PathType Leaf
if ($testccleaner -eq $true){

Start-Process ".\LVASI - Téléchargements\ccsetup.exe" -ArgumentList "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CCleaner','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ExpressVPN
$testexpressvpn = Test-Path -Path ".\LVASI - Téléchargements\ExpressVPN.exe" -PathType Leaf
if ($testexpressvpn -eq $true){

Start-Process ".\LVASI - Téléchargements\ExpressVPN.exe" -argumentlist "/install /quiet /norestart"

Start-sleep -Seconds 2
Do{
$Item = ".\ExpressVPN.exe"

If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
} until ($IsLocked -eq $false)
Stop-Process -Name 'ExpressVPN','ExpressVPNNotificationService' -Force -ErrorAction SilentlyContinue

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ExpressVPN','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Glary Utilities
$testglary = Test-path -path ".\LVASI - Téléchargements\GlaryUtilities.exe" -PathType Leaf
if ($testglary -eq $true){

Start-Process ".\LVASI - Téléchargements\GlaryUtilities.exe" -argumentlist '/S' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Glary Utilities','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region KeePass
$testkeepass = Test-Path -Path ".\LVASI - Téléchargements\KeePass.msi" -PathType Leaf
if ($testkeepass -eq $true){

Start-Process ".\LVASI - Téléchargements\KeePass.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KeePass','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Malwarebytes
$testmalwarebytes = Test-path -path ".\LVASI - Téléchargements\MBSetup.exe" -PathType Leaf
if ($testmalwarebytes -eq $true){

Start-Process ".\LVASI - Téléchargements\MBSetup.exe" -argumentlist "/VERYSILENT /LANG=1036 /NORESTART" -verb Runas -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Malwarebytes','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NordVPN
$testnordvpn = Test-path -path ".\LVASI - Téléchargements\NordVPN.exe" -PathType Leaf
if ($testnordvpn -eq $true){

start-process ".\LVASI - Téléchargements\NordVPN.exe" -ArgumentList "/VERYSILENT /NORESTART /SUPPRESSMSGBOXES" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NordVPN','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Spybot
$testspybot = Test-path -path ".\LVASI - Téléchargements\Spybot.exe" -PathType Leaf
if ($testspybot -eq $true){

Start-Process ".\LVASI - Téléchargements\Spybot.exe" -argumentlist "/VERYSILENT /NORESTART"

Start-Sleep -Seconds 2
Do{
$Item = ".\LVASI - Installation\Spybot.exe"
If ([System.IO.File]::Exists($Item)) {
  Try {
      $FileStream = [System.IO.File]::Open($Item,'Open','Write')

      $FileStream.Close()
      $FileStream.Dispose()

      $IsLocked = $False
  } Catch [System.UnauthorizedAccessException] {
      $IsLocked = 'AccessDenied'
  } Catch {
      $IsLocked = $True
  }
}
$IsLocked} until ($IsLocked -eq $false)

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Spybot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VeraCrypt
$testveracrypt = Test-path -path ".\LVASI - Téléchargements\VeraCrypt.msi" -PathType Leaf
if ($testveracrypt -eq $true){

Start-Process ".\LVASI - Téléchargements\VeraCrypt.msi" -argumentlist "/qb ACCEPTLICENSE=YES" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VeraCrypt','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Wise Disk Manager
$testwdm = Test-path -path ".\LVASI - Téléchargements\WiseDiskManager.exe" -PathType Leaf
if ($testwdm -eq $true){

Start-Process ".\LVASI - Téléchargements\WiseDiskManager.exe" /VERYSILENT -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Wise Disk Manager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Téléchargements
#region Deluge
$testdeluge = Test-Path -Path ".\LVASI - Téléchargements\Deluge.exe" -PathType Leaf
if ($testdeluge -eq $true){

Start-Process ".\LVASI - Téléchargements\Deluge.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Deluge','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Free Download Manager
$testfdm = Test-path -path ".\LVASI - Téléchargements\FreeDownloadManager.exe" -PathType Leaf
if ($testfdm -eq $true){

Start-Process ".\LVASI - Téléchargements\FreeDownloadManager.exe" -argumentlist "/ALLUSERS /VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Free Download Manager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region JDownloader
$testjdl = Test-path -path ".\LVASI - Téléchargements\JDownloader.exe" -PathType Leaf
if ($testjdl -eq $true){

Start-Process ".\LVASI - Téléchargements\JDownloader.exe" -argumentlist "-q -Dfilelinks=dlc,jdc,ccf,rsdf -Ddesktoplink=true -Dexecuteafter=false" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'JDownloader','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region qBittorrent
$testqbit = Test-path -path ".\LVASI - Téléchargements\qBittorrent.exe" -PathType Leaf
if ($testqbit -eq $true){

Start-Process ".\LVASI - Téléchargements\qBittorrent.exe" -ArgumentList "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'qBittorrent','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Transmission
$testtransmission = Test-Path -Path ".\LVASI - Téléchargements\Transmission.msi" -PathType Leaf
if ($testtransmission -eq $true){

Start-Process ".\LVASI - Téléchargements\Transmission.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Transmission','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion
#endregion

#region Cloud
#region Google Drive
$testgdrive = Test-path -path ".\LVASI - Téléchargements\GoogleDrive.exe" -PathType Leaf
if ($testgdrive -eq $true){

Start-Process ".\LVASI - Téléchargements\GoogleDrive.exe" -ArgumentList "--silent" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Google Drive','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MEGA
$testmega = Test-Path -Path ".\LVASI - Téléchargements\MEGAsyncSetup.exe" -PathType Leaf
if ($testmega -eq $true){

Start-Process ".\LVASI - Téléchargements\MEGAsyncSetup.exe" -argumentlist "/S /ALLUSERS" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MEGAsync','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Nextcloud
$testnextcloud = Test-Path -Path ".\LVASI - Téléchargements\Nextcloud.msi" -PathType Leaf
if ($testnextcloud -eq $true){

Start-Process ".\LVASI - Téléchargements\Nextcloud.msi" -argumentlist "REBOOT=ReallySuppress /quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Nextcloud','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ownCloud
$testowncloud = Test-Path -Path ".\LVASI - Téléchargements\ownCloud.msi" -PathType Leaf
if ($testowncloud -eq $true){

Start-Process ".\LVASI - Téléchargements\ownCloud.msi" -argumentlist "REBOOT=ReallySuppress /quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ownCloud','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region SyncTrayzor
$testsynctrayzor = Test-Path -Path ".\LVASI - Téléchargements\SyncTrayzorSetup.exe" -PathType Leaf
if ($testsynctrayzor -eq $true){

Start-Process ".\LVASI - Téléchargements\SyncTrayzorSetup.exe" -argumentlist "/SP- /VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'SyncTrayzor','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Outils
#region BalenaEtcher
$testbalena = Test-path -path ".\LVASI - Téléchargements\BalenaEtcher.exe" -PathType Leaf
if ($testbalena -eq $true){

Start-Process ".\LVASI - Téléchargements\BalenaEtcher.exe" /S -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BalenaEtcher','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region BurnAware
$testburnaware = Test-Path -Path ".\LVASI - Téléchargements\BurnAware.exe" -PathType Leaf
if ($testburnaware -eq $true){

Start-Process ".\LVASI - Téléchargements\BurnAware.exe" -argumentlist "/VERYSILENT /NORESTART /SUPPRESSMSGBOXES" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'BurnAware','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region CDBurnerXP
$testcdbxp = Test-path -path ".\LVASI - Téléchargements\CDBurnerXP.exe" -PathType Leaf
if ($testcdbxp -eq $true){

Start-Process ".\LVASI - Téléchargements\CDBurnerXP.exe" -argumentlist '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CDBurnerXP','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Everything
$testeverything = Test-path -path ".\LVASI - Téléchargements\Everything.exe" -PathType Leaf
if ($testeverything -eq $true){

Start-Process ".\LVASI - Téléchargements\Everything.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Everything','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Flameshot
$testflameshot = Test-Path -Path ".\LVASI - Téléchargements\Flameshot.msi" -PathType Leaf
if ($testflameshot -eq $true){

Start-Process ".\LVASI - Téléchargements\Flameshot.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Flameshot','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region KDEConnect
$testkdec = Test-path -path ".\LVASI - Téléchargements\KDEConnect.exe" -PathType Leaf
if ($testkdec -eq $true){

Start-Process ".\LVASI - Téléchargements\KDEConnect.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'KDEConnect','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region MediaInfo
$testmediainfo = Test-path -path ".\LVASI - Téléchargements\MediaInfo.exe" -PathType Leaf
if ($testmediainfo -eq $true){

Start-Process ".\LVASI - Téléchargements\MediaInfo.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'MediaInfo','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region NetLimiter
$testnetl = Test-path -path ".\LVASI - Téléchargements\NetLimiter.exe" -PathType Leaf
if ($testnetl -eq $true){

Start-Process ".\LVASI - Téléchargements\NetLimiter.exe" -ArgumentList "/exenoui /qn" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'NetLimiter','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Parsec
$testparsec = Test-Path -Path ".\LVASI - Téléchargements\Parsec.exe" -PathType Leaf
if ($testparsec -eq $true){

Start-Process ".\LVASI - Téléchargements\Parsec.exe" -argumentlist "/silent /norun" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Parsec','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PushBullet
$testpushb = Test-path -path ".\LVASI - Téléchargements\PushBullet.exe" -PathType Leaf
if ($testpushb -eq $true){

Start-Process ".\LVASI - Téléchargements\PushBullet.exe" -argumentlist "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PushBullet','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTranslate
$testqtranslate = Test-Path -Path ".\LVASI - Téléchargements\QTranslate.exe" -PathType Leaf
if ($testqtranslate -eq $true){

Start-Process ".\LVASI - Téléchargements\QTranslate.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTranslate','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QTTabBar
$testqtt = Test-path -path ".\LVASI - Téléchargements\QTTabBar.exe" -PathType Leaf
if ($testqtt -eq $true){

Start-Process ".\LVASI - Téléchargements\QTTabBar.exe" -argumentlist "/qi" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QTTabBar','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Raspberry Pi Imager
$testrasp = Test-path -path ".\LVASI - Téléchargements\RaspberryPiImager.exe" -PathType Leaf
if ($testrasp -eq $true){

Start-Process ".\LVASI - Téléchargements\RaspberryPiImager.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Raspberry Pi Imager','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Recuva
$testrecuva = Test-path -path ".\LVASI - Téléchargements\Recuva.exe" -PathType Leaf
if ($testrecuva -eq $true){

Start-Process ".\LVASI - Téléchargements\Recuva.exe" -argumentlist '/S' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Recuva','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region RevoUninstaller
$testrevo = Test-path -path ".\LVASI - Téléchargements\RevoUninstaller.exe" -PathType Leaf
if ($testrevo -eq $true){

Start-Process ".\LVASI - Téléchargements\RevoUninstaller.exe" -argumentlist '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'RevoUninstaller','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Speccy
$testspeccy = Test-path -path ".\LVASI - Téléchargements\Speccy.exe" -PathType Leaf
if ($testspeccy -eq $true){

Start-Process ".\LVASI - Téléchargements\Speccy.exe" -argumentlist '/S' -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Speccy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeamViewer
$testtv = Test-path -path ".\LVASI - Téléchargements\TeamViewer.exe" -PathType Leaf
if ($testtv -eq $true){

Start-Process ".\LVASI - Téléchargements\TeamViewer.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeamViewer','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region VirtualBox
$testvb = Test-path -path ".\LVASI - Téléchargements\VirtualBox.exe" -PathType Leaf
if ($testvb -eq $true){

Start-Process ".\LVASI - Téléchargements\VirtualBox" -argumentlist "--silent --ignore-reboot" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'VirtualBox','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#endregion

#region Améliorations
#region CopyQ
$testcopyq = Test-Path -Path ".\LVASI - Téléchargements\CopyQ.exe" -PathType Leaf
if ($testcopyq -eq $true){

Start-Process ".\LVASI - Téléchargements\CopyQ.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'CopyQ','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Files
$testfiles = Test-path -path ".\LVASI - Téléchargements\Files.msixbundle" -PathType Leaf
if ($testfiles -eq $true){

Add-AppxPackage -Path ".\LVASI - Téléchargements\Files.msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Files','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Ksnip
$testksnip = Test-path -path ".\LVASI - Téléchargements\Ksnip.msi" -PathType Leaf
if ($testksnip -eq $true){

Start-Process ".\LVASI - Téléchargements\Ksnip.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Ksnip','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region LightBulb
$testlightbulb = Test-path -path ".\LVASI - Téléchargements\LightBulb.exe" -PathType Leaf
if ($testlightbulb -eq $true){

Start-Process ".\LVASI - Téléchargements\LightBulb.exe" -argumentlist "/VERYSILENT /NORESTART" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'LightBulb','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region ModernFlyouts
$testmodern = Test-path -path ".\LVASI - Téléchargements\ModernFlyouts.Msixbundle" -PathType Leaf
if ($testmodern -eq $true){

Add-AppxPackage -Path ".\LVASI - Téléchargements\ModernFlyouts.Msixbundle"

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'ModernFlyouts','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region OpenShell
$testopenshell = Test-path -path ".\LVASI - Téléchargements\Openshell.exe" -PathType Leaf
if ($testopenshell -eq $true){

Start-Process -FilePath ".\LVASI - Téléchargements\Openshell.exe" -ArgumentList "/qn" -Wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'OpenShell','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region PowerToys
$testpwt = Test-path -path ".\LVASI - Téléchargements\PowerToys.exe" -PathType Leaf
if ($testpwt -eq $true){

Start-Process ".\LVASI - Téléchargements\PowerToys.exe" -argumentlist "/install /quiet /norestart" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'PowerToys','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region QuickLook
$testquicklook = Test-Path -Path ".\LVASI - Téléchargements\XXXXX.exe" -PathType Leaf
if ($testquicklook -eq $true){

Start-Process ".\LVASI - Téléchargements\QuickLook.msi" -argumentlist "/quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'QuickLook','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region Rainmeter
$testrainmeter = Test-Path -Path ".\LVASI - Téléchargements\Rainmeter.exe" -PathType Leaf
if ($testrainmeter -eq $true){

Start-Process ".\LVASI - Téléchargements\Rainmeter.exe" -argumentlist "/S" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'Rainmeter','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region TeraCopy
$testteracopy = Test-Path -Path ".\LVASI - Téléchargements\TeraCopy.exe" -PathType Leaf
if ($testteracopy -eq $true){

Start-Process ".\LVASI - Téléchargements\TeraCopy.exe" -argumentlist "/exenoui /quiet" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'TeraCopy','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}
#endregion

#region WinaeroTweaker
$exe = Get-ChildItem -Path ".\LVASI - Téléchargements\WinaeroTweaker\" -include "*setup.exe" -file -Recurse
$testwinaero = Test-Path -Path "$exe" -PathType Leaf
if ($testwinaero -eq $true){

Start-Process $exe -argumentlist "/SP- /VERYSILENT" -wait

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10000,'WinaeroTweaker','Installation terminée',[system.windows.forms.tooltipicon]::Info)
}

#endregion
#endregion

$ProgressPreference = 'Continue'

Stop-Transcript

start-sleep -Seconds 2

$window.WindowState= "Maximized"
	
[System.Windows.Forms.MessageBox]::Show("Toutes les installations sont terminées.
(Si des logiciels n'ont pas été correctement installés, n'hésitez pas à me contacter)","LVASI - INSTALLATIONS","Ok",'Asterisk')
}}) 

$mygithub = $Window.FindName("mygithub")
$mymail = $Window.FindName("mymail")
$mytwitter = $Window.FindName("mytwitter")

$mygithub.Add_PreviewMouseDown({[system.Diagnostics.Process]::start('https://github.com/SebastienFRA/LVASI')})
$mymail.Add_PreviewMouseDown({[system.Diagnostics.Process]::start('mailto:sebastien.lvasi@gmail.com')})
$mytwitter.Add_PreviewMouseDown({[system.Diagnostics.Process]::start('https://twitter.com/Puma_n')})

$Window.ShowDialog()