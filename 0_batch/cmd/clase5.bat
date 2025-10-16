@echo off
color a
title Mantenimiento

:menu
cls
echo.
echo.
echo ----------------------------------------------
echo      Programa de Mantenimiento
echo                                by x89p
echo ----------------------------------------------
echo.
echo.
echo  1. Listar directorio actual
echo  2. Quien soy?
echo  3. Git version
echo  4. Analizar Espacio Disponible
echo  5. Salir

echo.
echo.

set /p datoUsuario=Ingresa una opcion UwU :    

if %datoUsuario%==1 (goto :1)
if %datoUsuario%==2 (goto :2)
if %datoUsuario%==3 (goto :3)
if %datoUsuario%==4 (goto :4)
if %datoUsuario%==5 (goto :5)


:1
echo.
echo     - - - - - - 0 0 0 - - - - - - Press ENTER...
echo.
dir
pause>nul
goto menu

:2
echo.
echo     - - - - - - 0 0 0 - - - - - - Press ENTER...
echo.
whoami
pause>nul
goto menu

:3
echo.
echo     - - - - - - 0 0 0 - - - - - - Press ENTER...
echo.
git --version
pause>nul
goto menu

:4
echo.
echo     - - - - - - 0 0 0 - - - - - - Press ENTER...
echo.
fsutil volume diskfree c:\
pause>nul
goto menu

:5
echo.
echo     - - - - - - 0 0 0 - - - - - - Press ENTER...
echo.
echo  GOOD BYE...!!!
pause>nul
@echo on
