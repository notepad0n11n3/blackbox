@echo off

set a=Hola
echo.
echo.
echo.
echo.
set /p varNombre= Ingresa el nombre de usuario:    
echo.
set /p varArchivo= Ingrese el nombre del archivo:   

set /a b=5+5

echo %b%
echo %a%
echo %varNombre%

if %varNombre%==panda8hat (echo %varNombre% Bienvenido Admin ) else echo %varNombre% quien eres...?

if exist %varArchivo% (echo el archivo %varArchivo% existe) else echo el archivo %varArchivo% NO existe

pause
