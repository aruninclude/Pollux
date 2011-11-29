@echo off

:MENU
cls
echo          =====================
echo          �  POLLUX LICENSE   �
echo          =====================
echo          �  0. Quit          �
echo          �  1. Check         �
echo          �  2. Format        �
echo          �  3. Remove        �
echo          =====================
set /p userinp=License Command?"(0-3):
set userinp=%userinp:~0,1%

if "%userinp%"=="0" goto END
if "%userinp%"=="1" goto check
if "%userinp%"=="2" goto format
if "%userinp%"=="3" goto remove
goto MENU

:check
mvn license:check -Dyear=2011 -Dorganisation="Pollux"
goto MENU

:format
mvn license:format -Dyear=2011 -Dorganisation="Pollux"
goto MENU

:remove
mvn license:remove -Dyear=2011 -Dorganisation="Pollux"
goto MENU

:END
cls