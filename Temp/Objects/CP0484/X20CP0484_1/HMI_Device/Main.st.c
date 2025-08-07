#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/HMI_Device/Mainst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.st"
void __BUR__ENTRY_INIT_FUNCT__(void){{


(HMI.DeviceLoading.DeviceLoadingStep=0);
(HMI.DeviceLoading.SetRackNum=0);
(HMI.DeviceLoading.RackLoading=0);

(TON_0.PT=(30000));

}}
#line 11 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.nodebug"
#line 13 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

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
}imp1_endfor2_0:;

if((((unsigned long)(unsigned char)HMI.DeviceLoading.RackLoading==(unsigned long)(unsigned char)HMI.DeviceLoading.DeviceLoading_Max))){
(HMI.DeviceLoading.DeviceLoadingStep=4);
(TON_0.IN=0);
}
}break;case 4:{


(HMI.Step=2);
(HMI.DeviceLoading.DeviceLoadingStep=5);

}break;case 5:{

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status!=(unsigned long)(unsigned char)0))){
if((HMI.RackEnable[LoopCount]^1)){
(HMI.RackEnable[LoopCount]=1);
}
}else{
if(HMI.RackEnable[LoopCount]){
(HMI.RackEnable[LoopCount]=0);
}
}
}imp1_endfor6_0:;

}break;}

if(TON_0.Q){
(HMI.DialogBox.LoadingError_Trigger=1);
}

}imp1_else10_0:imp1_end10_0:;}
#line 90 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.nodebug"
#line 92 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{


}}
#line 95 "E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.nodebug"

void __AS__ImplInitMain_st(void){__BUR__ENTRY_INIT_FUNCT__();}

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
__asm__(".ascii \"iecfile \\\"Logical/Source/HMI/HMI_DeviceLoading/Types.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/HMI/HMI_DeviceLoading/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/HMI_Device/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/HMI_Device/Main.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/HMI/HMI_DeviceLoading/Main.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM'\\n\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM_MINUS_1'\\n\"");
__asm__(".previous");
