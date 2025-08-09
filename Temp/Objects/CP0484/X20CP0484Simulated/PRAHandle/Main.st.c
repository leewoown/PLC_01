#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/PRAHandle/Mainst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.st"
void __BUR__ENTRY_INIT_FUNCT__(void){{



(StateMa=0);

(PRARackResetCount=0);

(PRAProtectCheckDone=0);
(PRAWakeUpDone=0);

(WakeUpStep=0);
(StopStep=0);

(PRATimerProRlyOn.IN=0);
(PRATimerProRlyOn.PT=(500));
(PRATimerProRlyOff.IN=0);
(PRATimerProRlyOff.PT=(200));
(PRATimerWakeUpOff.IN=0);
(PRATimerWakeUpOff.PT=(100));
(PRATimerSeqErr.IN=0);
(PRATimerSeqErr.PT=(15000));
(PRATimerPrtErr.IN=0);
(PRATimerPrtErr.PT=(500));
}}
#line 26 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 28 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

switch(StateMa){

case 0:{

(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)0);

if((((unsigned long)(unsigned char)HMI.DeviceLoading.SetRackNum!=(unsigned long)(unsigned char)0))){
(StateMa=1);
}

if((PMS.PMS.Field.PMS_Po_RelayStatus|PMS.PMS.Field.PMS_Pro_RelayStatus|PMS.PMS.Field.PMS_Ne_RelayStatus)){
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=1);
}else{
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=0);
}

}break;case 1:{

(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)1);
if(Sys.ProtectSig){
(StateMa=2);
}else{
(Sys.ResetSig=1);

__AS__Action__ATReset();

if(PRARackResetDone){

(Sys.ResetSig=0);

(SubBMS_Calculator.BMA[0].Field.BSA_Reset=0);
(SubBMS_Calculator.BMA[1].Field.BSA_Reset=0);
(SubBMS_Calculator.BMA[2].Field.BSA_Reset=0);
(SubBMS_Calculator.BMA[3].Field.BSA_Reset=0);

(StateMa=2);
}
}

if((PMS.PMS.Field.PMS_Po_RelayStatus|PMS.PMS.Field.PMS_Pro_RelayStatus|PMS.PMS.Field.PMS_Ne_RelayStatus)){
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=1);
}else{
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=0);
}

}break;case 2:{

(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)2);


if((PMS.PMS.Field.PMS_WakeUp_CMD&(PMS.PMS.Field.PMS_FaultReset^1)&(PMS.PMS.Field.PMS_Po_RelayStatus^1)&(PMS.PMS.Field.PMS_Pro_RelayStatus^1)&(PMS.PMS.Field.PMS_Ne_RelayStatus^1)&((RealAbs(PMS.SysBatCal.Field.BSA_Curr_Total)<=50))&(Sys.ProtectSig^1))){
(StateMa=3);
}

if(Sys.AlarmSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)4);
}
if(Sys.FaultSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)5);
}
if(Sys.ProtectSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)6);

(Sys.BuzzerSig=1);

(StateMa=7);
}

if((Sys.PRly|Sys.NRly|Sys.ProRly)){
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=1);
}else{
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=0);
}

}break;case 3:{

__AS__Action__ATWakeUpSeq();

if(PRAWakeUpDone){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)3);
}

if(((PMS.PMS.Field.PMS_WakeUp_CMD^1)&(PMS.PMS.Field.PMS_FaultReset^1)&(PMS.PMS.Field.PMS_Po_RelayStatus^1)&(PMS.PMS.Field.PMS_Pro_RelayStatus^1)&(PMS.PMS.Field.PMS_Ne_RelayStatus^1)&((RealAbs(PMS.SysBatCal.Field.BSA_Curr_Total)<=50)))){
(StateMa=7);
}

