@echo off
setlocal enabledelayedexpansion
cd C:\
rmdir /s /q "C:\Program Files (x86)\Epic Games\DirectXRedist" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\ap*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\concrt140.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\dbghelp.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\msvcp*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\tbbmalloc.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\ucrtbase.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\vc*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\ap*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\concrt140.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\dbghelp.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\msvcp*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\tbbmalloc.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\ucrtbase.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Epic Online Services\service\vc*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\ap*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\concrt140.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\dbghelp.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\msvcp*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\tbbmalloc.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\ucrtbase.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win32\vc*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\ap*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\concrt140.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\dbghelp.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\msvcp*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\tbbmalloc.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\ucrtbase.dll" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\vc*" >NUL 2>&1
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\msvcp140.dll.old.ver"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_zh-cn.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_ru.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_pt-br.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_pl.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_ko.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_ja.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_it.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_fr.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_EsEs.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_es.data"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Social\ProfanityLists\BlackList_de.data"
del /f /q /s "C:\Program Files (x86)\Epic Games\Launcher\Portal\Content\Font\*.*" >nul
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Extras\EOS\EpicOnlineServices.msi"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.old.ver"
del /f "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\msvcp140.dll.old.ver"
del /f /q /s "C:\Program Files (x86)\Epic Games\Launcher\Portal\SysFiles\*.*" >nul
echo.
echo Epic Games Launcher Debloated
Pause > Nul