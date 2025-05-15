@echo off
setlocal enabledelayedexpansion
:: all from catgamerop

echo     Type Your Fortnite Path, example: C:\Program Files\Epic Games\Fortnite

:start
set /p folderPath=

if exist "%folderPath%" (

cd /D "%folderPath%\FortniteGame\Binaries\Win64" >NUL 2>&1
@REM rmdir /s /q D3D12 >NUL 2>&1
rmdir /s /q DML >NUL 2>&1
del /f ap* >NUL 2>&1
del /f concrt140 >NUL 2>&1
del /f dbghelp >NUL 2>&1
del /f msvcp* >NUL 2>&1
@REM del /f OpenImageDenoise >NUL 2>&1
del /f tbbmalloc >NUL 2>&1
del /f ucrtbase >NUL 2>&1
del /f vc* >NUL 2>&1
del /f OpenImage* >NUL 2>&1
del /f boost_atomic-mt-x64.dll, boost_chrono-mt-x64.dll, boost_iostreams-mt-x64.dll, boost_python311-mt-x64.dll, boost_regex-mt-x64.dll >NUL 2>&1
@REM del /f boost* >NUL 2>&1

cd /D "%folderPath%\FortniteGame\Binaries\ThirdParty" >NUL 2>&1
rmdir /s /q SpeechGraphics >NUL 2>&1
rmdir /s /q NVIDIA\NGX >NUL 2>&1

cd /D "%folderPath%\FortniteGame\Content" >NUL 2>&1
rmdir /s /q Legal >NUL 2>&1
rmdir /s /q Movies >NUL 2>&1
rmdir /s /q Splash >NUL 2>&1

cd /D "%folderPath%\Engine" >NUL 2>&1
rmdir /s /q Programs >NUL 2>&1
rmdir /s /q Content >NUL 2>&1
rmdir /s /q Plugins >NUL 2>&1

cd /D "%folderPath%\Engine\Binaries" >NUL 2>&1
rmdir /s /q Win64 >NUL 2>&1
rmdir /s /q ThirdParty\CEF3 >NUL 2>&1
rmdir /s /q ThirdParty\DbgHelp >NUL 2>&1
rmdir /s /q ThirdParty\NVIDIA >NUL 2>&1
rmdir /s /q ThirdParty\PhysX3 >NUL 2>&1
) else (
    echo The folder path doesn't exist
    goto start
)
cls
echo done
timeout /t 3
exit /b