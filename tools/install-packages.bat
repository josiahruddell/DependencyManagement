@echo off
set SCRIPT_DIR=%~dp0
set NUGET=%SCRIPT_DIR%..\.nuget\NuGet.exe
set PACKAGES=%SCRIPT_DIR%..\src\packages.config
set DESTINATION=%SCRIPT_DIR%..\lib\
set LOCALCACHE=C:\Packages\
set CORPCACHE=C:\temp\nuget\alkami
set DEFAULT_FEED="https://go.microsoft.com/fwlink/?LinkID=206669"
 
echo [Installing NuGet Packages]
if NOT EXIST %DESTINATION% mkdir %DESTINATION%
 
echo.
echo [Installing From Local Machine Cache]
%NUGET% install %PACKAGES% -o %DESTINATION% -Source %LOCALCACHE%
 
echo.
echo [Installing From Corporate Cache]
%NUGET% install %PACKAGES% -o %DESTINATION% -Source %CORPCACHE%
 
echo.
echo [Installing From Internet]
%NUGET% install %PACKAGES% -o %DESTINATION%
 
echo.
echo [Copying To Local Machine Cache]
xcopy /y /d /s %DESTINATION%*.nupkg %LOCALCACHE%
 
echo.
echo Done