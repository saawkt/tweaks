@echo off
TITLE nvidia tweaker by sysnyxx

:: download nvpi
powershell Invoke-WebRequest -Uri "https://github.com/wasynxyxxk/files/raw/refs/heads/main/nvidia/nvidiaProfileInspector.exe" -OutFile "C:\Windows\Temp\npi.exe"
cls

:menu
cls
echo Choose an option:
echo 1 - Basics Tweaks
echo 2 - Advanced Tweaks
echo 3 - Basics NIPS
echo 4 - Advanced NIPS
set /p input="Enter your choice (1 or 2): "

if "%input%"=="1" (
    goto btweak
) else if "%input%"=="2" (
    goto adtweak
) else if "%input%"=="3" (
    goto basicnip
) else if "%input%"=="4" (
    goto adprofiles
) else (
    echo invalid choice. try again.
    pause
    goto menu
)

:btweak
:: download reg
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/reg_nvidia.reg" -OutFile "C:\Windows\Temp\reg.reg"
cls

:: tweaks
regedit /s C:\Windows\Temp\reg.reg
cd /d C:\Windows\Temp >nul 2>&1
del /f /q reg.reg >nul 2>&1

for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f 
)
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f 
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
		for /f %%i in ('echo %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f > nul 2>&1
                   )
                )
             )
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d "0" /f
cls
echo done
timeout /t 3 /nobreak
cls
goto menu

:adtweak
:: download reg
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/reg_nvidia.reg" -OutFile "C:\Windows\Temp\reg.reg"
cls

:: tweaks
regedit /s C:\Windows\Temp\reg.reg
cd /d C:\Windows\Temp >nul 2>&1
del /f /q reg.reg >nul 2>&1

for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f 
)
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f 
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
		for /f %%i in ('echo %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f > nul 2>&1
                   )
                )
             )
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d "0" /f
cls

:: From catgamerop
sc config NVDisplay.ContainerLocalSystem start= disabled >NUL 2>&1
sc stop NVDisplay.ContainerLocalSystem >NUL 2>&1
cls
echo                           Do you have Geforce Experience installed? (y/n)
:choice

set /p userChoice=
if /i "%userChoice%"=="n" (
    rmdir /s /q "C:\Program Files\NVIDIA Corporation">nul 2>&1
    cd /d "C:\Windows\System32\DriverStore\FileRepository\nv_*" >nul 2>&1
    del /f nvFBC*.dll, nvIFR*.dll >nul 2>&1

    cd /d ".\Display.NvContainer\plugins\LocalSystem" >nul 2>&1
    takeown /r /d Y /f * >nul 2>&1
    icacls * /grant "%USERNAME%":F >nul 2>&1
    @REM del /f NvcDispWatchdog.dll >nul 2>&1 maybe breaks control panel

    cd /d "../Session" >nul 2>&1
    takeown /f * /r /d Y >nul 2>&1
    icacls * /grant "%USERNAME%":F >nul 2>&1
    del /f _NvGSTPlugin.dll >nul 2>&1

    cd /d "C:\Windows\System32" >nul 2>&1
    takeown /r /d Y /f "nv*.*" >nul 2>&1
    icacls "nv*.*" /grant "%USERNAME%":F /t >nul 2>&1
    del /f NvFBC64.dll, NvIFR64.dll >nul 2>&1

    cd /d "C:\Windows\SysWOW64" >nul 2>&1
    takeown /r /d Y /f "nv*.*" >nul 2>&1
    del /f NvFBC.dll, NvIFR.dll >nul 2>&1
    echo                                    Removing GeForce components.
    goto start
) else if /i "%userChoice%"=="y" (
    echo                                    Skipping GeForce components.
    goto start
) else (
    echo Invalid choice. Please type 'y' or 'n'.
    goto choice
)

:start
rmdir /s /q "C:\Windows\System32\drivers\NVIDIA Corporation" >nul 2>&1
cd /d "C:\Windows\System32\DriverStore\FileRepository\" >nul 2>&1
dir NvTelemetry64.dll /a /b /s >nul 2>&1
del NvTelemetry64.dll /a /s >nul 2>&1
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup\SendTelemetryData" /ve /t REG_DWORD /d "0" /f >nul 2>&1

cd /d "C:\Windows\System32\DriverStore\FileRepository\nv_*" >nul 2>&1
takeown /r /d Y /f * >nul 2>&1
takeown /f NVWMI /R /D Y >nul 2>&1
icacls "NVWMI" /grant "%USERDOMAIN%\%USERNAME%":F /t >nul 2>&1
rmdir /s /q NVWMI >nul 2>&1

takeown /f NvCamera /R /D Y >nul 2>&1
icacls "NvCamera" /grant "%USERDOMAIN%\%USERNAME%":F /t >nul 2>&1
rmdir /s /q NvCamera >nul 2>&1
reg delete "HKLM\System\ControlSet001\Services\nvlddmkm\NvCamera" /f >nul 2>&1

icacls * /grant "%USERDOMAIN%\%USERNAME%":(F) /t >nul 2>&1
del /f "NvTelemetry64.dll" >nul 2>&1

