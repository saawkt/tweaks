@echo off
@echo off
taskkill /f /im "GoogleUpdate.exe" >nul 2>&1
taskkill /f /im "GoogleUpdateSetup.exe" >nul 2>&1
taskkill /f /im "GoogleCrashHandler.exe" >nul 2>&1
taskkill /f /im "GoogleCrashHandler64.exe" >nul 2>&1
taskkill /f /im "GoogleUpdateBroker.exe" >nul 2>&1
taskkill /f /im "GoogleUpdateCore.exe" >nul 2>&1
taskkill /f /im "GoogleUpdateOnDemand.exe" >nul 2>&1
taskkill /f /im "GoogleUpdateComRegisterShell64.exe" >nul 2>&1
sc delete gupdate >nul 2>&1
sc delete gupdatem >nul 2>&1
sc delete googlechromeelevationservice >nul 2>&1
rmdir /s /q "C:\Program Files (x86)\Google" >nul 2>&1
cd /d C:\Program Files\Google\Chrome\Application\1*
rmdir /s /q "Installer" >nul 2>&1
del "chrome_wer.dll" >nul 2>&1
del "notification_helper.exe" >nul 2>&1
del "chrome_pwa_launcher.exe" >nul 2>&1
del "d3d*.*" >nul 2>&1
del "vk*.*" >nul 2>&1
del "vulkan*.*" >nul 2>&1
cd /d Locales
copy "en-US.pak" "C:\" >nul 2>&1
copy "pt-BR.pak" "C:\" >nul 2>&1
cd /d C:\Program Files\Google\Chrome\Application\1*
rmdir /s /q "Locales" >nul 2>&1
mkdir "Locales" >nul 2>&1
move "C:\en-US.pak" "Locales" >nul 2>&1
move "C:\pt-BR.pak" "Locales" >nul 2>&1
schtasks /delete /f /tn GoogleUpdateTaskMachineUA{179D918B-9BE9-4D1B-9FA2-D0B2D2491030} >nul 2>&1
schtasks /delete /f /tn GoogleUpdateTaskMachineCore{A0256FF4-D45E-420B-90B3-7D05AF116614} >nul 2>&1
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" /f >nul 2>&1
exit