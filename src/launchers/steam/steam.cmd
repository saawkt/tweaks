@echo off
setlocal enabledelayedexpansion

:: close steam
taskkill /f /im steam* >nul 2>&1

:: reg
reg add "HKCU\SOFTWARE\Valve\Steam" /v "SettingPriority" /t REG_SZ /d "low" /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "SmoothScrollWebViews" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "DWriteEnable" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "StartupMode" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "H264HWAccel" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "DPIScaling" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "GPUAccelWebViews" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Valve\Steam" /v "BigPictureInForeground" /t REG_DWORD /d 0 /f >nul
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Steam" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SteamService.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SteamService.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SteamService.exe\PerfOptions" /v "PagePriority" /t REG_DWORD /d 2 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebmaner.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebmaner.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebmaner.exe\PerfOptions" /v "PagePriority" /t REG_DWORD /d 2 /f >nul

cls
echo.
echo Downloading umpdc.dll...
timeout /t 1 >nul
set "ssteam=%ProgramFiles(x86)%\Steam"
set "tf=%temp%\umpdc.dll"
powershell -Command "Invoke-WebRequest 'https://github.com/Aetopia/NoSteamWebHelper/releases/download/v5.0.1/umpdc.dll' -OutFile '%tf%'"
move /y "%tf%" "%ssteam%" >nul

:: debloat
set "ssteam=%ProgramFiles(x86)%\Steam"
if exist "%ssteam%\appcache\httpcache" rmdir /s /q "%ssteam%\appcache\httpcache"
if exist "%ssteam%\logs" rmdir /s /q "%ssteam%\logs"
if exist "%ssteam%\dumps" rmdir /s /q "%ssteam%\dumps"
if exist "%ssteam%\appcache\cache" rmdir /s /q "%ssteam%\appcache\cache"
if exist "%ssteam%\steamapps\downloading" rmdir /s /q "%ssteam%\steamapps\downloading"
if exist "%ssteam%\steamapps\common\Steamworks Shared\_CommonRedist\DirectX\Jun2010" rmdir /s /q "%ssteam%\steamapps\common\Steamworks Shared\_CommonRedist\DirectX\Jun2010"
if exist "%ssteam%\steamapps\common\Steamworks Shared\_CommonRedist\vcredist\2019" rmdir /s /q "%ssteam%\steamapps\common\Steamworks Shared\_CommonRedist\vcredist\2019"

set "ssteam=%ProgramFiles(x86)%\Steam"
set "content=start "" "%ssteam%\steam.exe" -silent"
set "desktop=%USERPROFILE%\Desktop"
set "batchfp=%desktop%\Steam.bat"
echo %content% > "%batchfp%"
echo.
echo Successfully created at %batchfp%
timeout /t 2 >nul

echo done
pause
exit /b