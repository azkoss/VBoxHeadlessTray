; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "VBoxHeadlessTray"
#define MyAppVersion "5.2"
#define MyAppPublisher "Topten Software"
#define MyAppURL "http://www.toptensoftware.com/VBoxHeadlessTray"
#define MyAppExeName "VBoxHeadlessTray.exe"
#define InstallDir "{pf64}\Topten Software\VBoxHeadlessTray"
#define SourceDir ".\VBoxHeadlessTray"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{d13630aa-97df-11e5-8994-feff819cdc9f}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={#InstallDir}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=VBoxHeadlessTray52Setup
OutputDir=.
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}
MinVersion=0,5.1.2600sp3
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#SourceDir}\Win32\Release\VBoxHeadlessTray.exe"; DestDir: "{app}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "{#SourceDir}\x64\Release\VBoxHeadlessTray64.exe"; DestDir: "{app}"; DestName: "VBoxHeadlessTray.exe"; Flags: ignoreversion; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]

[Messages]
WelcomeLabel2=This will install [name/ver] on your computer.%n%nBy continuing you are agreeing to the license agreement.

