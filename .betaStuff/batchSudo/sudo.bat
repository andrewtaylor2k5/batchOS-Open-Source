@echo off
title batchOS - SUDO
echo batchOS Sudo Interpreter
goto sudo


:sudo
echo.
echo Enter Command:
set command=
set /p command=

goto commands

:commands
if %command%== $sudo_time.disp goto timedisp
if %command%== $sudo_time.change goto changetime
if %command%== $sudo_date.disp goto dispdate
if %command%== $sudo_date.change goto changedate
if %command%== $sudo_dtime.disp goto displaydatetime

:error
start error.vbs
goto sudo
