@echo off
del "C:\Program Files\Mozilla Firefox\crashreporter.exe" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\crashreporter.ini" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\maintenanceservice.exe" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\maintenanceservice_installer.exe" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\minidump-analyzer.exe" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\pingsender.exe" /f /q >nul 2>&1
del "C:\Program Files\Mozilla Firefox\updater.exe" /f /q >nul 2>&1
cd /d "C:\Program Files\Mozilla Firefox">nul 2>&1
del /f crash*.* >nul 2>&1
del /f maintenance*.* >nul 2>&1
del /f install.log >nul 2>&1
del /f minidump*.* >nul 2>&1