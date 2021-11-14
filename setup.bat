@echo off
cls
echo  Twindows 1.0 Setup
echo ====================
echo Welcome to Turbo Windows setup!
pause
echo Copying files...
copy bootos.exe %1
if not exist %1\twindows then md %1\twindows
copy kernel.exe %1\twindows
copy boottwin.exe %1\twindows
echo Install complate!