if(Sys.AlarmSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)4);
}
if(Sys.FaultSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)5);
}
if(Sys.ProtectSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)6);
(Sys.BuzzerSig=1);
(StateMa=7);
}

}break;case 7:{
(Sys.StopSig=1);

__AS__Action__ATStopSeq();

if(PRAStopDone){

(StateMa=2);

(Sys.StopSig=0);

if(Sys.AlarmSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)4);
}
if(Sys.FaultSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)5);
}
if(Sys.ProtectSig){
(PMS.SysBatCal.Field.BSA_Divice_Status=(unsigned short)6);
(Sys.BuzzerSig=1);
(StateMa=7);
}

}
}break;case 8:{

(SubBMS_Calculator.BMA[0].Field.BSA_Reset=1);
(SubBMS_Calculator.BMA[1].Field.BSA_Reset=1);
(SubBMS_Calculator.BMA[2].Field.BSA_Reset=1);
(SubBMS_Calculator.BMA[3].Field.BSA_Reset=1);

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[0].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[1].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[2].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[3].Field.BSA_Reset=0);
}

(PRARackResetCount=0);

for((i=0);i<=3;i+=1){
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[i].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)1))){
(SubBMS_Calculator.BMA[i].Field.BSA_Reset=0);
(PRARackResetCount=(PRARackResetCount+1));
}
}imp4_endfor24_0:;

if((((unsigned long)(unsigned char)PRARackResetCount==(unsigned long)(unsigned char)HMI.DeviceLoading.SetRackNum))){
(PRARackResetDone=1);
}else{
(PRARackResetDone=0);
}

if(PRARackResetDone){
(StateMa=2);
(PRARackResetDone=0);
}
}break;}

TON(&PRATimerProRlyOn);
TON(&PRATimerProRlyOff);
TON(&PRATimerWakeUpOff);
TON(&PRATimerSeqErr);

}}
#line 198 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 200 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{


}}
#line 203 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Action.st"
static void __AS__Action__ATReset(void){
{if(Sys.ResetSig){

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[0].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[1].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[2].Field.BSA_Reset=0);
}
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0))){
(SubBMS_Calculator.BMA[3].Field.BSA_Reset=0);
}

(PRARackResetCount=0);

for((i=0);i<=3;i+=1){
if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[i].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)1))){
(SubBMS_Calculator.BMA[i].Field.BSA_Reset=0);
(PRARackResetCount=(PRARackResetCount+1));
}
}imp16385_endfor5_0:;


