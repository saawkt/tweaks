@echo off
TITLE Discord Debloat by CatGamerOP, modded by sysnyxx
echo Starting...
chcp 65001>nul
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
)
powershell -Command "Invoke-WebRequest-OutFile" > nul 2> nul
cd /d "!appdata!"
set /a startver=0
echo:
echo:
for /f "delims=" %%a in ('dir /b "Discord*"') do (
	set /a startver+=1
	set "version[!startver!]=%%a"
	echo                             !ESC![38;2;114;137;218m[!ESC![0m !startver! !ESC![38;2;114;137;218m]!ESC![0m %%a
)

:menu
cls
call :logo
echo                                                  Programmed by !ESC![38;2;175;134;255mTeam K? 
echo.
echo.
echo                                            !ESC![38;2;175;134;255m[!ESC![0m 1 !ESC![38;2;175;134;255m]!ESC![0m Debloat - Sem Supressão de Ruído   
echo. 
echo                                            !ESC![38;2;175;134;255m[!ESC![0m 2 !ESC![38;2;175;134;255m]!ESC![0m Debloat - Com Supressão de Ruído
echo.
echo.
set /p input=""
if "%input%"=="1" (
    goto debloat2
) else if "%input%"=="2" (
    goto debloat
) else (
    echo invalid choice. try again.
    pause
    goto menu
)

:debloat2
TASKKILL /T /F /IM Discord.exe >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_krisp-1") do rmdir /s /q "%%~a" >nul 2>&1

:debloat
:: Needed for Update.exe
TASKKILL /T /F /IM Discord.exe >nul 2>&1
%LOCALAPPDATA%\Discord\Update.exe >nul 2>&1
rmdir /s /q "%LOCALAPPDATA%\Discord\Packages" >nul 2>&1

del /f /q %LOCALAPPDATA%\Discord\Discord_updater*, %LOCALAPPDATA%\Discord\SquirrelSetup* >nul 2>&1

:: Create a bat file to start Discord with parameters
cd /d %LOCALAPPDATA%\Discord
@echo off
echo cd /d "" "%LOCALAPPDATA%\Discord\app*" > StartDiscord.bat
echo start "" "Discord.exe" ) >> StartDiscord.bat

cd /d %LOCALAPPDATA%\Discord >nul 2>&1
del /f /q Update.exe >nul 2>&1

cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
del /f /q app.ico >nul 2>&1
del /f /q chrome*.pak >nul 2>&1
del /f /q debug.log >nul 2>&1
rmdir /s /q swiftshader >nul 2>&1
del /f /q %localappdata%\Discord\SquirrelSetup.log >nul 2>&1
del /f /q %localappdata%\Discord\Discord_updater_rCURRENT.log >nul 2>&1
rmdir /s /q "%HOMEPATH%\appdata\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc"
rmdir /s /q "%localappdata%\Discord\download"
del discord_game_sdk_x64.dll /a /s
del discord_game_sdk_x86.dll /a /s
del /q "%localappdata%\Discord\app-*\Microsoft.Gaming.XboxApp.XboxNetwork.winmd" >nul 2>&1
del /q "%localappdata%\Discord\app-*\discord_wer.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\vk_swiftshader.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\gpu_encoder_helper.exe" >nul 2>&1

:: Modules Cleanup
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_cloudsync-1" "discord_dispatch-1" "discord_game_utils-1" "discord_hook-1" "discord_media-1" "discord_overlay2-1" "discord_rpc-1" "discord_spellcheck-1" "discord_zstd-1") do rmdir /s /q "%%~a" >nul 2>&1

:: Languages Cleanup
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
copy "locales\en-US.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
copy "locales\pt-BR.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
rmdir /s /q "locales" >nul 2>&1
mkdir "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\en-US.pak" "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\pt-BR.pak" "locales" >nul 2>&1

:: others
del /q "%localappdata%\Discord\packages\Discord-*.nupkg"
del /s /q "%localappdata%\Discord\download\*.*"
del /s /q "%appdata%\discord\logs\*.*"
del /s /q "%appdata%\discord\crash_reports\*.*"
del /s /q "%appdata%\discord\Cache\*.*"
del /s /q "%appdata%\discord\Cache\Cache_Data\*.*"
del /s /q "%appdata%\discord\Code Cache\js\*.*"
del /s /q "%appdata%\discord\Code Cache\wasm\*.*"
del /s /q "%appdata%\discord\GPUCache\*.*"
del /s /q "%appdata%\discord\Sessions\*.*"
reg delete "HKEY_CURRENT_USER\SOFTWARE\Discord\Modules" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v Discord /f
reg delete "HKEY_CURRENT_USER\Software\Discord\HardwareCapture" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\ErrorReporting" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\GameIntegration" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\Games" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\Debug" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Discord\Update" /f

:: OpenAsar
echo downloading OpenAsar
powershell Invoke-WebRequest -Uri "https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar" -OutFile "C:\Windows\Temp\app.asar"
cd /d %LOCALAPPDATA%\Discord\app*\resources >nul 2>&1
del /f /q app.asar >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
move "C:\Windows\Temp\app.asar" "resources" >nul 2>&1
cls

:: config discord + openasar
:: curl -g -k -L -# -o "C:\Windows\Temp\settings.json" "https://cdn.discordapp.com/attachments/1342571971627585606/1342572035284406282/settings.json?ex=67ba1f24&is=67b8cda4&hm=635fad0d392e5281b3433a2b25621e3545e08917335e9094df06385603e6f785&" >NUL 2>&1
:: cd /d %appdata%\discord >nul 2>&1
:: del /f /q settings.json >nul 2>&1
:: move "C:\Windows\Temp\settings.json" "" >nul 2>&1

:: config discord + openasar local
(
  echo {
  echo   "openasar": {
  echo     "setup": true,
  echo     "quickstart": true,
  echo     "cmdPreset": "battery"
  echo   },
  echo   "enableHardwareAcceleration": false,
  echo   "OPEN_ON_STARTUP": false
  echo }
) > "%appdata%\discord\settings.json"

:: Link to desktop
mklink "Discord Debloated" "%LOCALAPPDATA%\Discord\StartDiscord.bat" >nul 2>&1
move "Discord Debloated" %HOMEPATH%\Desktop >nul 2>&1

echo.
echo.
echo If Discord does not start in the future, reinstall it from the internet.

timeout 3 >nul 2>&1
exit /b

:logo
:logo
echo.
echo.
echo.
for %%a in (
"        ▓█████▄  ██▓  ██████  ▄████▄   ▒█████   ██▀███  ▓█████▄  "
"        ▒██▀ ██▌▓██▒▒██    ░▒██▀ ▀█  ▒██▒  ██▒▓██ ░██▒▒  ██▀ ██▌ "
"        ░██   █▌▒██▒░ ▓██▄   ░▓█    ▄ ▒██░  ██▒▓██ ░▄█ ░░██   █▌ "
"        ░▓█▄  █▌░██░  ▒   ██▒▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄  ░▓█▄  █▌ "
"        ░▒████▓ ░██░▒██████▒▒▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒░▒████▓  "
"        ▒▒▓  ▒ ░▓  ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ▒▒▓  ▒   "
"        ░ ▒  ▒  ▒ ░░ ░▒  ░ ░  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░ ░ ▒  ▒   "
"        ░ ░  ░  ▒ ░░  ░  ░  ░        ░ ░ ░ ▒    ░░   ░  ░ ░  ░   "
"        ░     ░        ░  ░ ░          ░ ░     ░        ░        "
"        ░                   ░                           ░        "
""
) do echo                           !ESC![38;2;175;134;255m%%~a!ESC![0m
echo.