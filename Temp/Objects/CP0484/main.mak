SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\Bandizip\;C:\Program Files\dotnet\;C:\Program Files (x86)\Microsoft SQL Server\160\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\160\Tools\Binn\;C:\Program Files\Microsoft SQL Server\160\Tools\Binn\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files\Microsoft SQL Server\160\DTS\Binn\;C:\Program Files\Microsoft SQL Server\140\Tools\Binn\;C:\Program Files\NVIDIA Corporation\NVIDIA App\NvDLISR;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\TortoiseGit\bin;C:\Program Files\Git\cmd;C:\Users\min\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\min\AppData\Local\Programs\Python\Python313\;C:\Users\min\AppData\Local\Programs\Python\Launcher\;C:\Users\min\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\min\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\min\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\min\AppData\Local\Programs\Python\Python313\;C:\Users\min\AppData\Local\Programs\Python\Launcher\;C:\Users\min\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\min\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files\BRAutomation4\AS412\bin-en\4.12;C:\Program Files\BRAutomation4\AS412\bin-en\4.11;C:\Program Files\BRAutomation4\AS412\bin-en\4.10;C:\Program Files\BRAutomation4\AS412\bin-en\4.9;C:\Program Files\BRAutomation4\AS412\bin-en\4.8;C:\Program Files\BRAutomation4\AS412\bin-en\4.7;C:\Program Files\BRAutomation4\AS412\bin-en\4.6;C:\Program Files\BRAutomation4\AS412\bin-en\4.5;C:\Program Files\BRAutomation4\AS412\bin-en\4.4;C:\Program Files\BRAutomation4\AS412\bin-en\4.3;C:\Program Files\BRAutomation4\AS412\bin-en\4.2;C:\Program Files\BRAutomation4\AS412\bin-en\4.1;C:\Program Files\BRAutomation4\AS412\bin-en\4.0;C:\Program Files\BRAutomation4\AS412\bin-en
export AS_BUILD_MODE := Build
export AS_VERSION := 4.12.7.113 SP
export AS_WORKINGVERSION := 4.12
export AS_COMPANY_NAME :=  
export AS_USER_NAME := min
export AS_PATH := C:/Program Files/BRAutomation4/AS412
export AS_BIN_PATH := C:/Program Files/BRAutomation4/AS412/bin-en
export AS_PROJECT_PATH := E:/Project/HIS/ShipBatterySystm
export AS_PROJECT_NAME := HISTest
export AS_SYSTEM_PATH := C:/Program\ Files/BRAutomation4/AS/System
export AS_VC_PATH := C:/Program\ Files/BRAutomation4/AS412/AS/VC
export AS_TEMP_PATH := E:/Project/HIS/ShipBatterySystm/Temp
export AS_CONFIGURATION := CP0484
export AS_BINARIES_PATH := E:/Project/HIS/ShipBatterySystm/Binaries
export AS_GNU_INST_PATH := C:/Program\ Files/BRAutomation4/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/Program\ Files/BRAutomation4/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Program Files/BRAutomation4/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/Program Files/BRAutomation4/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/Program\ Files/BRAutomation4/AS412
export WIN32_AS_PATH := "C:\Program Files\BRAutomation4\AS412"
export WIN32_AS_BIN_PATH := "C:\Program Files\BRAutomation4\AS412\bin-en"
export WIN32_AS_PROJECT_PATH := "E:\Project\HIS\ShipBatterySystm"
export WIN32_AS_SYSTEM_PATH := "C:\Program Files\BRAutomation4\AS\System"
export WIN32_AS_VC_PATH := "C:\Program Files\BRAutomation4\AS412\AS\VC"
export WIN32_AS_TEMP_PATH := "E:\Project\HIS\ShipBatterySystm\Temp"
export WIN32_AS_BINARIES_PATH := "E:\Project\HIS\ShipBatterySystm\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Program Files\BRAutomation4\AS412\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "C:\Program Files\BRAutomation4\AS412\AS\GnuInst\V4.1.2\bin"
export WIN32_AS_INSTALL_PATH := "C:\Program Files\BRAutomation4\AS412"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/HISTest.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

