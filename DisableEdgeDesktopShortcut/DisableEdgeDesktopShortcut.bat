@Echo Off
::Author: Michael Girard
::Disables the creation of Microsoft Edge shortcuts on the desktop for new users

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "DisableEdgeDesktopShortcutCreation" /t REG_DWORD /d "1" /f
pause
