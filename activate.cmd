@echo off

setlocal

set CMAKE_URL=https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-win64-x64.zip
set MINGW_URL=https://netcologne.dl.sourceforge.net/project/mingw-w64/Toolchains%%20targetting%%20Win64/Personal%%20Builds/mingw-builds/8.1.0/threads-posix/seh/x86_64-8.1.0-release-posix-seh-rt_v6-rev0.7z

rem **********************************************************************************
rem CMake
rem **********************************************************************************
if not exist tools\cmake powershell -command "Invoke-WebRequest -OutFile tmp.zip %CMAKE_URL%"^
    && 7za x tmp.zip -otools^
    && move tools\cmake* tools\cmake
del /F /Q tmp.zip >nul 2>&1

rem **********************************************************************************
rem MinGW
rem **********************************************************************************
if not exist tools\mingw powershell -command "Invoke-WebRequest -OutFile tmp.7z %MINGW_URL%"^
  && 7za x tmp.7z -otools^
  && move tools\mingw* tools\mingw
del /F /Q tmp.7z >nul 2>&1

endlocal

for %%i in ("%~dp0.") do @set SCRIPT_DIR=%%~fi
set PATH=%SCRIPT_DIR%\tools\7zip;%SCRIPT_DIR%\tools\cmake\bin;%SCRIPT_DIR%\tools\mingw\bin;%PATH%
