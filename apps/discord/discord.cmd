@echo off
TITLE Discord Debloat by CatGamerOP, modded by sysnyxx
echo Discord Debloater

:: Needed for Update.exe
%LOCALAPPDATA%\Discord\Update.exe >nul 2>&1
rmdir /s /q "%LOCALAPPDATA%\Discord\Packages" >nul 2>&1
TASKKILL /T /F /IM Discord.exe >nul 2>&1

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

:: Modules Cleanup
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_overlay2-2" "discord_overlay2-1" "discord_overlay-1" "discord_overlay2" "discord_desktop_overlay-1" "discord_cloudsync-1" "discord_dispatch-1" "discord_erlpack-1" "discord_game_utils-1" "discord_game_utils-2" "discord_media-1" "discord_media-2" "discord_spellcheck-1" "discord_hook-1" "discord_hook-2") do rmdir /s /q "%%~a" >nul 2>&1

:: Languages Cleanup
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
copy "locales\en-US.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
rmdir /s /q "locales" >nul 2>&1
mkdir "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\en-US.pak" "locales" >nul 2>&1

:: others
cd /d %appdata%\discord >nul 2>&1
rmdir /s /q "Cache\Cache_Data" >nul 2>&1
rmdir /s /q "Code Cache" >nul 2>&1
rmdir /s /q "Crashpad" >nul 2>&1
rmdir /s /q "GPUCache" >nul 2>&1
rmdir /s /q "shared_proto_db" >nul 2>&1
mkdir "shared_proto_db" >nul 2>&1
mkdir "Cache\Cache_Data" >nul 2>&1
mkdir "Crashpad" >nul 2>&1
mkdir "GPUCache" >nul 2>&1
mkdir "Code Cache" >nul 2>&1

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