@echo off
REM ============================================================
REM  Build do GourmetApi com Delphi 10.4 Sydney (RAD 21.0) via dcc32.
REM  Validado: compila 18.716 linhas, 0 erros, gera GourmetApi.exe.
REM
REM  Dependencias:
REM    - boss deps clonadas em .\modules (horse, jhonson, horse-cors,
REM      horse-jwt, delphi-jose-jwt, hashlib4pascal).
REM    - UniDAC (Devart) p/ Delphi 10.4 = Lib\Delphi27. Ajuste UNIDAC abaixo.
REM ============================================================
setlocal enabledelayedexpansion

set "RSVARS=C:\Program Files (x86)\Embarcadero\Studio\21.0\bin\rsvars.bat"
set "UNIDAC_LIB=C:\componentes\UniDAC\Lib\Delphi27\Win32"
set "UNIDAC_RES=C:\componentes\UniDAC\Source"

set "ROOT=%~dp0"
set "M=%ROOT%modules"

call "%RSVARS%" >nul

set "NS=System;System.Win;Winapi;Data;Data.Win;Datasnap;Web;Soap;Xml;Xml.Win;Vcl;Vcl.Imaging"

REM --- search path: UniDAC + Horse + JOSE ---
set "U=%UNIDAC_LIB%"
set "U=!U!;%M%\horse\src;%M%\jhonson\src;%M%\horse-cors\src"
set "U=!U!;%M%\delphi-jose-jwt\Source\Common;%M%\delphi-jose-jwt\Source\JOSE"
set "U=!U!;%M%\gbswagger\Source\Core;%M%\gbswagger\Source\Horse;%M%\gbswagger\Source\Validator"
REM hashlib4pascal: todas as subpastas (recursivo)
for /r "%M%\hashlib4pascal\HashLib\src" %%D in (.) do set "U=!U!;%%~fD"

if not exist "%ROOT%Win32\Debug" mkdir "%ROOT%Win32\Debug"

cd /d "%ROOT%src"
dcc32.exe -B -NU"%ROOT%Win32\Debug" -NO"%ROOT%Win32\Debug" -E"%ROOT%Win32\Debug" ^
  -NS"%NS%" -U"%U%" -R"%UNIDAC_RES%" GourmetApi.dpr

echo.
echo EXIT=%ERRORLEVEL%
endlocal
