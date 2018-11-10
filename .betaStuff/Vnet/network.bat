@echo off
title batchOS -- Virtual Networking
goto menu

:menu
echo.
echo                batchOS Beta Feature
echo                 Virtual Networking
echo.
echo To select a menu option, type the letter in
echo the brackets.
echo.
echo   [S] Setup a virtual network
echo   [D] Disconnect from a Virtual Network
echo   [F] Share a folder
echo   [C] Close Shared Folder Connections
echo   [P] Disconnect from Shared Folder and Virtual Network
echo.
set choice=
set /p choice=

if %choice%== S goto setupnet
if %choice%== s goto setupnet
if %choice%== D goto disconnectnet
if %choice%== d goto disconnectnet
if %choice%== F goto sharefolder
if %choice%== f goto sharefolder
if %choice%== C goto closeshare
if %choice%== c goto closeshare
if %choice%== P goto disconnect
if %choice%== p goto disconnect
if %choice%== ? goto help

:invalidcommand
echo.
echo This is not a valid menu option
echo.
goto menu

:setupnet
echo.
echo Virtual Network Setup
echo.
echo.
echo Setup Network
echo.
echo Steps
echo 1] Loading and Copying Files
echo 2] Adding Registry Components
echo 3] Testing Components
echo 4] Saving Setup Information
echo 5] Generate Network Key
echo.
echo    Step 1
echo Loading Setup Files...
ping -n 6 127.0.0.0 > nul
echo.
echo Copying files. . .
echo.
copy /y Files\*.* InstalledComponents\*.*
echo.
echo 