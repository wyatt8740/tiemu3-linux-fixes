; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
;
; (c) Copyright 2001-2004, the TiLP team
;
; $Id: tiemu.iss 639 2004-08-19 15:35:33Z roms $

[Setup]
AppName=TiEmu
AppVerName=TiEmu 2.00-rc1
AppPublisher=The TiEmu Team
AppPublisherURL=http://lpg.ticalc.org/prj_tiemu/index.html
AppSupportURL=http://lpg.ticalc.org/prj_tiemu/mailing_list.html
AppUpdatesURL=http://lpg.ticalc.org/prj_tiemu/win32_download.html
DefaultDirName={pf}\TiEmu
DefaultGroupName=TiEmu
AllowNoIcons=yes
LicenseFile=C:\sources\roms\tiemu\COPYING
InfoBeforeFile=C:\sources\roms\tiemu\README.win32
InfoAfterFile=C:\sources\roms\tiemu\RELEASE

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4; Flags: unchecked

[Files]
; Glade files
Source: "C:\sources\roms\tiemu\glade\*.glade"; DestDir: "{app}\glade"; Flags: ignoreversion;
; Help files
Source: "C:\sources\roms\tiemu\help\*.jpg"; DestDir: "{app}\help"; Flags: ignoreversion;
Source: "C:\sources\roms\tiemu\help\*.png"; DestDir: "{app}\help"; Flags: ignoreversion;
Source: "C:\sources\roms\tiemu\help\*.htm?"; DestDir: "{app}\help"; Flags: ignoreversion;
; Pixmaps files
Source: "C:\sources\roms\tiemu\pixmaps\*.xpm"; DestDir: "{app}\pixmaps"; Flags: ignoreversion;
; Skin files
Source: "C:\sources\roms\tiemu\skins\*.skn"; DestDir: "{app}\skins"; Flags: ignoreversion;
; Keymap files
Source: "C:\sources\roms\tiemu\skins\*.map"; DestDir: "{app}\skins"; Flags: ignoreversion;
Source: "C:\sources\roms\tiemu\skins\ti92.map"; DestDir: "{app}\skins"; DestName: "v200plt.map"; Flags: ignoreversion;
; i18n files
;Source: "C:\sources\roms\libs\files\po\fr.gmo"; DestDir: "{app}\locale\fr\LC_MESSAGES"; DestName: "tifiles.mo"; Flags: ignoreversion;
;Source: "C:\sources\roms\libs\cables\po\fr.gmo"; DestDir: "{app}\locale\fr\LC_MESSAGES"; DestName: "ticables.mo"; Flags: ignoreversion;
;Source: "C:\sources\roms\libs\calcs\po\fr.gmo"; DestDir: "{app}\locale\fr\LC_MESSAGES"; DestName: "ticalcs.mo"; Flags: ignoreversion;
;Source: "C:\sources\roms\tiemu\po\fr.gmo"; DestDir: "{app}\locale\fr\LC_MESSAGES"; DestName: "tiemu.mo"; Flags: ignoreversion;
; Misc files
Source: "C:\sources\roms\tiemu\AUTHORS"; DestDir: "{app}"; DestName: "Authors.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\BUGS"; DestDir: "{app}"; DestName: "Bugs.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\CHANGELOG"; DestDir: "{app}"; DestName: "ChangeLog.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\COPYING"; DestDir: "{app}"; DestName: "License.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\LICENSES"; DestDir: "{app}"; DestName: "Licenses.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\man\ManPage.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\README.win32"; DestDir: "{app}"; DestName: "ReadMe.txt"; Flags: ignoreversion isreadme
Source: "C:\sources\roms\tiemu\RELEASE"; DestDir: "{app}"; DestName: "Release.txt"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\TODO"; DestDir: "{app}"; DestName: "ToDo.txt"; Flags: ignoreversion
;Source: "C:\sources\roms\tiemu\ROMs\romcalls.lst"; DestDir: "{app}"; Flags: ignoreversion
; ROM files
Source: "C:\sources\roms\tiemu\pedrom\romcalls.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\pedrom\pedrom*.tib"; DestDir: "{app}\pedrom"; Flags: ignoreversion
; TiEmu/GTK
Source: "C:\sources\roms\tifiles\tests\tifiles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\ticables\tests\ticables.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\ticalcs\tests\ticalcs.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\tiemu\build\msvc\tiemu.exe"; DestDir: "{app}"; DestName: "tiemu.exe"; Flags: ignoreversion
;Source: "C:\Windows\system32\MSVCRTD.DLL"; DestDir: "{app}"; Flags: ignoreversion
; Copy PortTalk driver for Windows NT4/2000/XP
Source: "C:\sources\roms\misc\Porttalk22\PortTalk.sys"; DestDir: "{sys}\drivers"; Flags: ignoreversion
Source: "C:\sources\roms\misc\Porttalk22\PortTalk.sys"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\misc\Porttalk22\AllowIO.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\sources\roms\misc\Porttalk22\Uninstall.exe"; DestDir: "{app}"; Flags: ignoreversion

