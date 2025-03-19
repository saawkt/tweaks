netsh int tcp set supplemental Template=Internet CongestionProvider=BBR
netsh int tcp set supplemental Template=Datacenter CongestionProvider=BBR
netsh int tcp set supplemental Template=Compat CongestionProvider=BBR
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=BBR
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=BBR
netsh int tcp set supplemental Template=Automatic CongestionProvider=BBR

Get-NetTCPSetting | Select SettingName, CongestionProvider