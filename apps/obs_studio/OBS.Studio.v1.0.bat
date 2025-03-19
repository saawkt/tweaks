

:Global
cd %programfiles%\obs-studio\bin\64bit && powershell Start-Process -FilePath "obs64.exe" -WindowStyle Minimized 
timeout /t 3 >nul && powershell stop-process -ProcessName obs64 -Force
set "GlobalIni=%appdata%\obs-studio\global.ini"

echo [General]> "%GlobalIni%"
echo Pre19Defaults=false>> "%GlobalIni%"
echo Pre21Defaults=false>> "%GlobalIni%"
echo Pre23Defaults=false>> "%GlobalIni%"
echo Pre24.1Defaults=false>> "%GlobalIni%"
echo InstallGUID=1e050d84772f623e7f7dbc764e6c8e56edb60c0e>> "%GlobalIni%"
echo FirstRun=true>> "%GlobalIni%"
echo SkipUpdateVersion=452984833>> "%GlobalIni%"
echo ProcessPriority=Normal>> "%GlobalIni%"
echo BrowserHWAccel=false>> "%GlobalIni%"
echo LastVersion=453115908>> "%GlobalIni%"
echo CurrentTheme2=Moonlight>> "%GlobalIni%"
echo CurrentTheme3=Moonlight>> "%GlobalIni%"
echo EnableAutoUpdates=false>> "%GlobalIni%"
echo.>> "%GlobalIni%"
echo [Basic]>> "%GlobalIni%"
echo Profile=Default @Matishzz>> "%GlobalIni%"
echo ProfileDir=Default @Matishzz>> "%GlobalIni%"
echo SceneCollection=Matishzz>> "%GlobalIni%"
echo SceneCollectionFile=Matishzz>> "%GlobalIni%"
echo.>> "%GlobalIni%"
echo [BasicWindow]>> "%GlobalIni%"
echo gridMode=false>> "%GlobalIni%"
echo geometry=AdnQywADAAAAAAFyAAAAgQAABecAAAN5AAABcgAAAKAAAAXnAAADeQAAAAAAAAAAB4AAAAFyAAAAoAAABecAAAN5>> "%GlobalIni%"
echo DockState=AAAA/wAAAAD9AAAAAQAAAAMAAAR2AAABSfwBAAAABPwAAAAAAAABgAAAAYAA/////AEAAAAC+wAAABYAcwBvAHUAcgBjAGUAcwBEAG8AYwBrAQAAAAAAAACgAAAAoAD////7AAAAEgBtAGkAeABlAHIARABvAGMAawEAAACkAAAA3AAAANwA////+wAAABIAcwB0AGEAdABzAEQAbwBjAGsBAAABhAAAAk4AAAJOAP////sAAAAeAHQAcgBhAG4AcwBpAHQAaQBvAG4AcwBEAG8AYwBrAgAABLEAAAK4AAAAhAAAAAD8AAAD1gAAAKAAAACgAP////wCAAAAAvsAAAAUAHMAYwBlAG4AZQBzAEQAbwBjAGsBAAABeAAAAIEAAABTAP////sAAAAYAGMAbwBuAHQAcgBvAGwAcwBEAG8AYwBrAQAAAf0AAADEAAAAxAD///8AAAR2AAABXgAAAAQAAAAEAAAACAAAAAj8AAAAAA==>> "%GlobalIni%"
echo ExtraBrowserDocks=[]>> "%GlobalIni%"
echo PreviewEnabled=true>> "%GlobalIni%"
echo AlwaysOnTop=false>> "%GlobalIni%"
echo SceneDuplicationMode=true>> "%GlobalIni%"
echo SwapScenesMode=true>> "%GlobalIni%"
echo EditPropertiesMode=false>> "%GlobalIni%"
echo PreviewProgramMode=false>> "%GlobalIni%"
echo DocksLocked=false>> "%GlobalIni%"
echo WarnBeforeStartingStream=false>> "%GlobalIni%"
echo WarnBeforeStoppingStream=false>> "%GlobalIni%"
echo WarnBeforeStoppingRecord=false>> "%GlobalIni%"
echo HideProjectorCursor=false>> "%GlobalIni%"
echo ProjectorAlwaysOnTop=false>> "%GlobalIni%"
echo.>> "%GlobalIni%"

