@Echo off
::Author: Michael Girard
::Modifies a registry setting to set "Always Show All Icons in the Notification Area" to True 

REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoTrayNotify" /t REG_DWORD /d 00000001 /f

pause
