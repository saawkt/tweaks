@echo off
del "C:\Program Files\LibreWolf\pingsender.exe" /f /q >nul 2>&1
cd /d "C:\Program Files\LibreWolf">nul 2>&1
del /f crash*.* >nul 2>&1
del /f maintenance*.* >nul 2>&1
del /f install.log >nul 2>&1
del /f minidump*.* >nul 2>&1
exit /b 