echo [ScriptLogWindow]>> "%GlobalIni%"
echo geometry=AdnQywACAAAAAAAAAAAAAAAAAlcAAAGPAAAAAAAAAAAAAAJXAAABjwAAAAAAAAAAB4A=>> "%GlobalIni%"
goto CreateDefault

:CreateDefault
cls
set "folder=%appdata%\obs-studio\basic\profiles\Default @Matishzz"
set "Basic=%folder%\basic.ini"

md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=Default @Matishzz>>"%basic%"
echo.>>"%basic%"
echo [Audio] >>"%basic%"
echo SampleRate=48000> "%Basic%
rmdir /s  /q "%appdata%\obs-studio\basic\profiles\Untitled" 
goto CreateScene

:CreateScene
set "MatishzzJson=%appdata%\obs-studio\basic\scenes\Matishzz.json"

(
echo {
echo     "AuxAudioDevice1": {
echo         "balance": 0.5,
echo         "deinterlace_field_order": 0,
echo         "deinterlace_mode": 0,
echo         "enabled": true,
echo         "filters": [
echo             {
echo                 "balance": 0.5,
echo                 "deinterlace_field_order": 0,
echo                 "deinterlace_mode": 0,
echo                 "enabled": true,
echo                 "flags": 0,
echo                 "hotkeys": {},
echo                 "id": "noise_gate_filter",
echo                 "mixers": 255,
echo                 "monitoring_type": 0,
echo                 "muted": false,
echo                 "name": "@Matishzz",
echo                 "prev_ver": 419430408,
echo                 "private_settings": {},
echo                 "push-to-mute": false,
echo                 "push-to-mute-delay": 0,
echo                 "push-to-talk": false,
echo                 "push-to-talk-delay": 0,
echo                 "settings": {},
echo                 "sync": 0,
echo                 "versioned_id": "noise_gate_filter",
echo                 "volume": 1.0
echo             }
echo         ],
echo         "flags": 0,
echo         "hotkeys": {
echo             "libobs.mute": [],
echo             "libobs.push-to-mute": [],
echo             "libobs.push-to-talk": [],
echo             "libobs.unmute": []
echo         },
echo         "id": "wasapi_input_capture",
echo         "mixers": 255,
echo         "monitoring_type": 0,
echo         "muted": false,
echo         "name": "Mic/Aux",
echo         "prev_ver": 419430408,
echo         "private_settings": {},
echo         "push-to-mute": false,
echo         "push-to-mute-delay": 0,
echo         "push-to-talk": false,
echo         "push-to-talk-delay": 0,
echo         "settings": {
echo             "device_id": "default"
echo         },
echo         "sync": 0,
echo         "versioned_id": "wasapi_input_capture",
echo         "volume": 1.0
echo     },
echo     "DesktopAudioDevice1": {
echo         "balance": 0.5,
echo         "deinterlace_field_order": 0,
echo         "deinterlace_mode": 0,
echo         "enabled": true,
echo         "flags": 0,
echo         "hotkeys": {
echo             "libobs.mute": [],
echo             "libobs.push-to-mute": [],
echo             "libobs.push-to-talk": [],
echo             "libobs.unmute": []
echo         },
echo         "id": "wasapi_output_capture",
echo         "mixers": 255,
echo         "monitoring_type": 0,
echo         "muted": false,
echo         "name": "Desktop Audio",
echo         "prev_ver": 419430408,
echo         "private_settings": {},
echo         "push-to-mute": false,
echo         "push-to-mute-delay": 0,
echo         "push-to-talk": false,
echo         "push-to-talk-delay": 0,
echo         "settings": {
echo             "device_id": "default"
echo         },
echo         "sync": 0,
echo         "versioned_id": "wasapi_output_capture",
echo         "volume": 1.0
echo     },
echo     "current_program_scene": "Scene",
echo     "current_scene": "Scene",
echo     "current_transition": "Fade",
echo     "groups": [],
echo     "modules": {
echo         "auto-scene-switcher": {
echo             "active": false,
echo             "interval": 300,
echo             "non_matching_scene": "",
echo             "switch_if_not_matching": false,
echo             "switches": []
echo         },
echo         "captions": {
echo             "enabled": false,
echo             "lang_id": 1033,
echo             "provider": "mssapi",
echo             "source": ""
echo         },
echo         "output-timer": {
echo             "autoStartRecordTimer": false,
echo             "autoStartStreamTimer": false,
echo             "pauseRecordTimer": true,
echo             "recordTimerHours": 0,
echo             "recordTimerMinutes": 0,
echo             "recordTimerSeconds": 30,
echo             "streamTimerHours": 0,
echo             "streamTimerMinutes": 0,
echo             "streamTimerSeconds": 30
echo         },
echo         "scripts-tool": []
echo     },
echo     "name": "Untitled",
echo     "preview_locked": false,
echo     "quick_transitions": [
echo         {
echo             "duration": 300,
echo             "fade_to_black": false,
echo             "hotkeys": [],
echo             "id": 1,
echo             "name": "Cut"
echo         },
echo         {
echo             "duration": 300,
echo             "fade_to_black": false,
echo             "hotkeys": [],
echo             "id": 2,
echo             "name": "Fade"
echo         },
echo         {
echo             "duration": 300,
echo             "fade_to_black": true,
echo             "hotkeys": [],
echo             "id": 3,
echo             "name": "Fade"
echo         }
echo     ],
echo     "saved_projectors": [],
echo     "scaling_enabled": false,
echo     "scaling_level": 0,
echo     "scaling_off_x": 0.0,
echo     "scaling_off_y": 0.0,
echo     "scene_order": [
echo         {
echo             "name": "Scene"
echo         }
echo     ],
echo     "sources": [
echo         {
echo             "balance": 0.5,
echo             "deinterlace_field_order": 0,
echo             "deinterlace_mode": 0,
echo             "enabled": true,
echo             "flags": 0,
echo             "hotkeys": {
echo                 "OBSBasic.SelectScene": []
echo             },
echo             "id": "scene",
echo             "mixers": 0,
echo             "monitoring_type": 0,
echo             "muted": false,
echo             "name": "Scene",
echo             "prev_ver": 419430408,
echo             "private_settings": {},
echo             "push-to-mute": false,
echo             "push-to-mute-delay": 0,
echo             "push-to-talk": false,
echo             "push-to-talk-delay": 0,
echo             "settings": {
echo                 "custom_size": false,
echo                 "id_counter": 0,
echo                 "items": []
echo             },
echo             "sync": 0,
echo             "versioned_id": "scene",
echo             "volume": 1.0
echo         }
echo     ],
echo     "transition_duration": 300,
echo     "transitions": []
echo }
) > "%MatishzzJson%"
goto GPUCapture