; GTK+ specific
Source: "C:\Gtk2Dev\bin\gtkthemeselector.exe"; DestDir: "{app}";
;libglade/libxml add-on (ignore since no version checking is possible)
Source: "C:\Gtk2Dev\bin\libxml2.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "C:\Gtk2Dev\bin\libglade-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion;

[Dirs]
;Name: "{app}\My TI images"; Flags: uninsneveruninstall;
;Name: "{app}\plugins"; Flags: uninsneveruninstall;

[INI]
Filename: "{app}\tiemu.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://lpg.ticalc.org/prj_tiemu"

[Icons]
Name: "{group}\TiEmu"; Filename: "{app}\tiemu.exe"; WorkingDir: "{app}\My TI files"
Name: "{group}\TiEmu on the Web"; Filename: "{app}\tiemu.url"
Name: "{group}\Uninstall TiEmu"; Filename: "{uninstallexe}"
Name: "{group}\User's Manual"; Filename: "{app}\help\Manual_en.html"
Name: "{group}\GTK theme selector"; Filename: "{app}\gtkthemeselector.exe";
Name: "{group}\Bugs"; Filename: "{app}\Bugs.txt"

Name: "{userdesktop}\TiEmu"; Filename: "{app}\tiemu.exe"; WorkingDir: "{app}\My TI files"; MinVersion: 4,4; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TiEmu"; Filename: "{app}\tiemu.exe"; WorkingDir: "{app}\My TI files"; MinVersion: 4,4; Tasks: quicklaunchicon

[Run]
; Remove any previously installed PortTalk driver (especially v1.x)
Filename: "{app}\Uninstall.exe"; Parameters: ""; MinVersion: 0,4;

[UninstallRun]
; Remove any previously installed PortTalk driver (especially v1.x)
Filename: "{app}\Uninstall.exe"; Parameters: ""; MinVersion: 0,4;

[Registry]
; This adds the GTK+ libraries to tiemu.exe's path
;Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\tiemu.exe"; Flags: uninsdeletekeyifempty
;Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\tiemu.exe"; ValueType: string; ValueData: "{app}\tiemu.exe"; Flags: uninsdeletevalue
;Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\tiemu.exe"; ValueType: string; ValueName: "Path"; ValueData: "{app};{code:GetGtkPath}\bin"; Flags: uninsdeletevalue

[UninstallDelete]
Type: files; Name: "{app}\tiemu.url"

;; Taken from "http://www.dropline.net/gtk/support.php" with some customizations

[Code]
var
  Exists: Boolean;
  GtkPath: String;
  WimpPath: String;
  GtkVersion: String;

function GetGtkInstalled (): Boolean;
begin
  Exists := RegQueryStringValue (HKLM, 'Software\GTK\2.0', 'Path', GtkPath);
  if not Exists then begin
    Exists := RegQueryStringValue (HKCU, 'Software\GTK\2.0', 'Path', GtkPath);
  end;
   Result := Exists
end;

function GetGtkVersionInstalled (): Boolean;
begin
  Exists := RegQueryStringValue (HKLM, 'Software\GTK\2.0', 'Version', GtkVersion);
  if not Exists then begin
    Exists := RegQueryStringValue (HKCU, 'Software\GTK\2.0', 'Version', GtkVersion);
  end;
   Result := Exists
end;

function GetGtkPath (S: String): String;
begin
    Result := GtkPath;
end;

function GetGtkVersion (S: String): String;
begin
    Result := GtkVersion;
end;

function IsTiglUsbVersion3Mini (): Boolean;
var
  Version: String;
begin
  GetVersionNumbersString('C:\WinNT\System\TiglUsb.dll', Version);
  if CompareStr(Version, '3.0.0.0') < 0 then begin
    Result := false;
  end;
end;

function InitializeSetup(): Boolean;
begin
  // Retrieve GTK path
  Result := GetGtkInstalled ();
  if not Result then begin
    MsgBox ('Please install the "GTK+ 2.6.x Runtime Environment" (2.6.4 mini). You can obtain GTK+ from <http://prdownloads.sourceforge.net/gladewin32/gtk-win32-2.6.4-rc1.exe?download>.', mbError, MB_OK);
  end;

  // Retrieve GTK version
  if Result then begin
    Result := GetGtkVersionInstalled ();
    
    // and check
    if CompareStr(GtkVersion, '2.6.4') < 0 then begin
      MsgBox ('Wrong package version. You need at least version 2.6.4 from <http://prdownloads.sourceforge.net/gladewin32/gtk-win32-2.6.4-rc1.exe?download>.', mbError, MB_OK);
    end;
  end;

  // Check version of USB driver
  if IsTiglUsbVersion3Mini() then begin
    MsgBox('SilverLink driver v2.x has been removed of your system. Now, TiEmu requires v3.x (check out the README for download location).', mbError, MB_OK);
  end;

  // Check for non-NT and WiMP theme
  WimpPath := GtkPath + '\lib\gtk-2.0\2.4.0\engines\libwimp.dll';
  if FileExists(WimpPath) and not UsingWinNT() then begin
        MsgBox('Tip: you are running a non-NT platform with the GTK+ WiMP theme engine installed. If you get a lot of warnings about fonts in console, run the Gtk+ Theme Selector as provided in the start menu group of TiLP/TiEmu', mbError, MB_OK);
  end;
end;
