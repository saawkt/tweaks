@echo off
setlocal enabledelayedexpansion
title ungoogled chromium installer, debloater and cleaner

echo.
echo downloading ungoogled chromium
:: installer
powershell Invoke-WebRequest -Uri "https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/133.0.6943.98-1.1/ungoogled-chromium_133.0.6943.98-1.1_installer_x64.exe" -OutFile "C:\Windows\Temp\ungoogled.exe"
start /b /wait "" "C:\Windows\Temp\ungoogled.exe" >nul 2>&1
cls

echo.
echo deleting useless files
:: debloater
set chromep=%localappdata%\Chromium\Application
del "%chromep%\133.0.6943.98\chrome_wer.dll" >nul 2>&1
del "%chromep%\133.0.6943.98\notification_helper.exe" >nul 2>&1
del "%chromep%\133.0.6943.98\chrome_pwa_launcher.exe" >nul 2>&1
del "%chromep%\133.0.6943.98\d3d*.*" >nul 2>&1
del "%chromep%\133.0.6943.98\vk*.*" >nul 2>&1
del "%chromep%\133.0.6943.98\vulkan*.*" >nul 2>&1
rmdir /s /q "%chromep%\133.0.6943.98\Installer" >nul 2>&1
del "%localappdata%\Chromium\Application\debug.log" >nul 2>&1
copy "%chromep%\133.0.6943.98\locales\en-US.pak" "%chromep%\133.0.6943.98" >nul 2>&1
rmdir /s /q "%chromep%\133.0.6943.98\locales" >nul 2>&1
mkdir "%chromep%\133.0.6943.98\locales" >nul 2>&1
move "%chromep%\133.0.6943.98\en-US.pak" "%chromep%\133.0.6943.98\locales" >nul 2>&1
cls

:: cleaner
set removef=GrShaderCache ShaderCache SSLerrorAssistant GraphiteDawnCache
for %%f in (%removef%) do (
    if exist "%localappdata%\Chromium\User Data\%%f" (
        rmdir /s /q "%localappdata%\Chromium\User Data\%%f"
    )
)
set removed=blob_storage BudgetDatabase Cache chrome_cart_db "Code Cache" commerce_subscription_db DawnGraphiteCache DawnWebGPUCache discounts_db GPUCache JumpListIconsMostVisited JumpListIconsRecentClosed parcel_tracking_db PersistentOriginTrials "Session Storage" shared_proto_db VideoDecodeStats
for %%d in (%removed%) do (
    set fullp=%localappdata%\Chromium\User Data\Default\%%d
    if exist "!fullp!" (
        rmdir /s /q "!fullp!"
    )
)
cls

:: deleting the installer
del C:\Windows\Temp\ungoogled.exe /a /s >nul 2>&1

echo done
pause
exit /b