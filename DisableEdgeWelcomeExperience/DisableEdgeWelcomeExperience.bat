@echo off
@Echo Off
::Author: Michael Girard
::Disables the "Welcome to Windows" Edge window that opens when logging in to a new user the first time

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge" /v "PreventFirstRunPage" /t REG_DWORD /d 00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge" /v "AllowPrelaunch" /t REG_DWORD /d 00000000 /f

::Load the default user registry settings, modify a key, then unload the default user registry settings
REG LOAD "HKEY_LOCAL_MACHINE\DefaultReg" "%systemdrive%\users\default\ntuser.dat"
REG ADD "HKEY_LOCAL_MACHINE\DefaultReg\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 00000000 /f
REG UNLOAD "HKEY_LOCAL_MACHINE\DefaultReg"

pause
