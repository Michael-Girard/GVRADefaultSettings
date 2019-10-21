@echo off
::Author: Michael Girard
::Disables the "Set your Privacy Options" screen that displays when logging into a new user for the first time

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d 00000001 /f 

pause
