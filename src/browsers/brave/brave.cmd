@echo off
title brave installer and debloater by sysnyxx
setlocal enabledelayedexpansion

:: installer
echo downloading brave
powershell Invoke-WebRequest -Uri "https://github.com/brave/brave-browser/releases/download/v1.69.162/BraveBrowserStandaloneSilentSetup.exe" -OutFile "C:\Windows\Temp\brave.exe"
start /b /wait "" "C:\Windows\Temp\brave.exe" >nul 2>&1
del "C:\Windows\Temp\brave.exe"

:: close brave
taskkill /IM BraveUpdate.exe /F
taskkill /IM brave_installer-x64.exe /F
taskkill /IM BraveCrashHandler.exe /F
taskkill /IM BraveCrashHandler64.exe /F
taskkill /IM BraveCrashHandlerArm64.exe /F
taskkill /IM BraveUpdateBroker.exe /F
taskkill /IM BraveUpdateCore.exe /F
taskkill /IM BraveUpdateOnDemand.exe /F
taskkill /IM BraveUpdateSetup.exe /F
taskkill /IM BraveUpdateComRegisterShell64 /F
taskkill /IM BraveUpdateComRegisterShellArm64 /F

:: del services
sc delete brave
sc delete bravem
sc delete BraveElevationService

:: debloater
echo deleting useless files
rmdir /S /Q "C:\Program Files (x86)\BraveSoftware\Update"
rmdir /S /Q "C:\Program Files (x86)\BraveSoftware\CrashReports"
rmdir /S /Q "C:\Program Files (x86)\BraveSoftware\Temp"
rmdir "C:\Program Files (x86)\BraveSoftware" /s /q
rmdir /S /Q "%userprofile%\AppData\Local\BraveSoftware\Update"
del "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\notification_helper.exe" >nul 2>&1
rmdir /S /Q "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\Installer"
del "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\eventlog_provider.dll"
del "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\chrome_pwa_launcher.exe"
cd /d %userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application >nul 2>&1
del chrmstp.exe /a /s
rmdir "C:\ProgramData\BraveSoftware" /s /q
rmdir /s /q "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\SetupMetrics" >nul 2>&1

cd /d %userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162 >nul 2>&1
copy "Locales\en-US.pak" "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application" >nul 2>&1
rmdir /s /q "Locales" >nul 2>&1
mkdir "Locales" >nul 2>&1
move "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\en-US.pak" "Locales" >nul 2>&1

del "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\brave_vpn_helper.exe"
rmdir /S /Q "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\BraveVpnWireguardService"

del "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\elevation_service.exe"

rmdir /S /Q "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\Application\128.1.69.162\Extensions"

:: cleaning reg
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore{FE515A4B-9531-42A3-9ABB-4CEC234762CD}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA{981B6403-1813-4DE8-9D2D-F73F2DA25E50}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{AFE6A462-C574-4B8A-AF43-4CC60DF4563B}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BraveVpnWireguardService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "BraveVpnWireguardService" /f

schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{2320C90E-9617-4C25-88E0-CC10B8F3B6BB}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{FD1FD78D-BD51-4A16-9F47-EE6518C2D038}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{1B4ECC99-A065-4BA8-B4B5-6828D11834AC}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{C2741D3F-2DB1-4D3D-9679-8AF7E44826F3}" /f
cls

:: flags
echo downloading flags
echo.
powershell Invoke-WebRequest -Uri "https://github.com/5Noxi/Files/releases/download/Brave-Files/Noverse_Brave-Flags.txt" -OutFile "%USERPROFILE%\Documents\brave-flags-noverse.txt"
echo se quiser as flags estao em %USERPROFILE%\Documents\brave-flags-noverse.txt
echo the flags are located in %USERPROFILE%\Documents\brave-flags-noverse.txt
echo brave://flags
echo.

echo done
pause
exit /b