:GPUCapture
cls
for /f "tokens=2 delims==" %%a in ('wmic path Win32_VideoController get VideoProcessor /value') do (
    for %%n in (GeForce NVIDIA RTX GTX) do echo %%a | find "%%n" >nul && goto NVIDIA
    for %%n in (AMD Radeon Ryzen) do echo %%a | find "%%n" >nul && goto AMD
    for %%n in (Intel UHD) do echo %%a | find "%%n" >nul && goto IUHD
)

:AMD
set "folder=%appdata%\obs-studio\basic\profiles\1080p 60fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=1080p 60fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=h264_texture_amf>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1920>>"%basic%"
echo BaseCY=1080>>"%basic%"
echo OutputCX=1920>>"%basic%"
echo OutputCY=1080>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"

echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\1080p 30fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=1080p 30fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"

echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"

echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=h264_texture_amf>>"%basic%"

echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1920>>"%basic%"
echo BaseCY=1080>>"%basic%"
echo OutputCX=1920>>"%basic%"
echo OutputCY=1080>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"

echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\720p 60fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=720p 60fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"

echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"

echo RecEncoder=h264_texture_amf>>"%basic%"

echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1280>>"%basic%"
echo BaseCY=720>>"%basic%"
echo OutputCX=1280>>"%basic%"
echo OutputCY=720>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"

echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"

echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\720p 30fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=720p 30fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"

echo RecEncoder=h264_texture_amf>>"%basic%"

echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1280>>"%basic%"
echo BaseCY=720>>"%basic%"
echo OutputCX=1280>>"%basic%"
echo OutputCY=720>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"

echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"

echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"

echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\936p 60fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=936p 60fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=h264_texture_amf>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1664>>"%basic%"
echo BaseCY=936>>"%basic%"
echo OutputCX=1664>>"%basic%"
echo OutputCY=936>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"

echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"

echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\936p 30fps - (AMD) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=936p 30fps - (AMD) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=h264_texture_amf>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=h264_texture_amf>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1664>>"%basic%"
echo BaseCY=936>>"%basic%"
echo OutputCX=1664>>"%basic%"
echo OutputCY=936>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"profile":"main","preset":"speed"} > "%folder%\recordEncoder.json"
echo {"preset":"balanced","profile":"main"} > "%folder%\streamEncoder.json"
goto Theme

:NVIDIA
set "folder=%appdata%\obs-studio\basic\profiles\1080p 60fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=1080p 60fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1920>>"%basic%"
echo BaseCY=1080>>"%basic%"
echo OutputCX=1920>>"%basic%"
echo OutputCY=1080>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\1080p 30fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=1080p 30fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1920>>"%basic%"
echo BaseCY=1080>>"%basic%"
echo OutputCX=1920>>"%basic%"
echo OutputCY=1080>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\720p 60fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=720p 60fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1280>>"%basic%"
echo BaseCY=720>>"%basic%"
echo OutputCX=1280>>"%basic%"
echo OutputCY=720>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\720p 30fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=720p 30fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1280>>"%basic%"
echo BaseCY=720>>"%basic%"
echo OutputCX=1280>>"%basic%"
echo OutputCY=720>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\936p 60fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=936p 60fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1664>>"%basic%"
echo BaseCY=936>>"%basic%"
echo OutputCX=1664>>"%basic%"
echo OutputCY=936>>"%basic%"
echo FPSCommon=60>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"




set "folder=%appdata%\obs-studio\basic\profiles\936p 30fps - (NVIDIA) Matishzz"
set "Basic=%folder%\basic.ini"
md "%folder%" 2>nul
echo [General]>>"%basic%"
echo Name=936p 30fps - (NVIDIA) Matishzz>>"%basic%"

echo.>>"%basic%"

echo [Output]>>"%basic%"
echo Mode=Advanced>>"%basic%"
echo DelayEnable=false>>"%basic%"
echo DelayPreserve=true>>"%basic%"
echo Reconnect=true>>"%basic%"
echo RetryDelay=5>>"%basic%"
echo MaxRetries=25>>"%basic%"
echo BindIP=default>>"%basic%"
echo NewSocketLoopEnable=false>>"%basic%"
echo LowLatencyEnable=false>>"%basic%"

echo.>>"%basic%"

echo [AdvOut]>>"%basic%"
echo ApplyServiceSettings=true>>"%basic%"
echo UseRescale=false>>"%basic%"
echo VodTrackIndex=2>>"%basic%"
echo Encoder=jim_nvenc>>"%basic%"
echo RecType=Standard>>"%basic%"
echo RecFormat2=mp4>>"%basic%"
echo RecUseRescale=false>>"%basic%"
echo RecEncoder=jim_nvenc>>"%basic%"
echo FFOutputToFile=true>>"%basic%"
echo FFVBitrate=2500>>"%basic%"
echo FFVGOPSize=250>>"%basic%"
echo FFUseRescale=false>>"%basic%"
echo FFIgnoreCompat=false>>"%basic%"
echo FFABitrate=160>>"%basic%"
echo Track1Bitrate=160>>"%basic%"
echo Track2Bitrate=160>>"%basic%"
echo Track3Bitrate=160>>"%basic%"
echo Track4Bitrate=160>>"%basic%"
echo Track5Bitrate=160>>"%basic%"
echo Track6Bitrate=160>>"%basic%"
echo RecSplitFileTime=15>>"%basic%"
echo RecSplitFileSize=2048>>"%basic%"
echo RecRB=true>>"%basic%"
echo RecRBTime=120>>"%basic%"
echo RecRBSize=1024>>"%basic%"
echo AudioEncoder=ffmpeg_aac>>"%basic%"
echo RecAudioEncoder=ffmpeg_aac>>"%basic%"
echo RecSplitFileType=Time>>"%basic%"
echo FFFormat=>>"%basic%"
echo FFFormatMimeType=>>"%basic%"
echo FFVEncoderId=0>>"%basic%"
echo FFVEncoder=>>"%basic%"
echo FFAEncoderId=0>>"%basic%"
echo FFAEncoder=>>"%basic%"
echo RecFileNameWithoutSpace=true>>"%basic%"

