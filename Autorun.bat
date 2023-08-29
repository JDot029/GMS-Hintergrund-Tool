@echo off
xcopy "H:/TOOL/BG.png" "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\Platzhalter.png\" 
xcopy "H:/TOOL/BG.jpg" "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\Platzhalter.jpg\" 
cd "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\"


ren "CachedImage_1366_768_POS4.jpg" "CachedImage_1366_768_POS4_ALT.jpg"
ren Platzhalter.jpg CachedImage_1366_768_POS4.jpg
ren Platzhalter.png CachedImage_1366_768_POS4.jpg
cd ..
del "TranscodedWallpaper"
xcopy "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\\Platzhalter.jpg" "..\TranscodedWallpaper"
