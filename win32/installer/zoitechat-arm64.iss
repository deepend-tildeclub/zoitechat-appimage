#define MyAppName "ZoiteChat"
#define MyAppVersion "2.17.0"
#define MyAppPublisher "ZoiteChat"
#define MyAppExeName "zoitechat.exe"

[Setup]
AppId={{A2B6A5B2-2F7A-4D1E-9C0B-ARM64ZOITECHAT}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=installer\Output
OutputBaseFilename=ZoiteChat-ARM64-Setup
Compression=lzma2
SolidCompression=yes

ArchitecturesAllowed=arm64
ArchitecturesInstallIn64BitMode=arm64

[Files]
Source: "..\dist\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\bin\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\bin\{#MyAppExeName}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"