echo.>>"%basic%"

echo [Video]>>"%basic%"
echo BaseCX=1664>>"%basic%"
echo BaseCY=936>>"%basic%"
echo OutputCX=1664>>"%basic%"
echo OutputCY=936>>"%basic%"
echo FPSCommon=30>>"%basic%"
echo FPSInt=30>>"%basic%"
echo FPSNum=30>>"%basic%"
echo ScaleType=bilinear>>"%basic%"
echo ColorFormat=NV12>>"%basic%"
echo ColorSpace=709>>"%basic%"
echo ColorRange=Partial>>"%basic%"
echo SdrWhiteLevel=300>>"%basic%"
echo HdrNominalPeakLevel=1000>>"%basic%"

echo.>>"%basic%"

echo [Audio]>>"%basic%"
echo MonitoringDeviceId=default>>"%basic%"
echo MonitoringDeviceName=default>>"%basic%"
echo SampleRate=48000>>"%basic%"
echo ChannelSetup=Stereo>>"%basic%"
echo MeterDecayRate=23.53>>"%basic%"

echo.>>"%basic%"

echo [Hotkeys]>>"%basic%"
echo ReplayBuffer={"ReplayBuffer.Save":[{"key":"OBS_KEY_F9"}]}>>"%basic%"
echo {"rate_control":"CQP","cqp":17,"preset2":"p4","tune":"ll","multipass":"disabled","profile":"main","psycho_aq":true} > "%folder%\recordEncoder.json"
echo {"preset2":"p4","tune":"ll","multipass":"disabled","psycho_aq":true} > "%folder%\streamEncoder.json"
goto Theme

:IUHD
cls
echo x=msgbox("For now the script doesn't support Intel UHD Graphics, if this is a error I recommend you to visit the github",DefaultMsgBox+vbCritical+vbOKOnly,"OBS Install + Config / By @Matishzz") > %tmp%\tmp.vbs && cscript //nologo %tmp%\tmp.vbs && del %tmp%\tmp.vbs
exit
 
:Theme
cls
cd %programfiles%\obs-studio\data\obs-studio\themes
powershell Invoke-WebRequest "https://github.com/WyzzyMoon/Moonlight/releases/download/v1.0/moonlight.zip" -OutFile "%temp%\Moonlight.zip"> nul 2>&1 && powershell Expand-Archive -Path '%temp%\moonlight.zip' -DestinationPath "$Env:ProgramFiles\obs-studio\data\obs-studio\themes" -Force> nul 2>&1
del /s /q "Acri.qss" > nul && del /s /q "Rachni.qss" > nul && del /s /q "Yami.qss" > nul && del /s /q "Grey.qss" > nul && rmdir /s /q "Acri" > nul && rmdir /s /q "Rachni" > nul && rmdir /s /q "Yami" > nul && rmdir /s /q "Grey" > nul && del /s /q "System.qss" > nul && rmdir /s /q %temp%\Moonlight.zip > nul 2>&1S
if exist "Moonlight" (
    goto exit
) else (
    echo x=msgbox("Apparently there was an error when importing the Theme Moonlight",DefaultMsgBox+vbCritical+vbOKOnly,"OBS Install + Config / By @Matishzz") > %tmp%\tmp.vbs && cscript //nologo %tmp%\tmp.vbs && del %tmp%\tmp.vbs
	goto exit
)

:Uninstall
echo x=msgbox("It has been detected that OBS Studio is still installed, to continue with the script uninstall it, if you think this is a bug visit my github in the troubleshooting section or contact me", DefaultMsgBox+vbCritical+vbOKOnly, "OBS Install + Config / By @Matishzz") > %tmp%\tmp.vbs & cscript //nologo %tmp%\tmp.vbs & del %tmp%\tmp.vbs & start https://github.com/Matishzz/OBS-Studio/blob/main/Troubleshooting.md & exit

:exit
cls
cd %programfiles%\obs-studio\bin\64bit && powershell Start-Process -FilePath "obs64.exe"
start https://twitter.com/Matishzz && exit