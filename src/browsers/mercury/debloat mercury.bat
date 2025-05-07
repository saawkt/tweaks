@echo off
del "C:\Program Files\Mercury\crashreporter.exe" /f /q >nul 2>&1
del "C:\Program Files\Mercury\crashreporter.ini" /f /q >nul 2>&1
del "C:\Program Files\Mercury\maintenanceservice.exe" /f /q >nul 2>&1
del "C:\Program Files\Mercury\maintenanceservice_installer.exe" /f /q >nul 2>&1
del "C:\Program Files\Mercury\minidump-analyzer.exe" /f /q >nul 2>&1
del "C:\Program Files\Mercury\pingsender.exe" /f /q >nul 2>&1
del "C:\Program Files\Mercury\updater.exe" /f /q >nul 2>&1
cd /d "C:\Program Files\Mercury">nul 2>&1
del /f crash*.* >nul 2>&1
del /f maintenance*.* >nul 2>&1
del /f install.log >nul 2>&1
del /f minidump*.* >nul 2>&1