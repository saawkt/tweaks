@echo off
set "folder=%appdata%\obs-studio\basic\profiles\Default @Matishzz"
set "Basic=%folder%\basic.ini"

md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=Default @Matishzz>>"%basic%"
echo.>>"%basic%"
echo [Audio] >>"%basic%"
echo SampleRate=48000> "%Basic%
rmdir /s  /q "%appdata%\obs-studio\basic\profiles\Untitled" 
exit