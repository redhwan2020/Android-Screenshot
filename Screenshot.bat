@echo off
cd "%~dp0"
mode con:cols=85 lines=50
set /A count=4
Title Screenshot ENG-Redhwan
FOR /F "tokens=1-3 delims=/ " %%i IN ("%date:~0,10%") DO SET d=%%i%%j%%k
FOR /F "tokens=1-3 delims=: " %%i IN ("%time:~0,8%")  DO SET t=%%i%%j%%k

SET log_dir=%d%_%t%

:RK
cls
echo.                        ******************************************
echo.                       --       Screenshot All Android Version     --
echo.                      ---                                         ---
echo.                     ---           By Eng-Redhwan Kathir            ---
echo.                      ---                                         ---
echo.                       --            Tell:774489117             --
echo.                        *****************************************
color C
echo.
echo                            [#] Waiting For Device ....
dd wait-for-device >NUL 2>&1
echo.                     
echo                               (#) pull Screenshot 
dd shell screencap -p /sdcard/shot.png >NUL 2>&1
dd pull /sdcard/shot.png ./Screenshot_%log_dir%_%1.png >NUL 2>&1
dd shell rm /sdcard/shot.png >NUL 2>&1
echo.                             
echo                    (#) .... Saved to Screenshot_%log_dir%_%1.png ....
echo.                               
pause
:exit
rem goto RK