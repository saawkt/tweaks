@echo off
for %%i in (Opera) do (for /f "tokens=1 delims=," %%a in ('schtasks /query /fo csv ^| findstr /v "TaskName" ^| findstr "%%~i" ^| findstr /v "Microsoft\\Windows"') do (schtasks /change /tn %%a /disable))
cd /d "%HOMEPATH%\AppData\Local\Programs\Opera GX"
dir opera_crashreporter.exe /a /b /s
del opera_crashreporter.exe /a /s
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Opera GX Stable" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Opera GX Stable" /f
taskkill /f /im browser_assistant.exe
rmdir /s /q "%HOMEPATH%\AppData\Local\Programs\Opera GX\assistant"
pause