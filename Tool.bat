@echo off
title Hintergrund-Tool
color 0f
goto MENU1
:MENU1
ECHO.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
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
md H:\TOOL
xcopy "Hintergrund.png" "H:\TOOL\BG.png"
xcopy "Hintergrund.jpg" "H:\TOOL\BG.jpg"
xcopy "Autorun.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
@echo Installation abgeschlossen!
goto MENU1

:DEINST
del "H:\TOOL\" /F /Q
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Autorun.bat"  /F /Q
@echo Deinstallation abgeschlossen!
goto MENU1

:ENDE
echo Tool Installations Programm beendet!
pause