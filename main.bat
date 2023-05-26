@echo off
title Lanschool
color a

:question
echo Do you want to turn- "off" or "on" lanschool
set /p "id=Enter: "
IF "%id%"=="off" goto off
IF "%id%"=="on" goto on

:off 
taskkill /F /IM LSAirClientUI.exe
taskkill /F /IM LSAirClient.exe
taskkill /F /IM LSAirClientService.exe
pause
exit

:on
cd "C:\Program Files (x86)\LenovoSoftware\LanSchoolAir" && start LSAirClient.exe
pause
exit
