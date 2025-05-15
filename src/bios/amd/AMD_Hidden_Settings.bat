@echo off
setlocal enabledelayedexpansion
::all from catgamerop
echo          For new ASUS motherboards, disable UEFI Password protection of Runtime Variables and 
echo                                 enable Publish HII Resources in BIOS
echo.
echo                            If your PC doesn't restart after applying, reset your CMOS
echo.
timeout /t 5 /nobreak
SCEWIN_64.exe /i /ms "SR-IOV Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "S3/Modern Standby Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "XHCI Hand-off" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Serial(COM) Port" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Parallel Port" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SVM Mode" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PSS Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Spread Spectrum" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "IOMMU" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Global C-state Control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CPPC" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CPPC Preferred Cores" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CC1" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "TSME" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Power Down Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SmartShift Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "STAPM Boost" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACPI Standby State" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Debug Port Table" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "VGA Palette Snoop" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "BME DMA Mitigation" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Aggresive SATA Device Sleep Port 0" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Aggresive SATA Device Sleep Port 1" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "AB Clock Gating" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 0 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 1 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 2 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 3 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 4 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "I2C 5 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "UART 0 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "UART 1 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "UART 2 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "UART 3 D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SATA D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "EHCI D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "XHCI D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SD D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Chipset Power Saving Features" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SB Clock Spread Spectrum" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "_OSC For PCI0" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "USB Phy Power Down" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SB C1E Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Remote Display Feature" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Turn On LED in S5" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACPI Sleep State" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACP Power Gating" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACP CLock Gating" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Wake on PME" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Thunderbolt Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "D3Cold Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SMEE" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Platform First Error Handling" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACPI _CST C1 Declaration" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SMU and PSP Debug" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Core Watchdog Timer Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Freeze DF module queues on error" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CC6 memory region encryption" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRAM scrub time" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Poison scrubber control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Redirect scrubber control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "GMI encryption control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "xGMI encryption control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ACS Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PCIe ARI Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PCIe ARI Enumeration" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Enable AER Cap" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CV test" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Loopback Mode" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SRIS" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "NBIO RAS Control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "NBIO SyncFlood Generation" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "System Hub Watchdog Timer" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "NBIO Poison Consumption" /qv 0x2 /lang en-US
SCEWIN_64.exe /i /ms "Sata RAS Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "USB ecc SMI Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "D3 Cold Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "eMMC Boot" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ALink RAS Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Onboard PCIE LAN PXE ROM" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode Control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PM L1 SS" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRAM ECC Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRAM UECC Retry" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Data Scramble" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DMAr Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Modern Standby Type" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Integrated Graphics" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "CPU PCIE ASPM Mode Control" /qv 0x0 /lang en-US

SCEWIN_64.exe /i /ms "Extended Tag" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Indirect Branch Prediction Speculation" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L1 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L2 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "System probe filter" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Periodic Directory Rinse" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "DRAM map inversion" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "PCIe Ten Bit Tag Support" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "SoC/Uncore OC Mode" /qv 0x1 /lang en-US

SCEWIN_64.exe /i /ms "Power Supply Idle Control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Option ROM Messages" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PSPP Policy" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "MCA error thresh enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "OC Mode" /qv 0x3 /lang en-US
SCEWIN_64.exe /i /ms "Disable DF to external downstream IP SyncFloodPropagation" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Disable DF sync flood propagation" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "1TB remap" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "4-link xGMI max speed" /qv 0x13 /lang en-US
SCEWIN_64.exe /i /ms "3-link xGMI max speed" /qv 0x13 /lang en-US
SCEWIN_64.exe /i /ms "APBDIS" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Fixed SOC Pstate" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "NBIO RAS Global Control" /qv 0x1 /lang en-US

SCEWIN_64.exe /i /ms "ACPI D3 Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SEV Control" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "MCA FruText" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SMU and PSP Debug Mode" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Log Transparent Errors" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Disable DF to external downstream IP Sync Flood Propagation" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Disable DF sync flood propagation" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Freeze DF module queues on error" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DF Cstates" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Disable Memory Error Injection" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "PCIe All Port ECRC" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Advanced Error Reporting (AER)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PCIe loopback Mode" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "NPU Deep Sleep Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "FCH Spread Spectrum" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CPPC Dynamic Preferred Cores" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Pluton Security Processor" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRTM Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "AIM-T Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "SecureBio Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "PCIe Power Management Features" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Device Sleep for AHCI Port 0" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Device Sleep for AHCI Port 1" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Device Sleep for AHCI Port 2" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Device Sleep for AHCI Port 3" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Clock Spread Spectrum" /qv 0x2 /lang en-US
SCEWIN_64.exe /i /ms "SMART Self Test" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "BIOS Hot-Plug Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "USB S5 Wakeup Support" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Native ASPM" /qv 0x0 /lang en-US


SCEWIN_64.exe /i /ms "Wake on PME" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Power Down Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "LCLK DPM" /qv 0x2 /lang en-US
SCEWIN_64.exe /i /ms "LCLK DPM Enhanced PCIe Detection" /qv 0x2 /lang en-US

SCEWIN_64.exe /i /ms "PPIN Opt-in" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Data Poisoning" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRAM Post Package Repair" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "RCD Parity" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Write CRC Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "DRAM ECC Enable" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "AMD Cool&Quiet function" /qv 0x0 /lang en-US

SCEWIN_64.exe /i /ms "Legacy USB Support" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "Port 60/64 Emulation" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "APP Center Download & Install" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Chipset SATA Port Hot Plug" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Wake on LAN" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "MSI Driver Utility Installer" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Control for CPU PCIe" /qv 0x0 /lang en-US

SCEWIN_64.exe /i /ms "L1 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L1 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L2 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L1 Stride Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L1 Region Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L1 Burst Prefetch Mode" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L2 Up/Down Prefetcher" /qv 0x1 /lang en-US

SCEWIN_64.exe /i /ms "ECC" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "FEATURE FCLK DPM" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode(Dev#1/Func#1)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode(Dev#1/Func#2)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode(Dev#2/Func#1)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode(Dev#2/Func#2)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode Control(Device4)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode Control(Device5)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode Control(Device6)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM Mode Control(Device7)" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "ASPM" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "Extended Synch" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "RGB Light" /qv 0x0 /lang en-US
SCEWIN_64.exe /i /ms "CPPC Dynamic Preferred Cores" /qv 0x1 /lang en-US


@REM SCEWIN_64.exe /i /ms "LN2 Mode" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "LN2 Mode 1" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "BIOS Hot-Plug Support" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "NX Mode" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "Opcache Control" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "PS2 Devices Support" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "Pre-boot DMA Protection" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "DMA Protection" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "S3/Modern Standby Support" /qv 0x0 /lang en-US
@REM SCEWIN_64.exe /i /ms "Streaming Stores Control" /qv 0x0 /lang en-US

:: DOESN'T CHANGE
:: SCEWIN_64.exe /i /ms "FCH Spread Spectrum" /qv 0x0 /lang en-US
echo Done, restart your pc
timeout /t 5 /nobreak
exit /b