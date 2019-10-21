@Echo off
::Author: Michael Girard
::Simple script to add "Files" to the desktops of additional users created on the computer.

::Get the location that this batch file is being run from
SET scriptpath=%~dp0

::Copy the Files shortcut to the default desktop so new users get it
copy "%scriptpath%Files.lnk" "%homedrive%\users\default\desktop" /Y
pause
