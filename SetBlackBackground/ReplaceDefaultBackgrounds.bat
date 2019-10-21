@Echo Off
::Author:Michael Girard
::Replaces the default Windows background files with a solid black background
::This is a hack to make the default new user background solid black

::Get the location that this batch file is being run from
SET scriptpath=%~dp0

::Take ownership of default wallpapers from TrustedInstaller
takeown /f %windir%\Web\Wallpaper\Windows\img0.jpg
takeown /f %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.jpg
takeown /f %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.jpg
takeown /f %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg
takeown /f %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg

::Grant yourself permission to modify the files
icacls %windir%\Web\Wallpaper\Windows\img0.jpg /Grant System:(F)
icacls %windir%\Web\Wallpaper\Windows\img0.jpg /Grant Administrators:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.jpg /Grant System:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.jpg /Grant Administrators:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.jpg /Grant System:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.jpg /Grant Administrators:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg /Grant System:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg /Grant Administrators:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg /Grant System:(F)
icacls %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg /Grant Administrators:(F)

::Back up old Windows defaults
ren %windir%\Web\Wallpaper\Windows\img0.jpg %windir%\Web\Wallpaper\Windows\img0.bak
ren %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.jpg %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.bak
ren %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.jpg %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.bak
ren %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.bak
ren %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.bak

::Copy over the black wallpaper to replace the old Windows defaults
copy /y "%scriptpath%Black_Wallpaper.jpg" %windir%\Web\Wallpaper\Windows\img0.jpg
copy /y "%scriptpath%Black_Wallpaper.jpg" %windir%\Web\4K\Wallpaper\Windows\img0_1024x768.jpg
copy /y "%scriptpath%Black_Wallpaper.jpg" %windir%\Web\4K\Wallpaper\Windows\img0_1366x768.jpg
copy /y "%scriptpath%Black_Wallpaper.jpg" %windir%\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg
copy /y "%scriptpath%Black_Wallpaper.jpg" %windir%\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg

pause
