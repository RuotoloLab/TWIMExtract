; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "TWIMExtract"
#define MyAppVersion "1.6"
#define MyAppPublisher "University of Michigan"
#define MyAppURL "https://github.com/RuotoloLab/TWIMExtract"
#define MyAppExeName "runTWIMExtract.bat"
#define SourceDir "C:\Users\dmakey\twimextract"
#define OutputDir "C:\Users\dmakey\twimextract\TWIMExtract_build"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{867CAA5D-ACDE-4CAB-8D91-228D780850AE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\TWIMExtract
DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=TWIMExtract_Setup
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=False
OutputDir={#OutputDir}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "{#SourceDir}\TWIMExtract_Help.txt"; DestDir: "{app}"; Flags: isreadme
Source: "{#SourceDir}\root\*"; DestDir: "{app}\root"
Source: "{#SourceDir}\_EXAMPLES\Batches\ExampleBatchCSV.csv"; DestDir: "{app}\_EXAMPLES\Batches"
Source: "{#SourceDir}\lib\*"; DestDir: "{app}\lib"
Source: "{#SourceDir}\jars\TWIMExtract.jar"; DestDir: "{app}\jars"
Source: "{#SourceDir}\runTWIMExtract.bat"; DestDir: "{app}"
Source: "{#SourceDir}\config\config.txt"; DestDir: "{app}\config"
Source: "{#SourceDir}\_EXAMPLES\Range_and_Rule_Examples\Making Selection Rule Files.docx"; DestDir: "{app}\_EXAMPLES\Range_and_Rule_Examples"
Source: "{#SourceDir}\_EXAMPLES\Range_and_Rule_Examples\RangeExample.txt"; DestDir: "{app}\_EXAMPLES\Range_and_Rule_Examples"
Source: "{#SourceDir}\_EXAMPLES\Range_and_Rule_Examples\RuleExample.txt"; DestDir: "{app}\_EXAMPLES\Range_and_Rule_Examples"
Source: "{#SourceDir}\_EXAMPLES\Range_and_Rule_Examples\Legacy format (advanced only)\TWIMExtract_Legacy_RangeExample.txt"; DestDir: "{app}\_EXAMPLES\Range_and_Rule_Examples\Legacy format (advanced only)"
Source: "{#SourceDir}\_EXAMPLES\Batches\ExampleRangeFolder\RangeExample.txt"; DestDir: "{app}\_EXAMPLES\Batches\ExampleRangeFolder"
Source: "{#SourceDir}\_EXAMPLES\Batches\ExampleRangeFolder\RangeExample2.txt"; DestDir: "{app}\_EXAMPLES\Batches\ExampleRangeFolder"
Source: "{#SourceDir}\_EXAMPLES\Batches\ExampleRangeFolder2\RangeExample3.txt"; DestDir: "{app}\_EXAMPLES\Batches\ExampleRangeFolder2"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Dirs]
Name: "{app}\lib"
Name: "{app}\root"
Name: "{app}\jars"
Name: "{app}\config"
Name: "{app}\_EXAMPLES"
Name: "{app}\_EXAMPLES\Batches"
Name: "{app}\_EXAMPLES\Range_and_Rule_Examples"
Name: "{app}\_EXAMPLES\Range_and_Rule_Examples\Legacy format (advanced only)"
Name: "{app}\_EXAMPLES\Batches\ExampleRangeFolder"
Name: "{app}\_EXAMPLES\Batches\ExampleRangeFolder2"
Name: "{app}\_EXAMPLES\Batches\ExampleRawFolder"
Name: "{app}\_EXAMPLES\Batches\ExampleRawFolder2"
Name: "{app}\_EXAMPLES\Batches\ExampleRawFolder\ExampleData1.raw"
Name: "{app}\_EXAMPLES\Batches\ExampleRawFolder\ExampleData2.raw"
Name: "{app}\_EXAMPLES\Batches\ExampleRawFolder2\ExampleData3.raw"