del /f nvptxJitCompiler32.dll, nvptxJitCompiler64.dll >nul 2>&1
del /f nvsmartmax*.*,  nvinfo.pb >nul 2>&1
del /f nvIccAdvancedColorIdentity.icm, nvEncMFT*.dll, nvDevMFT*.dll >nul 2>&1

cd /d "./Display.NvContainer" >nul 2>&1
takeown /f * /R /D Y >nul 2>&1
icacls * /grant "%USERNAME%":F >nul 2>&1
del /f "nvtopps.db3" >nul 2>&1

cd /d "./plugins/LocalSystem/" >nul 2>&1
takeown /f _DisplayDriverR*.dll /R /D Y >nul 2>&1
icacls "_DisplayDriverRAS.dll" /grant "%USERNAME%":F >nul 2>&1
del /f _DisplayDriverRAS.dll >nul 2>&1
:: del /f _NvMsgBusBroadcast.dll >nul 2>&1
del /f _nvtopps.dll >nul 2>&1

cd /d "../Session" >nul 2>&1
takeown /f * /R /D Y >nul 2>&1
icacls * /grant "%USERNAME%":F >nul 2>&1
del /f nvprofileupdaterplugin.dll >nul 2>&1

cd /d "C:\Windows\System32" >nul 2>&1
del /f nvinfo.pb >nul 2>&1
rmdir /s /q lxss >nul 2>&1
del MCU.exe, nvcudadebugger.dll, nvdebugdump.exe /f >nul 2>&1

sc config NVDisplay.ContainerLocalSystem start= auto >NUL 2>&1
sc start NVDisplay.ContainerLocalSystem >NUL 2>&1

echo done
timeout /t 3 /nobreak
cls
goto menu


:basicnip
cls
echo Choose an option:
echo 1 - Basic Profile (Recommended)
echo 2 - Fps Average 
echo 3 - Menu
set /p input="Enter your choice (1 or 2): "

if "%input%"=="1" (
    goto basic
) else if "%input%"=="2" (
    goto fps
) else if "%input%"=="3" (
    goto Menu
) else (
    echo invalid choice. try again.
    pause
    goto basicnip
)

:basic
cls
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/basic.nip" -OutFile "C:\Windows\Temp\basic.nip"
"C:\Windows\Temp\npi.exe" "C:\Windows\Temp\basic.nip" >nul 2>&1
cd /d C:\Windows\Temp >nul 2>&1
del /f /q npi.exe >nul 2>&1
del /f /q basic.nip >nul 2>&1
echo done
timeout /t 2 /nobreak >NUL 2>&1
exit /b

:fps
cls
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/fps.nip" -OutFile "C:\Windows\Temp\fps.nip"
"C:\Windows\Temp\npi.exe" "C:\Windows\Temp\fps.nip" >nul 2>&1
cd /d C:\Windows\Temp >nul 2>&1
del /f /q npi.exe >nul 2>&1
del /f /q fps.nip >nul 2>&1
echo done
timeout /t 2 /nobreak >NUL 2>&1
exit /b

:adprofiles
cls
echo these profiles are still being tested, they may decrease the performance of your GPU and not work with all games
echo. 
echo Choose an option:
echo 1 - Advanced
echo 2 - Latency 
echo 3 - Lawliet's custom
echo 4 - Menu
set /p input="Enter your choice (1 or 2): "

if "%input%"=="1" (
    goto advanced
) else if "%input%"=="2" (
    goto latency
) else if "%input%"=="3" (
    goto lawliet
) else if "%input%"=="4" (
    goto menu
) else (
    echo invalid choice. try again.
    pause
    goto adprofiles
)

:latency
cls
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/latency.nip" -OutFile "C:\Windows\Temp\latency.nip"
"C:\Windows\Temp\npi.exe" "C:\Windows\Temp\latency.nip" >nul 2>&1
cd /d C:\Windows\Temp >nul 2>&1
del /f /q npi.exe >nul 2>&1
del /f /q latency.nip >nul 2>&1
echo done
timeout /t 2 /nobreak >NUL 2>&1
exit /b

:advanced
cls
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/advanced.nip" -OutFile "C:\Windows\Temp\advanced.nip"
"C:\Windows\Temp\npi.exe" "C:\Windows\Temp\advanced.nip" >nul 2>&1
cd /d C:\Windows\Temp >nul 2>&1
del /f /q npi.exe >nul 2>&1
del /f /q advanced.nip >nul 2>&1
echo done
timeout /t 2 /nobreak >NUL 2>&1
exit /b

:lawliet
cls
powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/nvidia/lawliet.nip" -OutFile "C:\Windows\Temp\lawliet.nip"
"C:\Windows\Temp\npi.exe" "C:\Windows\Temp\lawliet.nip" >nul 2>&1
cd /d C:\Windows\Temp >nul 2>&1
del /f /q npi.exe >nul 2>&1
del /f /q lawliet.nip >nul 2>&1
echo done
timeout /t 2 /nobreak >NUL 2>&1
exit /b