if((((unsigned long)(unsigned char)PRARackResetCount==(unsigned long)(unsigned char)HMI.DeviceLoading.SetRackNum))){
(PRARackResetDone=1);
}else{
(PRARackResetDone=0);
}
}
}imp16385_end7_0:imp16385_else0_0:imp16385_end0_0:;}
#line 205 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 36 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Action.st"
static void __AS__Action__ATWakeUpSeq(void){
{
switch(WakeUpStep){
case 0:{

(Sys.WakeUpSig=1);
(PRATimerSeqErr.IN=1);

if(Sys.WakeUpSig){
(WakeUpStep=1);
}

}break;case 1:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))){
(SubBMS_Calculator.BMA[0].Field.BSA_WakeUP=1);
}else{
(SubBMS_Calculator.BMA[0].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))|(SubBMS_Calculator.BMA[0].Field.BSA_WakeUP^1))){
(WakeUpStep=2);
}

}break;case 2:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))){
(SubBMS_Calculator.BMA[1].Field.BSA_WakeUP=1);
}else{
(SubBMS_Calculator.BMA[1].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))|(SubBMS_Calculator.BMA[1].Field.BSA_WakeUP^1))){
(WakeUpStep=3);
}

}break;case 3:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))){
(SubBMS_Calculator.BMA[2].Field.BSA_WakeUP=1);
}else{
(SubBMS_Calculator.BMA[2].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))|(SubBMS_Calculator.BMA[2].Field.BSA_WakeUP^1))){
(WakeUpStep=4);
}

}break;case 4:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))){
(SubBMS_Calculator.BMA[3].Field.BSA_WakeUP=1);
}else{
(SubBMS_Calculator.BMA[3].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))|(SubBMS_Calculator.BMA[3].Field.BSA_WakeUP^1))){
(WakeUpStep=5);
}

}break;case 5:{

(Sys.NRly=1);

(PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status=1);

if((((unsigned long)(unsigned char)Sys.NRlyAux==(unsigned long)(unsigned char)1))){
(WakeUpStep=6);
}

}break;case 6:{

(Sys.ProRly=1);

(PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status=1);

if((((unsigned long)(unsigned char)Sys.ProRlyAux==(unsigned long)(unsigned char)1))){
(WakeUpStep=7);
}

}break;case 7:{

(PRATimerProRlyOn.IN=1);

if((((unsigned long)(unsigned char)PRATimerProRlyOn.Q==(unsigned long)(unsigned char)1))){
(WakeUpStep=8);
}

}break;case 8:{

(Sys.PRly=1);

(PMS.BAR_DIO.Field.BRA_Prelay_DO_Status=1);

if((((unsigned long)(unsigned char)Sys.PRlyAux==(unsigned long)(unsigned char)1))){
(WakeUpStep=9);
}

}break;case 9:{

(PRATimerProRlyOff.IN=1);
if((((unsigned long)(unsigned char)PRATimerProRlyOff.Q==(unsigned long)(unsigned char)1))){
(WakeUpStep=10);
}

}break;case 10:{

(Sys.ProRly=0);

(PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status=0);

if((((unsigned long)(unsigned char)Sys.ProRlyAux==(unsigned long)(unsigned char)0))){
(WakeUpStep=11);
}

}break;case 11:{

(PRATimerProRlyOn.IN=0);
(PRATimerProRlyOff.IN=0);
(PRATimerSeqErr.IN=0);

(Sys.WakeUpSig=0);
(PRAWakeUpDone=1);
(WakeUpStep=0);


}break;}

}imp16387_case0_11:imp16387_endcase0_0:;}
#line 205 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"
#line 165 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Action.st"
static void __AS__Action__ATStopSeq(void){
{
switch(StopStep){
case 0:{

(Sys.StopSig=1);
(PRATimerSeqErr.IN=1);

if(Sys.StopSig){
(StopStep=1);
}

}break;case 1:{

(Sys.NRly=0);

(PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status=0);

if((((unsigned long)(unsigned char)Sys.NRlyAux==(unsigned long)(unsigned char)0))){
(StopStep=2);
}

}break;case 2:{

(PRATimerProRlyOn.IN=1);
if((((unsigned long)(unsigned char)PRATimerProRlyOn.Q==(unsigned long)(unsigned char)1))){
(StopStep=3);
}

}break;case 3:{

(Sys.PRly=0);

(PMS.BAR_DIO.Field.BRA_Prelay_DO_Status=0);

if((((unsigned long)(unsigned char)Sys.PRlyAux==(unsigned long)(unsigned char)0))){
(StopStep=4);
}

}break;case 4:{

(PRATimerProRlyOff.IN=1);
if((((unsigned long)(unsigned char)PRATimerProRlyOff.Q==(unsigned long)(unsigned char)1))){
(StopStep=5);
}

}break;case 5:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))){
(SubBMS_Calculator.BMA[0].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))|(((unsigned long)(unsigned char)SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0)))){
(StopStep=6);
}

}break;case 6:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))){
(SubBMS_Calculator.BMA[1].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))|(((unsigned long)(unsigned char)SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0)))){
(StopStep=7);
}

}break;case 7:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))){
(SubBMS_Calculator.BMA[2].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))|(((unsigned long)(unsigned char)SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0)))){
(StopStep=8);
}

}break;case 8:{

if((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)4))){
(SubBMS_Calculator.BMA[3].Field.BSA_WakeUP=0);
}

if(((((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)3))|(((unsigned long)(unsigned char)SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status==(unsigned long)(unsigned char)0)))){
(StopStep=9);
}


}break;case 9:{

(PRATimerWakeUpOff.IN=0);
(PRATimerSeqErr.IN=0);

(PRAStopDone=1);
(StopStep=9);



}break;}

}imp16386_case0_9:imp16386_endcase0_0:;}
#line 205 "E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/PRAHandle/Types.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/PRAHandle/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/PRAHandle/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/PRAHandle/Main.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/PRAHandle/Main.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM'\\n\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM_MINUS_1'\\n\"");
__asm__(".previous");
