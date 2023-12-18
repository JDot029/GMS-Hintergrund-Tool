@echo off
title Hintergrund-Tool
color 0f
goto MENU1
:MENU1
cls
echo -------------------------------------                                
ECHO -  1 Tool Installieren
ECHO -  2 Tool deinstallieren
ECHO -  3 Verlassen
echo -------------------------------------  
echo.
SET menuna=2
:REN1                         
SET /P menuna=Bite such dir eine der Obigen optionen aus: 
IF %menuna%==1 (goto INST) 
IF %menuna%==2 (goto DEINST)  
IF %menuna%==3 (goto ENDE)  
:INST
rmdir H:\TOOL
md H:\TOOL
xcopy /F "Hintergrund.jpg" "H:\TOOL\Hintergrund.jpg" 
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo ^@echo off > autorun.bat
@echo xcopy "H:/TOOL/Hintergrund.jpg" "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\Temp.jpg\" >> autorun.bat
@echo ren Temp.jpg CachedImage_1366_768_POS4.jpg >> autorun.bat
@echo Installation abgeschlossen!
goto MENU1

:DEINST
del "H:\TOOL\" /F /Q
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorun.bat"  /F /Q
@echo Deinstallation abgeschlossen!
goto MENU1

:ENDE
echo Tool Installations Programm beendet!
pause