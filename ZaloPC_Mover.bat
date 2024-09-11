@echo off
pushd "%~dp0"
title MOVE ZaloPC to D
echo ==== MOVE ZaloPC to D =====
echo.
if not exist "%localappdata%\ZaloPC\" goto :exit
echo ZaloPC ready to move...
pause
:main
echo.
echo ==== Start Moving... Please waiting.....!
echo.
md D:\ZaloDATA\ZaloPC
xcopy "%localappdata%\ZaloPC" D:\ZaloDATA\ZaloPC /E /J
echo.
echo ==== End Copying ======
echo.
rd "%localappdata%\ZaloPC" /S /Q
echo.
echo ==== End Remove ZaloPC ===
echo.
mklink /D "%localappdata%\ZaloPC" D:\ZaloDATA\ZaloPC
echo ==== End Symlink to D ====
echo.
goto exit
:exit
pause
cmd