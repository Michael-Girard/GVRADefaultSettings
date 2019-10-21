@Echo off
::Author: Michael Girard
::Script to run a PowerShell script that sets the time zone to -5 GMT

::Get the location that this batch file is being run from
SET scriptpath=%~dp0

::Run the time zone powershell script located in the same directory
powershell -ExecutionPolicy ByPass -File "%scriptpath%SetTimeZoneScript.ps1"

pause
