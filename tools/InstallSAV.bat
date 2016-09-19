@ECHO OFF
REM --- Check for an existing installation of Sophos AutoUpdate on 32-bit (the 'Sophos AutoUpdate Service' process)
IF EXIST "C:\Program Files\Sophos\AutoUpdate\ALsvc.exe" goto _End
REM --- Check for an existing installation of Sophos AutoUpdate on 64-bit (the 'Sophos AutoUpdate Service' process)
IF EXIST "C:\Program Files (x86)\Sophos\AutoUpdate\ALSVC.exe" goto _End
REM --- Check for an existing installation of Sophos Anti-Virus on 2003/XP (the SAV adapter config file)
IF EXIST "C:\Documents and Settings\All Users\Application Data\Sophos\Remote Management System\3\Agent\AdapterStorage\SAV\SAVAdapterConfig" goto _End
REM --- Check for an existing installation of Sophos Anti-Virus on Vista+ (the SAV adapter config file)
IF EXIST "C:\ProgramData\Sophos\Remote Management System\3\Agent\AdapterStorage\SAV\SAVAdapterConfig" goto _End
REM --- Deploy to Windows 2000/XP/2003/Vista/Windows7/2008/2008-R2
\\[SERVER]\SophosUpdate\CIDs\S000\SAVSCFXP\Setup.exe -updp "\\[SERVER]\SophosUpdate\CIDs\S000\SAVSCFXP" -ouser [OUSER] -opwd [OPSWD] -mng yes
REM --- End of the script
:_End
