netsh int tcp set supplemental Template=Internet CongestionProvider=dctcp2
netsh int tcp set supplemental Template=Datacenter CongestionProvider=dctcp2
netsh int tcp set supplemental Template=Compat CongestionProvider=dctcp2
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=dctcp2
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=dctcp2
netsh int tcp set supplemental Template=Automatic CongestionProvider=dctcp2

Get-NetTCPSetting | Select SettingName, CongestionProvider