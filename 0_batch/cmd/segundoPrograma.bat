@echo off
title Mi segundo Programa
color e
mode 120,50


:inicio
echo.
echo.
echo --------------------------------------------------------
echo -                                                      -
echo -           MENU    MENU    MENU    MENU               -
echo -                                                      -
echo --------------------------------------------------------
echo         1.  Abrir Calculadore
echo         2.  Buscar en Youtube
echo         3.  Salir
echo --------------------------------------------------------
echo.
echo.

set /p menuDes=opcionDes=

if "%menuDes%"=="1" goto op1
if "%menuDes%"=="2" goto op2
if "%menuDes%"=="3" goto salir


:op1
cls
start calc.exe
pause>nul
cls
goto inicio

:op2
cls
echo.
set /p buscarDes=BuscarYoutubeDes=
start https://www.youtube.com/results?search_query=%buscarDes%
pause>nul
cls
goto inicio


:salir
cls & exit
