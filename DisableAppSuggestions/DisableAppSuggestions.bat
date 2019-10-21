@Echo off
::Author: Michael Girard
::Disables suggested apps in the start menu by modifying a registry setting

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 00000001 /f

pause
