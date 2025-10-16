@echo off

rem :x89p

:menu
cls
echo.
:: esto es una prueba
echo.
echo.
echo.
set /p aeo8=        Ingresa un numero :)   

if %aeo8%==panda8hat (
  echo ----main------
  echo ^[^*^] esto es secreto...
  pause>nul
  goto menu
) else if %aeo8%==aeo8 (
  echo.
  echo     Usuario con privilegios muy elevados 
  echo.
  pause>nul
  goto menu
) else (
  echo ELSE ELSE ELSE ELSE
  echo   T T    T T   T T 
  pause>null
  goto menu
)
rem goto x89p


