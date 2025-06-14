@echo off
title brave installer and debloater by sysnyxx
setlocal enabledelayedexpansion

:: installer
echo Installing Brave
powershell Invoke-WebRequest -Uri "https://referrals.brave.com/latest/BraveBrowserSetup-BRV010.exe" -OutFile "C:\Windows\Temp\brave.exe"
start /b /wait "" "C:\Windows\Temp\brave.exe" >nul 2>&1
del "C:\Windows\Temp\brave.exe"

:: close brave
taskkill /f /im brave.exe /t 
taskkill /f /IM BraveUpdate.exe /t
taskkill /f /IM brave_installer-x64.exe /t
taskkill /f /IM BraveCrashHandler.exe /t
taskkill /f /IM BraveCrashHandler64.exe /t
taskkill /f /IM BraveCrashHandlerArm64.exe /t
taskkill /f /IM BraveUpdateBroker.exe /t
taskkill /f /IM BraveUpdateCore.exe /t
taskkill /f /IM BraveUpdateOnDemand.exe /t
taskkill /f /IM BraveUpdateSetup.exe /t
taskkill /f /IM BraveUpdateComRegisterShell64 /t
taskkill /f /IM BraveUpdateComRegisterShellArm64 /t

:: del services
sc delete brave
sc delete bravem
sc delete BraveElevationService

:: debloater
echo deleting useless files
rmdir /s /q "C:\Program Files (x86)\BraveSoftware" >nul 2>&1
rmdir /s /q "%userprofile%\AppData\Local\BraveSoftware\Update" >nul 2>&1
rmdir /s /q "C:\Program Files\BraveSoftware\Brave-Browser\Application\SetupMetrics" >nul 2>&1
cd /d "C:\Program Files\BraveSoftware\Brave-Browser\Application\1*"
rmdir /s /q "Installer" >nul 2>&1
rmdir /s /q "BraveVpnWireguardService" >nul 2>&1
rmdir /s /q "Extensions" >nul 2>&1
rmdir /s /q "IwaKeyDistribution" >nul 2>&1
rmdir /s /q "PrivacySandboxAttestationsPreloaded" >nul 2>&1
rmdir /s /q "MEIPreload" >nul 2>&1
rmdir /s /q "C:\ProgramData\BraveSoftware" >nul 2>&1
cd /d "C:\Program Files\BraveSoftware\Brave-Browser\Application\1*"
del "notification_helper.exe" >nul 2>&1
del "eventlog_provider.dll" >nul 2>&1
del "chrome_pwa_launcher.exe" >nul 2>&1
del "brave_vpn_helper.exe" >nul 2>&1
del "elevation_service.exe" >nul 2>&1
del "vulkan-1.dll" >nul 2>&1
del "libEGL.dll" >nul 2>&1
del "libGLESv2.dll" >nul 2>&1
del "d3dcompiler_47.dll" >nul 2>&1
del "dxcompiler.dll" >nul 2>&1
del "dxil.dll" >nul 2>&1
del "chrome_100_percent.pak" >nul 2>&1
del "chrome_200_percent.pak" >nul 2>&1
del "brave_200_percent.pak" >nul 2>&1
del "brave_100_percent.pak" >nul 2>&1
cd /d "C:\Program Files\BraveSoftware\Brave-Browser\Application"
del "chrmstp.exe" /a /s >nul 2>&1

:: Locales
cd /d "C:\Program Files\BraveSoftware\Brave-Browser\Application\1*" >nul 2>&1
copy "Locales\en-US.pak" "C:\Program Files\BraveSoftware\Brave-Browser\Application" >nul 2>&1
rmdir /s /q "Locales" >nul 2>&1
mkdir "Locales" >nul 2>&1
move "C:\Program Files\BraveSoftware\Brave-Browser\Application\en-US.pak" "Locales" >nul 2>&1

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

echo done
pause
exit /b