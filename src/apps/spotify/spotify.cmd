@echo off
title SPOTIFY DEBLOATER BY CATGAMEROP, modded by sysnyxx
echo SPOTIFY DEBLOATER BY CATGAMEROP, modded by sysnyxx

taskkill /f /im Spotify.exe >NUL 2>&1
del /f /s /q "%appdata%\Spotify\SpotifyMigrator.exe" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\SpotifyStartupTask.exe" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concert.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concerts.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Error.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Legacy-lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
Reg.exe DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Spotify" /f >NUL 2>&1

rmdir "%localappdata%\Spotify\Update" >NUL 2>&1
mkdir "%localappdata%\Spotify\Update" >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":D >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":R >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":W >NUL 2>&1

cd /d "%APPDATA%\Spotify" >NUL 2>&1
copy "%APPDATA%\Spotify\locales\en-US.pak" "%APPDATA%\Spotify" >NUL 2>&1
rmdir "%APPDATA%\Spotify\locales" /s /q >NUL 2>&1
mkdir "%APPDATA%\Spotify\locales" >NUL 2>&1
move "%APPDATA%\Spotify\en-US.pak" "%APPDATA%\Spotify\locales" >NUL 2>&1

del /f chrome_1*.*, chrome_2*.*, crash*.*, SpotifyMigrator.exe, SpotifyStartupTask.exe, d3d*.*, debug.log, libegl.dll, libgle*.*, snapshot*.*, vk*.*, vulkan*.* >NUL 2>&1
cls

echo done
pause
exit /b