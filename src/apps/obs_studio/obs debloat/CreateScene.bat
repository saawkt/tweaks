@echo off
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
exit