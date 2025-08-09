#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/HMI_DataPa/Mainst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{
*((char volatile*)&(HMI)) = *((char*)&(HMI));

(Timestamp.DTGetTime_0.enable=1);

__AS__Local3_00000=(plcstring*)HMI_AlarmName[0]; __AS__Local4_00000=(plcstring*)"Sys Over Current"; for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[1]; __AS__Local4_00000=(plcstring*)"Sys Over SOC"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[2]; __AS__Local4_00000=(plcstring*)"Sys Under SOC"; for(__AS__Local0_00000=0; __AS__Local0_00000<13l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[3]; __AS__Local4_00000=(plcstring*)"Sys Over Voltage"; for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[4]; __AS__Local4_00000=(plcstring*)"Sys Under Voltag"; for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[5]; __AS__Local4_00000=(plcstring*)"Cell Over Voltage"; for(__AS__Local0_00000=0; __AS__Local0_00000<17l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[6]; __AS__Local4_00000=(plcstring*)"Cell Under Voltag"; for(__AS__Local0_00000=0; __AS__Local0_00000<17l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[7]; __AS__Local4_00000=(plcstring*)"Cell UnBalance Voltage"; for(__AS__Local0_00000=0; __AS__Local0_00000<22l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[8]; __AS__Local4_00000=(plcstring*)"Cell DisCHA Over Temperature"; for(__AS__Local0_00000=0; __AS__Local0_00000<28l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[9]; __AS__Local4_00000=(plcstring*)"Cell CHA Over Temperature"; for(__AS__Local0_00000=0; __AS__Local0_00000<25l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[10]; __AS__Local4_00000=(plcstring*)"Cell DisCHA Under Temperature"; for(__AS__Local0_00000=0; __AS__Local0_00000<29l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[11]; __AS__Local4_00000=(plcstring*)"Cell CHA Under Temperature"; for(__AS__Local0_00000=0; __AS__Local0_00000<26l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[12]; __AS__Local4_00000=(plcstring*)"Cell UnBalance Temperature"; for(__AS__Local0_00000=0; __AS__Local0_00000<26l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

__AS__Local3_00000=(plcstring*)HMI_AlarmName[13]; __AS__Local4_00000=(plcstring*)"Relay Welding Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<19l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[14]; __AS__Local4_00000=(plcstring*)"Internal COM Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<18l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[15]; __AS__Local4_00000=(plcstring*)"External COM Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<18l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[16]; __AS__Local4_00000=(plcstring*)"Current Transformer COM Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<29l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[17]; __AS__Local4_00000=(plcstring*)"Water Leak Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_AlarmName[18]; __AS__Local4_00000=(plcstring*)"Emergency Switch Error"; for(__AS__Local0_00000=0; __AS__Local0_00000<22l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;


for((LoopNum=0);LoopNum<=12;LoopNum+=1){

__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[LoopNum].Name; __AS__Local4_00000=(plcstring*)HMI_AlarmName[LoopNum]; for(__AS__Local0_00000=0; __AS__Local0_00000<30l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[LoopNum].Name; __AS__Local4_00000=(plcstring*)HMI_AlarmName[LoopNum]; for(__AS__Local0_00000=0; __AS__Local0_00000<30l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[LoopNum].Name; __AS__Local4_00000=(plcstring*)HMI_AlarmName[LoopNum]; for(__AS__Local0_00000=0; __AS__Local0_00000<30l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

}imp32781_endfor0_0:;

for((LoopNum=13);LoopNum<=18;LoopNum+=1){

__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[LoopNum].Name; __AS__Local4_00000=(plcstring*)HMI_AlarmName[LoopNum]; for(__AS__Local0_00000=0; __AS__Local0_00000<30l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

}imp32781_endfor1_0:;

(HMI.DeviceLoading.DeviceLoadingStep=0);
(HMI.DeviceLoading.SetRackNum=0);
(HMI.DeviceLoading.RackLoading=0);

(TON_0.PT=(30000));
}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 50 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

__AS__Action__ActTimeSplit();
__AS__Action__ActSystem_Warning();
__AS__Action__ActSystem_Fault();
__AS__Action__ActSystem_Protect();
__AS__Action__ActLOGIN();
__AS__Action__ActSystem_AlarmTab();
__AS__Action__ActDeviceReset();
__AS__Action__ActRackEnable();

switch(HMI.Step){
case 0:{
(HMI.Step=1);
}break;case 1:{
TON(&TON_0);
__AS__Action__ActDeviceloading();

if(Sys.DeviceloadingDone){
(HMI.Step=2);
}
}break;case 2:{
__AS__MEMCPY(((unsigned long)(&System_HMI)),((unsigned long)(&PMS)),492);
(HMI.RackIndex=0);
__AS__Action__AtSystemUI();
}break;case 3:{
__AS__MEMCPY(((unsigned long)(&Rack_HMI)),((unsigned long)(&SubBMS.Rack1.BSA)),480);
(HMI.RackIndex=0);
__AS__Action__AtRackUI();
}break;case 4:{
__AS__MEMCPY(((unsigned long)(&Rack_HMI)),((unsigned long)(&SubBMS.Rack2.BSA)),480);
(HMI.RackIndex=1);
__AS__Action__AtRackUI();
}break;case 5:{
__AS__MEMCPY(((unsigned long)(&Rack_HMI)),((unsigned long)(&SubBMS.Rack3.BSA)),480);
(HMI.RackIndex=2);
__AS__Action__AtRackUI();
}break;case 6:{
__AS__MEMCPY(((unsigned long)(&Rack_HMI)),((unsigned long)(&SubBMS.Rack4.BSA)),480);
(HMI.RackIndex=3);
__AS__Action__AtRackUI();
}break;case 14:{
__AS__MEMCPY(((unsigned long)(&System_HMI)),((unsigned long)(&PMS)),492);
__AS__Action__AtSystemUI();
}break;case 13:{
__AS__MEMCPY(((unsigned long)(&System_HMI)),((unsigned long)(&PMS)),492);
__AS__Action__AtSystemUI();

}break;}
}imp13_case2_8:imp13_endcase2_0:;}
#line 99 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 101 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{

}}
#line 103 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Rack.st"
static void __AS__Action__AtRackUI(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
switch(Rack_HMI.Rack_State.Field.BSA_Divice_Status){
case 0:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"NONE"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 1:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"IDEL"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 2:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"STANDBY"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 3:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"READY"; for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 4:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"RUN"; for(__AS__Local0_00000=0; __AS__Local0_00000<3l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 5:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"PROTECT"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 6:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"STOP"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;}

(HMI.Gauge.BRA_Volt_Total=Rack_HMI.Rack_Calc.Field.BRA_Volt_Total);
real2str(((HMI.Gauge.BRA_Volt_Total-400)*(6.75000011920928955078E-01)),HMI.Gauge.BRA_Volt_Total_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_Volt_Total_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge3\",\"spin\":[",CONCAT(HMI.Gauge.BRA_Volt_Total_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_Curr_Total=Rack_HMI.Rack_Calc.Field.BRA_Curr_Total);
real2str(((HMI.Gauge.BRA_Curr_Total*(2.70000010728836059570E-01))+135),HMI.Gauge.BRA_Curr_Total_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_Curr_Total_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge4\",\"spin\":[",CONCAT(HMI.Gauge.BRA_Curr_Total_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_SOC=Rack_HMI.Rack_Calc.Field.BRA_SOC);
real2str((HMI.Gauge.BRA_SOC*(2.70000004768371582031E+00)),HMI.Gauge.BRA_SOC_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_SOC_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge1\",\"spin\":[",CONCAT(HMI.Gauge.BRA_SOC_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_SOH=Rack_HMI.Rack_Calc.Field.BRA_SOH);
real2str((HMI.Gauge.BRA_SOH*(2.70000004768371582031E+00)),HMI.Gauge.BRA_SOH_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_SOH_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge2\",\"spin\":[",CONCAT(HMI.Gauge.BRA_SOH_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.BatteryInfo.BSA_Cell_MaxV=Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);
(HMI.BatteryInfo.BSA_Cell_MinV=Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_MinV);
(HMI.BatteryInfo.BSA_Cell_AVGV=Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);
(HMI.BatteryInfo.BSA_Cell_DeviV=Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV);

(HMI.BatteryInfo.BSA_Cell_MaxT=Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);
(HMI.BatteryInfo.BSA_Cell_MinT=Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_MinT);
(HMI.BatteryInfo.BSA_Cell_AVGT=Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);
(HMI.BatteryInfo.BSA_Cell_DeviT=Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT);


uint2str(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location,HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,21);

__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MaxV_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,"(C)"); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
uint2str(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location,HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,21);

__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MinV_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,"(C)"); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
uint2str(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location,HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,21);

__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MaxT_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,"(C)"); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

uint2str(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location,HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,21);

__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MinT_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,"(C)"); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Module1Info.Volt_Total=Rack_HMI.Modul1_Info.Field.Volt_Total);

if(Rack_HMI.Modul1_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module1Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module1Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul1_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module1Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module1Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul1_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module1Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module1Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module2Info.Volt_Total=Rack_HMI.Modul2_Info.Field.Volt_Total);

if(Rack_HMI.Modul2_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module2Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module2Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul2_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module2Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module2Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul2_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module2Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module2Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module3Info.Volt_Total=Rack_HMI.Modul3_Info.Field.Volt_Total);

if(Rack_HMI.Modul3_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module3Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module3Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul3_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module3Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module3Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul3_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module3Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module3Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module4Info.Volt_Total=Rack_HMI.Modul4_Info.Field.Volt_Total);

if(Rack_HMI.Modul4_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module4Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module4Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul4_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module4Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module4Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul4_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module4Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module4Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module5Info.Volt_Total=Rack_HMI.Modul5_Info.Field.Volt_Total);

if(Rack_HMI.Modul5_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module5Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module5Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul5_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module5Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module5Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul5_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module5Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module5Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module6Info.Volt_Total=Rack_HMI.Modul6_Info.Field.Volt_Total);

if(Rack_HMI.Modul6_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module6Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module6Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul6_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module6Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module6Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul6_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module6Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module6Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

(HMI.Module7Info.Volt_Total=Rack_HMI.Modul7_Info.Field.Volt_Total);

if(Rack_HMI.Modul7_Info.Field.OPS_Fault){
__AS__Local3_00000=(plcstring*)HMI.Module7Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module7Info.OPS_Fault; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul7_Info.Field.OPS_MBCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module7Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module7Info.OPS_MBCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Modul7_Info.Field.CTCOM_Err){
__AS__Local3_00000=(plcstring*)HMI.Module7Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.Module7Info.CTCOM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}


if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_OC; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_OC; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_OC; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_OC; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_OC; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_OC; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_OC; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_OC; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Discharge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charge_Unbal_PWR; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EMS_SW_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EMS_SW_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Rly_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Rly_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_IN_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_IN_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EX_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EX_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_CT_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_CT_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}



switch(Rack_HMI.Rack_State.Field.BSA_Protect_Status){
case 0:{__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Protect_Status; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 1:{__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Protect_Status; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 2:{__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Protect_Status; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 3:{__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Protect_Status; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;}

if(Rack_HMI.Rack_State.Field.BSA_EMG_SW){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_EMG_SW; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_EMG_SW; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_Water_leak){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_WaterLeak; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_WaterLeak; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_Balance){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Balance; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Balance; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_MSD_AUX){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_MSD_AUX; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_MSD_AUX; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_Neg_Rly){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Neg_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Neg_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_Pos_Rly){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Pos_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Pos_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Rack_HMI.Rack_State.Field.BSA_PreChar_Rly){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_PreChar_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_PreChar_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

}imp16395_end51_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_System.st"
static void __AS__Action__AtSystemUI(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
switch(System_HMI.SysBatCal.Field.BSA_Divice_Status){
case 0:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"INIT"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 1:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"READY"; for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 2:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"STANDBY"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 3:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"RUN"; for(__AS__Local0_00000=0; __AS__Local0_00000<3l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 4:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"ALARM"; for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 5:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"FAULT"; for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 6:{__AS__Local3_00000=(plcstring*)HMI.BSA_Divice_Status; __AS__Local4_00000=(plcstring*)"PROTECT"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;}

(HMI.Gauge.BRA_Volt_Total=System_HMI.SysBatCal.Field.BSA_Volt_Total);
real2str(((HMI.Gauge.BRA_Volt_Total-400)*(6.75000011920928955078E-01)),HMI.Gauge.BRA_Volt_Total_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_Volt_Total_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge3\",\"spin\":[",CONCAT(HMI.Gauge.BRA_Volt_Total_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_Curr_Total=System_HMI.SysBatCal.Field.BSA_Curr_Total);
real2str(((HMI.Gauge.BRA_Curr_Total*(2.70000010728836059570E-01))+135),HMI.Gauge.BRA_Curr_Total_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_Curr_Total_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge4\",\"spin\":[",CONCAT(HMI.Gauge.BRA_Curr_Total_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_SOC=System_HMI.SysBatCal.Field.BSA_SOC);
real2str((HMI.Gauge.BRA_SOC*(2.70000004768371582031E+00)),HMI.Gauge.BRA_SOC_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_SOC_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge1\",\"spin\":[",CONCAT(HMI.Gauge.BRA_SOC_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(HMI.Gauge.BRA_SOH=System_HMI.SysBatDIO.Field.BSA_SOH);
real2str((HMI.Gauge.BRA_SOH*(2.70000004768371582031E+00)),HMI.Gauge.BRA_SOH_A,21);
__AS__Local3_00000=(plcstring*)HMI.Gauge.BRA_SOH_B; __AS__Local4_00000=(plcstring*)CONCAT("[{\"select\":\"#gauge2\",\"spin\":[",CONCAT(HMI.Gauge.BRA_SOH_A,",0,0]}]")); for(__AS__Local0_00000=0; __AS__Local0_00000<50l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;


(HMI.BatteryInfo.BSA_Cell_MaxV=System_HMI.SysCellVolt.Field.BSA_Cell_MaxV);
(HMI.BatteryInfo.BSA_Cell_MinV=System_HMI.SysCellVolt.Field.BSA_Cell_MinV);
(HMI.BatteryInfo.BSA_Cell_AVGV=System_HMI.SysCellVolt.Field.BSA_Cell_AVGV);
(HMI.BatteryInfo.BSA_Cell_DeviV=System_HMI.SysCellVolt.Field.BSA_Cell_DeviV);


(HMI.BatteryInfo.BSA_Cell_MaxT=System_HMI.SysCellTemps.Field.BSA_Cell_MaxT);
(HMI.BatteryInfo.BSA_Cell_MinT=System_HMI.SysCellTemps.Field.BSA_Cell_MinT);
(HMI.BatteryInfo.BSA_Cell_AVGT=System_HMI.SysCellTemps.Field.BSA_Cell_AVGT);
(HMI.BatteryInfo.BSA_Cell_DeviT=System_HMI.SysCellTemps.Field.BSA_Cell_DeviT);

usint2str(System_HMI.SysCellV_TPos.Field.BSA_Rack_MaxV_Location,HMI.BatteryInfo.BSA_Cell_MaxV_Rack_Location,21);
usint2str(System_HMI.SysCellV_TPos.Field.BSA_Cell_MaxV_Location,HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,21);
__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MaxV_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Rack_Location,CONCAT("(R), ",CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,"(C)"))); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

usint2str(System_HMI.SysCellV_TPos.Field.BSA_Rack_MinV_Location,HMI.BatteryInfo.BSA_Cell_MinV_Rack_Location,21);
usint2str(System_HMI.SysCellV_TPos.Field.BSA_Cell_MinV_Location,HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,21);
__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MinV_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Rack_Location,CONCAT("(R), ",CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,"(C)"))); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

usint2str(System_HMI.SysCellV_TPos.Field.BSA_Rack_MaxT_Location,HMI.BatteryInfo.BSA_Cell_MaxT_Rack_Location,21);
usint2str(System_HMI.SysCellV_TPos.Field.BSA_Cell_MaxT_Location,HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,21);
__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MaxT_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Rack_Location,CONCAT("(R), ",CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,"(C)"))); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

usint2str(System_HMI.SysCellV_TPos.Field.BSA_Rack_MinT_Location,HMI.BatteryInfo.BSA_Cell_MinT_Rack_Location,21);
usint2str(System_HMI.SysCellV_TPos.Field.BSA_Cell_MinT_Location,HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,21);
__AS__Local3_00000=(plcstring*)HMI.BatteryInfo.BSA_Cell_MinT_Location; __AS__Local4_00000=(plcstring*)CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Rack_Location,CONCAT("(R), ",CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,"(C)"))); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;



if(System_HMI.SysBatProtect.Field.BSA_Prtct_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OC; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OC; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_OC){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OC; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OC; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_SOC_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_SOC_UN){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_SOC_UN){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_SOC_UN){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_SOC_Un; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_UV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_OV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_OV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalV; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_OT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_DisCharger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Charger_Cell_UT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Orange"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else if(System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Yellow"; for(__AS__Local0_00000=0; __AS__Local0_00000<12l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Cell_UnbalT; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}


if(System_HMI.SysBatProtect.Field.BSA_Prtct_InternalCOM){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_IN_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_IN_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_ExternalCOM){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EX_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_EX_COM_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_RelayWelding){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Rly_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Rly_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_WaterLeak){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_InsulationReg){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BRA_Prtct_InsulationReg; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BRA_Prtct_InsulationReg; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_MDSFuse){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BRA_Prtct_MDSFuse; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BRA_Prtct_MDSFuse; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(System_HMI.SysBatProtect.Field.BSA_Prtct_Cooling_System){
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_CoolingSystem; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.ProtectStatus.BSA_Prtct_CoolingSystem; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Sys.EMSRlyAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Exteral_EMS; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Exteral_EMS; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}

if(Sys.EMSRlyAux_BMP){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_BMP_EMS; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_BMP_EMS; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.WaterCoolingAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Watercooling; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Watercooling; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.FireDetectorAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_FireDetector; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_FireDetector; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.GasDetectorAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_GasDetector; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_GasDetector; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.NRlyAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Neg_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Neg_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.PRlyAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Pos_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_Pos_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
if(Sys.ProRlyAux){
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_PreChar_Rly; __AS__Local4_00000=(plcstring*)"Solid_Green"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.DIOStatus.BSA_PreChar_Rly; __AS__Local4_00000=(plcstring*)"Solid_Red"; for(__AS__Local0_00000=0; __AS__Local0_00000<9l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
}imp16396_end29_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 6 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Common.st"
static void __AS__Action__ActRackEnable(void){
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status!=(unsigned long)(unsigned char)0))){
if((HMI.RackEnable[LoopCount]^1)){
(HMI.RackEnable[LoopCount]=1);
}
}else{
if(HMI.RackEnable[LoopCount]){
(HMI.RackEnable[LoopCount]=0);
}
}
}imp16388_endfor0_0:;
}}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Alarm.st"
static void __AS__Action__ActTimeSplit(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{


DTGetTime(&Timestamp.DTGetTime_0);

dt2str(Timestamp.DTGetTime_0.DT1,Timestamp.Original,31);
__AS__Local3_00000=(plcstring*)Timestamp.Split.Day; __AS__Local4_00000=(plcstring*)MID(Timestamp.Original,8,6); for(__AS__Local0_00000=0; __AS__Local0_00000<10l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)Timestamp.Split.Time; __AS__Local4_00000=(plcstring*)MID(Timestamp.Original,5,15); for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

__AS__Local3_00000=(plcstring*)Timestamp.Total; __AS__Local4_00000=(plcstring*)CONCAT(Timestamp.Split.Day,CONCAT(", ",Timestamp.Split.Time)); for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 14 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Alarm.st"
static void __AS__Action__ActSystem_Warning(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
if((PMS.SysBatProtect.Field.BSA_Alarm_OC&~Edge1639200000&1?((Edge1639200000=PMS.SysBatProtect.Field.BSA_Alarm_OC&1),1):((Edge1639200000=PMS.SysBatProtect.Field.BSA_Alarm_OC&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[0].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[0].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[0].Count=(HMI_Alarm.Warning[0].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV&~Edge1639200001&1?((Edge1639200001=PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV&1),1):((Edge1639200001=PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[1].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[1].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[1].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[1].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[1].Count=(HMI_Alarm.Warning[1].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN&~Edge1639200002&1?((Edge1639200002=PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN&1),1):((Edge1639200002=PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[2].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[2].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[2].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[2].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[2].Count=(HMI_Alarm.Warning[2].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_OV&~Edge1639200003&1?((Edge1639200003=PMS.SysBatProtect.Field.BSA_Alarm_OV&1),1):((Edge1639200003=PMS.SysBatProtect.Field.BSA_Alarm_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[3].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[3].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[3].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[3].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[3].Count=(HMI_Alarm.Warning[3].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_UV&~Edge1639200004&1?((Edge1639200004=PMS.SysBatProtect.Field.BSA_Alarm_UV&1),1):((Edge1639200004=PMS.SysBatProtect.Field.BSA_Alarm_UV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[4].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[4].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[4].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[4].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[4].Count=(HMI_Alarm.Warning[4].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV&~Edge1639200005&1?((Edge1639200005=PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV&1),1):((Edge1639200005=PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[5].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[5].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[5].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[5].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[5].Count=(HMI_Alarm.Warning[5].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV&~Edge1639200006&1?((Edge1639200006=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV&1),1):((Edge1639200006=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[6].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[6].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[6].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[6].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[6].Count=(HMI_Alarm.Warning[6].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV&~Edge1639200007&1?((Edge1639200007=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV&1),1):((Edge1639200007=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[7].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[7].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[7].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[7].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[7].Count=(HMI_Alarm.Warning[7].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT&~Edge1639200008&1?((Edge1639200008=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT&1),1):((Edge1639200008=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[8].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[8].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[8].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[8].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[8].Count=(HMI_Alarm.Warning[8].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT&~Edge1639200009&1?((Edge1639200009=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT&1),1):((Edge1639200009=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[9].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[9].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[9].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[9].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[9].Count=(HMI_Alarm.Warning[9].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT&~Edge1639200010&1?((Edge1639200010=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT&1),1):((Edge1639200010=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[10].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[10].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[10].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[10].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[10].Count=(HMI_Alarm.Warning[10].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT&~Edge1639200011&1?((Edge1639200011=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT&1),1):((Edge1639200011=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[11].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[11].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[11].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[11].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[11].Count=(HMI_Alarm.Warning[11].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT&~Edge1639200012&1?((Edge1639200012=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT&1),1):((Edge1639200012=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Warning[12].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[12].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[12].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[12].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Warning[12].Count=(HMI_Alarm.Warning[12].Count+1));
}

}imp16392_else24_0:imp16392_end24_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 135 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Alarm.st"
static void __AS__Action__ActSystem_Fault(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{if((PMS.SysBatProtect.Field.BSA_Fault_OC&~Edge1639000000&1?((Edge1639000000=PMS.SysBatProtect.Field.BSA_Fault_OC&1),1):((Edge1639000000=PMS.SysBatProtect.Field.BSA_Fault_OC&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[0].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[0].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[0].Count=(HMI_Alarm.Fault[0].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_SOC_OV&~Edge1639000001&1?((Edge1639000001=PMS.SysBatProtect.Field.BSA_Fault_SOC_OV&1),1):((Edge1639000001=PMS.SysBatProtect.Field.BSA_Fault_SOC_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[1].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[1].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[1].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[1].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[1].Count=(HMI_Alarm.Fault[1].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_SOC_UN&~Edge1639000002&1?((Edge1639000002=PMS.SysBatProtect.Field.BSA_Fault_SOC_UN&1),1):((Edge1639000002=PMS.SysBatProtect.Field.BSA_Fault_SOC_UN&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[2].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[2].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[2].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[2].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[2].Count=(HMI_Alarm.Fault[2].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_OV&~Edge1639000003&1?((Edge1639000003=PMS.SysBatProtect.Field.BSA_Fault_OV&1),1):((Edge1639000003=PMS.SysBatProtect.Field.BSA_Fault_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[3].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[3].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[3].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[3].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[3].Count=(HMI_Alarm.Fault[3].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_UV&~Edge1639000004&1?((Edge1639000004=PMS.SysBatProtect.Field.BSA_Fault_UV&1),1):((Edge1639000004=PMS.SysBatProtect.Field.BSA_Fault_UV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[4].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[4].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[4].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[4].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[4].Count=(HMI_Alarm.Fault[4].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Cell_OV&~Edge1639000005&1?((Edge1639000005=PMS.SysBatProtect.Field.BSA_Fault_Cell_OV&1),1):((Edge1639000005=PMS.SysBatProtect.Field.BSA_Fault_Cell_OV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[5].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[5].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[5].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[5].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[5].Count=(HMI_Alarm.Fault[5].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Cell_UV&~Edge1639000006&1?((Edge1639000006=PMS.SysBatProtect.Field.BSA_Fault_Cell_UV&1),1):((Edge1639000006=PMS.SysBatProtect.Field.BSA_Fault_Cell_UV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[6].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[6].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[6].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[6].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[6].Count=(HMI_Alarm.Fault[6].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV&~Edge1639000007&1?((Edge1639000007=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV&1),1):((Edge1639000007=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[7].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[7].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[7].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[7].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[7].Count=(HMI_Alarm.Fault[7].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT&~Edge1639000008&1?((Edge1639000008=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT&1),1):((Edge1639000008=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[8].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[8].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[8].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[8].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[8].Count=(HMI_Alarm.Fault[8].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT&~Edge1639000009&1?((Edge1639000009=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT&1),1):((Edge1639000009=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[9].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[9].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[9].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[9].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[9].Count=(HMI_Alarm.Fault[9].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT&~Edge1639000010&1?((Edge1639000010=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT&1),1):((Edge1639000010=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[10].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[10].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[10].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[10].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[10].Count=(HMI_Alarm.Fault[10].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT&~Edge1639000011&1?((Edge1639000011=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT&1),1):((Edge1639000011=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[11].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[11].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[11].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[11].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[11].Count=(HMI_Alarm.Fault[11].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT&~Edge1639000012&1?((Edge1639000012=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT&1),1):((Edge1639000012=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT&1),0))){
if((((unsigned long)(unsigned char)HMI_Alarm.Fault[12].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[12].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[12].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[12].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Fault[12].Count=(HMI_Alarm.Fault[12].Count+1));
}
}imp16390_else24_0:imp16390_end24_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 254 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Alarm.st"
static void __AS__Action__ActSystem_Protect(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
if((PMS.SysBatProtect.Field.BSA_Prtct_OC&~Edge1639100000&1?((Edge1639100000=PMS.SysBatProtect.Field.BSA_Prtct_OC&1),1):((Edge1639100000=PMS.SysBatProtect.Field.BSA_Prtct_OC&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[0].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[0].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[0].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[0].Count=(HMI_Alarm.Protect[0].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV&~Edge1639100001&1?((Edge1639100001=PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV&1),1):((Edge1639100001=PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[1].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[1].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[1].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[1].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[1].Count=(HMI_Alarm.Protect[1].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN&~Edge1639100002&1?((Edge1639100002=PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN&1),1):((Edge1639100002=PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[2].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[2].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[2].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[2].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[2].Count=(HMI_Alarm.Protect[2].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_OV&~Edge1639100003&1?((Edge1639100003=PMS.SysBatProtect.Field.BSA_Prtct_OV&1),1):((Edge1639100003=PMS.SysBatProtect.Field.BSA_Prtct_OV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[3].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[3].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[3].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[3].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[3].Count=(HMI_Alarm.Protect[3].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_UV&~Edge1639100004&1?((Edge1639100004=PMS.SysBatProtect.Field.BSA_Prtct_UV&1),1):((Edge1639100004=PMS.SysBatProtect.Field.BSA_Prtct_UV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[4].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[4].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[4].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[4].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[4].Count=(HMI_Alarm.Protect[4].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV&~Edge1639100005&1?((Edge1639100005=PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV&1),1):((Edge1639100005=PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[5].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[5].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[5].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[5].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[5].Count=(HMI_Alarm.Protect[5].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV&~Edge1639100006&1?((Edge1639100006=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV&1),1):((Edge1639100006=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[6].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[6].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[6].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[6].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[6].Count=(HMI_Alarm.Protect[6].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV&~Edge1639100007&1?((Edge1639100007=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV&1),1):((Edge1639100007=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[7].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[7].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[7].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[7].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[7].Count=(HMI_Alarm.Protect[7].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT&~Edge1639100008&1?((Edge1639100008=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT&1),1):((Edge1639100008=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[8].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[8].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[8].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[8].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[8].Count=(HMI_Alarm.Protect[8].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT&~Edge1639100009&1?((Edge1639100009=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT&1),1):((Edge1639100009=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[9].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[9].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[9].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[9].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[9].Count=(HMI_Alarm.Protect[9].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT&~Edge1639100010&1?((Edge1639100010=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT&1),1):((Edge1639100010=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[10].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[10].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[10].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[10].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[10].Count=(HMI_Alarm.Protect[10].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT&~Edge1639100011&1?((Edge1639100011=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT&1),1):((Edge1639100011=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[11].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[11].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[11].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[11].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[11].Count=(HMI_Alarm.Protect[11].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT&~Edge1639100012&1?((Edge1639100012=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT&1),1):((Edge1639100012=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[12].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[12].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[12].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[12].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[12].Count=(HMI_Alarm.Protect[12].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding&~Edge1639100013&1?((Edge1639100013=PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding&1),1):((Edge1639100013=PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[13].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[13].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[13].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[13].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[13].Count=(HMI_Alarm.Protect[13].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM&~Edge1639100014&1?((Edge1639100014=PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM&1),1):((Edge1639100014=PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[14].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[14].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[14].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[14].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[14].Count=(HMI_Alarm.Protect[14].Count+1));
}
if((PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM&~Edge1639100015&1?((Edge1639100015=PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM&1),1):((Edge1639100015=PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[15].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[15].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[15].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[15].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[15].Count=(HMI_Alarm.Protect[15].Count+1));
}










if((PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak&~Edge1639100016&1?((Edge1639100016=PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak&1),1):((Edge1639100016=PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak&1),0))){

if((((unsigned long)(unsigned char)HMI_Alarm.Protect[17].Count==(unsigned long)(unsigned char)0))){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[17].InitialTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[17].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[17].RecentTime; __AS__Local4_00000=(plcstring*)Timestamp.Total; for(__AS__Local0_00000=0; __AS__Local0_00000<15l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
(HMI_Alarm.Protect[17].Count=(HMI_Alarm.Protect[17].Count+1));
}











}imp16391_else32_0:imp16391_end32_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 449 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Alarm.st"
static void __AS__Action__ActSystem_AlarmTab(void){
{switch(HMI.AlarmTableIndex){
case 0:{
__AS__MEMCPY(((unsigned long)(&HMI.SubBMS_AlarmTable)),((unsigned long)(&HMI_Alarm.Warning)),1760);

}break;case 1:{
__AS__MEMCPY(((unsigned long)(&HMI.SubBMS_AlarmTable)),((unsigned long)(&HMI_Alarm.Fault)),1760);

}break;case 2:{
__AS__MEMCPY(((unsigned long)(&HMI.SubBMS_AlarmTable)),((unsigned long)(&HMI_Alarm.Protect)),1760);



}break;}
}imp16389_case0_2:imp16389_endcase0_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Event.st"
static void __AS__Action__ActLOGIN(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{if((((__AS__STRING_CMP(HMI.AdminLogin.Input_Button,"")==0))^1)){
if(((__AS__STRING_CMP(HMI.AdminLogin.Input_Button,"E")==0))){
if(((((signed long)LEN(HMI.AdminLogin.Password_Internal)==(signed long)(signed long)(short)0))^1)){
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_Internal; __AS__Local4_00000=(plcstring*)LEFT(HMI.AdminLogin.Password_Internal,(LEN(HMI.AdminLogin.Password_Internal)-1)); for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_External; __AS__Local4_00000=(plcstring*)LEFT(HMI.AdminLogin.Password_External,(LEN(HMI.AdminLogin.Password_External)-1)); for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
}else if(((__AS__STRING_CMP(HMI.AdminLogin.Input_Button,"L")==0))){
if(((__AS__STRING_CMP(HMI.AdminLogin.Password_Internal,PASSWORD)==0))){
(HMI.AdminLogin.Authority=1);
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_Internal; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_External; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
}else{
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_Internal; __AS__Local4_00000=(plcstring*)CONCAT(HMI.AdminLogin.Password_Internal,HMI.AdminLogin.Input_Button); for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Password_External; __AS__Local4_00000=(plcstring*)CONCAT(HMI.AdminLogin.Password_External,"*"); for(__AS__Local0_00000=0; __AS__Local0_00000<16l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
__AS__Local3_00000=(plcstring*)HMI.AdminLogin.Input_Button; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
}imp16387_else0_0:imp16387_end0_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 22 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_Event.st"
static void __AS__Action__ActDeviceReset(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{if(HMI.AdminDeviceReset){


for((LoopNum=0);LoopNum<=18;LoopNum+=1){
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[LoopNum].InitialTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[LoopNum].RecentTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Fault[LoopNum].ClearTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(HMI_Alarm.Fault[LoopNum].Count=0);
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[LoopNum].InitialTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[LoopNum].RecentTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Warning[LoopNum].ClearTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(HMI_Alarm.Warning[LoopNum].Count=0);
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[LoopNum].InitialTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[LoopNum].RecentTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
__AS__Local3_00000=(plcstring*)HMI_Alarm.Protect[LoopNum].ClearTime; __AS__Local4_00000=(plcstring*)""; for(__AS__Local0_00000=0; __AS__Local0_00000<0l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(HMI_Alarm.Protect[LoopNum].Count=0);

}imp16385_endfor1_0:;

(HMI.DialogBox.Protect_Trigger=0);


}
}imp16385_else0_0:imp16385_end0_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/HMI_DeviceLoading.st"
static void __AS__Action__ActDeviceloading(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
TON(&TON_0);

switch(HMI.DeviceLoading.DeviceLoadingStep){
case 0:{
(HMI.DeviceLoading.RackLoading=0);

}break;case 1:{

(TON_0.IN=1);

(HMI.DeviceLoading.Trigger=0);

(HMI.DeviceLoading.DeviceLoadingStep=2);
(HMI.DeviceLoading.RackLoading=1);



}break;case 2:{

(HMI.DeviceLoading.RackLoading=2);

if((((unsigned long)(unsigned char)HMI.DeviceLoading.SetRackNum!=(unsigned long)(unsigned char)0))){

(HMI.DeviceLoading.DeviceLoading_Max=(HMI.DeviceLoading.DeviceLoadingStep+HMI.DeviceLoading.SetRackNum));

(HMI.DeviceLoading.DeviceLoadingStep=3);

}else{
(HMI.DeviceLoading.Trigger=1);
}

}break;case 3:{


for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status!=(unsigned long)(unsigned char)0))){
if((HMI.RackEnable[LoopCount]^1)){
(HMI.DeviceLoading.RackLoading=(HMI.DeviceLoading.RackLoading+1));
(HMI.RackEnable[LoopCount]=1);
}

}
}imp16386_endfor2_0:;

if((((unsigned long)(unsigned char)HMI.DeviceLoading.RackLoading==(unsigned long)(unsigned char)HMI.DeviceLoading.DeviceLoading_Max))){
(HMI.DeviceLoading.DeviceLoadingStep=4);
(TON_0.IN=0);
}
}break;case 4:{

for((LoopCount=0);LoopCount<=18;LoopCount+=1){
if((((unsigned long)(unsigned char)HMI_Alarm.Protect[LoopCount].Count>(unsigned long)(unsigned char)0))){
(HMI.DialogBox.Protect_Trigger=1);
__AS__Local3_00000=(plcstring*)HMI.DialogBox.ProtectName; __AS__Local4_00000=(plcstring*)HMI_Alarm.Protect[LoopCount].Name; for(__AS__Local0_00000=0; __AS__Local0_00000<30l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
goto imp16386_endfor6_0;
}
}imp16386_endfor6_0:;

(HMI.DeviceLoading.DeviceLoadingStep=5);


}break;case 5:{

(Sys.DeviceloadingDone=1);


}break;}

if(TON_0.Q){
(HMI.DialogBox.LoadingError_Trigger=1);
}
}imp16386_else8_0:imp16386_end8_0:;}
#line 105 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.nodebug"

void __AS__ImplInitMain_st(void){__BUR__ENTRY_INIT_FUNCT__();}

signed long __AS__STRING_CMP(char* pstr1, char* pstr2)
{while (*pstr1 != 0 && *pstr1 == *pstr2){ pstr1++;pstr2++; } return (*pstr1 == 0 && *pstr2 != 0) ? -1 : (*pstr1 != 0 && *pstr2 == 0) ? 1 : *pstr1 - *pstr2;}

unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length)
{memcpy((char*)pDest, (char*)pSrc, length); return pDest + length;}

__asm__(".section \".plc\"");
__asm__(".ascii \"iecfile \\\"Logical/Global.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MbRTU/MbRTU.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/SubBMS.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/HMI.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/PMS_CAN.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/LAMP.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCP/AsMbTCP.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCPS/AsMbTCPS.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DRV_mbus/DRV_mbus.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DataObj/DataObj.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/ArCan/ArCan.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpServer/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpFile/MpFile.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpFile/MpFileError.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpFile/MpFileAlarm.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCP/AsMbTCP.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCPS/AsMbTCPS.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DRV_mbus/DRV_mbus.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DataObj/DataObj.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/ArCan/ArCan.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpServer/MpServer.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpFile/MpFile.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Global.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MbRTU/MbRTU.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/gVariable/Variables.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCP/AsMbTCP.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMbTCPS/AsMbTCPS.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DRV_mbus/DRV_mbus.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/DataObj/DataObj.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/ArCan/ArCan.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpServer/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/HMI/HMI_DataParsing/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/HMI/HMI_DataParsing/Types.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/HMI_DataPa/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/HMI_DataPa/Main.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DataParsing/Main.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/CP0484/X20CP0484/HMI_DataPa/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'PASSWORD'\\n\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM'\\n\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM_MINUS_1'\\n\"");
__asm__(".ascii \"plcdata_const 'Rack_HMI'\\n\"");
__asm__(".ascii \"plcdata_const 'HMI'\\n\"");
__asm__(".ascii \"plcdata_const 'HMI_Alarm'\\n\"");
__asm__(".ascii \"plcdata_const 'PMS'\\n\"");
__asm__(".previous");
