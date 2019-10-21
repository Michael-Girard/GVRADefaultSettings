::Get the location that this batch file is being run from
::Author:Michael Girard
::This script executes a powershell script that sets application defaults using an xml file

::Get the directory of this script
SET scriptpath=%~dp0

::Run the bloatware removal powershell script located in the same directory
powershell -ExecutionPolicy ByPass -File %scriptpath%Set_Defaults_Script.ps1
