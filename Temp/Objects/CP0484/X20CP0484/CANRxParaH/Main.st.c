#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxParaH/Mainst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.st"
void __BUR__ENTRY_INIT_FUNCT__(void){{


}}
#line 5 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 7 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{


(SubBMS_Calculator.BSA[0]=*(struct BSA_typ*)&SubBMS.Rack1.BSA);
(SubBMS_Calculator.BSA[1]=*(struct BSA_typ*)&SubBMS.Rack2.BSA);
(SubBMS_Calculator.BSA[2]=*(struct BSA_typ*)&SubBMS.Rack3.BSA);
(SubBMS_Calculator.BSA[3]=*(struct BSA_typ*)&SubBMS.Rack4.BSA);

(SubBMS.Rack1.BMA.Field=*(struct BMAN_Field_typ*)&SubBMS_Calculator.BMA[0].Field);
(SubBMS.Rack2.BMA.Field=*(struct BMAN_Field_typ*)&SubBMS_Calculator.BMA[1].Field);
(SubBMS.Rack3.BMA.Field=*(struct BMAN_Field_typ*)&SubBMS_Calculator.BMA[2].Field);
(SubBMS.Rack4.BMA.Field=*(struct BMAN_Field_typ*)&SubBMS_Calculator.BMA[3].Field);

__AS__Action__PMS_SysBatCal();
__AS__Action__PMS_SysBatPWR();
__AS__Action__PMS_SysCell_Volt_Location();
__AS__Action__PMS_SysCell_Temps_Location();
__AS__Action__PMS_SysBatProtect();
__AS__Action__PMS_SysBatDIO();
__AS__Action__PMS_BRACal();
__AS__Action__PMS_BRAPWR_A();
__AS__Action__PMS_BRAPWR_B();
__AS__Action__PMS_BRACellV();
__AS__Action__PMS_BRACellT();
__AS__Action__PMS_BRACellDiv();
__AS__Action__PMS_BRA_VTPos();
__AS__Action__PMS_BAR_Alarm();
__AS__Action__PMS_BAR_Protect();
__AS__Action__PMS_BAR_DIO();

__AS__Action__System_RackState();
__AS__Action__System_RackVolt();
__AS__Action__System_RackCurr();
__AS__Action__System_RackTotal();
}}
#line 41 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 43 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{


}}
#line 46 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysBatCal(void){
{
(PMS.SysBatCal.Field.BSA_Volt_Total=(-32767));
(PMS.SysBatCal.Field.BSA_Curr_Total=0);
(PMS.SysBatCal.Field.BSA_SOC=0);
(PMS.SysBatDIO.Field.BSA_SOH=0);

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if(HMI.RackEnable[LoopCount]){
(PMS.SysBatCal.Field.BSA_Curr_Total=(PMS.SysBatCal.Field.BSA_Curr_Total+SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Curr_Total));
(PMS.SysBatCal.Field.BSA_SOC=(PMS.SysBatCal.Field.BSA_SOC+SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOC));
(PMS.SysBatDIO.Field.BSA_SOH=(PMS.SysBatDIO.Field.BSA_SOH+SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOH));

if(((SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total>PMS.SysBatCal.Field.BSA_Volt_Total))){
(PMS.SysBatCal.Field.BSA_Volt_Total=SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total);
}
}
}imp16395_endfor0_0:;

}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 24 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysBatPWR(void){
{(PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit=(-32767));
(PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit=(-32767));
(PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit=(-32767));
(PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit=(-32767));

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if(HMI.RackEnable[LoopCount]){
if(((SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWCont>PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit))){
(PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit=SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWCont);
}
if(((SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWCont>PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit))){
(PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit=SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWCont);
}
if(((SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWPeak>PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit))){
(PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit=SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWPeak);
}
if(((SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWPeak>PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit))){
(PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit=SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWPeak);
}

}
}imp16397_endfor0_0:;


}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 52 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysCell_Volt_Location(void){
{

(PMS.SysCellVolt.Field.BSA_Cell_MaxV=(-32767));
(PMS.SysCellVolt.Field.BSA_Cell_MinV=32767);

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if(HMI.RackEnable[LoopCount]){
if(((SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV>PMS.SysCellVolt.Field.BSA_Cell_MaxV))){

(PMS.SysCellVolt.Field.BSA_Cell_MaxV=SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);

(PMS.SysCellV_TPos.Field.BSA_Rack_MaxV_Location=(LoopCount+1));
(PMS.SysCellV_TPos.Field.BSA_Cell_MaxV_Location=(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);
}

if(((SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MinV<PMS.SysCellVolt.Field.BSA_Cell_MinV))){

(PMS.SysCellVolt.Field.BSA_Cell_MinV=SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MinV);

(PMS.SysCellV_TPos.Field.BSA_Rack_MinV_Location=(LoopCount+1));
(PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location=(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location);
}

}
}imp16400_endfor0_0:;

(PMS.SysCellVolt.Field.BSA_Cell_AVGV=((PMS.SysCellVolt.Field.BSA_Cell_MaxV+PMS.SysCellVolt.Field.BSA_Cell_MinV)/2));
(PMS.SysCellVolt.Field.BSA_Cell_DeviV=(PMS.SysCellVolt.Field.BSA_Cell_MaxV-PMS.SysCellVolt.Field.BSA_Cell_MinV));

}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysCell_Temps_Location(void){
{

(PMS.SysCellTemps.Field.BSA_Cell_MaxT=(-32767));
(PMS.SysCellTemps.Field.BSA_Cell_MinT=32767);

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if(HMI.RackEnable[LoopCount]){
if(((SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT>PMS.SysCellTemps.Field.BSA_Cell_MaxT))){

(PMS.SysCellTemps.Field.BSA_Cell_MaxT=SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);

(PMS.SysCellV_TPos.Field.BSA_Rack_MaxT_Location=(LoopCount+1));
(PMS.SysCellV_TPos.Field.BSA_Cell_MaxT_Location=(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
}

if(((SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MinT<PMS.SysCellTemps.Field.BSA_Cell_MinT))){

(PMS.SysCellTemps.Field.BSA_Cell_MinT=SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MinT);

(PMS.SysCellV_TPos.Field.BSA_Rack_MinT_Location=(LoopCount+1));
(PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location=(unsigned char)SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location);
}

}
}imp16399_endfor0_0:;

(PMS.SysCellTemps.Field.BSA_Cell_AVGT=((PMS.SysCellTemps.Field.BSA_Cell_MaxT+PMS.SysCellTemps.Field.BSA_Cell_MinT)/2));
(PMS.SysCellTemps.Field.BSA_Cell_DeviT=(PMS.SysCellTemps.Field.BSA_Cell_MaxT-PMS.SysCellTemps.Field.BSA_Cell_MinT));


}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 121 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysBatProtect(void){
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){
if((SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC|SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC)){

(PMS.SysBatProtect.Field.BSA_Prtct_OC=1);
(Sys.ProtectSig=1);
}else if((SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC|SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC)){

(PMS.SysBatProtect.Field.BSA_Fault_OC=1);
(Sys.FaultSig=1);

}else if((SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC|SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC)){

(PMS.SysBatProtect.Field.BSA_Alarm_OC=1);
(Sys.AlarmSig=1);
}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV){

(PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV){

(PMS.SysBatProtect.Field.BSA_Fault_SOC_OV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV){

(PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un){

(PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un){

(PMS.SysBatProtect.Field.BSA_Fault_SOC_UN=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un){

(PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_OV){

(PMS.SysBatProtect.Field.BSA_Prtct_OV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_OV){

(PMS.SysBatProtect.Field.BSA_Fault_OV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_OV){

(PMS.SysBatProtect.Field.BSA_Alarm_OV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_UV){

(PMS.SysBatProtect.Field.BSA_Prtct_UV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_UV){

(PMS.SysBatProtect.Field.BSA_Fault_UV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_UV){

(PMS.SysBatProtect.Field.BSA_Alarm_UV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV){

(PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV){

(PMS.SysBatProtect.Field.BSA_Fault_Cell_OV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV){

(PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV){

(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV){

(PMS.SysBatProtect.Field.BSA_Fault_Cell_UV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV){

(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV){

(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV){

(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV){

(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT){

(PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT){

(PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT){

(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT=1);
(Sys.ProtectSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT){

(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT=1);
(Sys.FaultSig=1);

}else if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT){

(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT=1);
(Sys.AlarmSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err){

(PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding=1);
(Sys.ProtectSig=1);

}
if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err){

(PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM=1);
(Sys.ProtectSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err){

(PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM=1);
(Sys.ProtectSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err){

(PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak=1);
(Sys.ProtectSig=1);

}

if(SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV){

(PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV=1);
(Sys.ProtectSig=1);

}


}imp16398_endfor0_0:;


}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 382 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_SysBatDIO(void){
{
(PMS.SysBatDIO.Field.BSA_SOH=0);

for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){
(PMS.SysBatDIO.Field.BSA_SOH=(PMS.SysBatDIO.Field.BSA_SOH+SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOH));
}imp16396_endfor0_0:;
if((((unsigned long)(unsigned char)HMI.DeviceLoading.SetRackNum!=(unsigned long)(unsigned char)0))){
(PMS.SysBatDIO.Field.BSA_SOH=(PMS.SysBatDIO.Field.BSA_SOH/HMI.DeviceLoading.SetRackNum));
}

}imp16396_else1_0:imp16396_end1_0:;}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 396 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRACal(void){
{
(PMS.BRACal.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));

(PMS.BRACal.Field.BRA_Volt_Total=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total);
(PMS.BRACal.Field.BRA_Curr_Total=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Curr_Total);
(PMS.BRACal.Field.BRA_SOC=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_SOC);


}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 406 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRAPWR_A(void){
{
(PMS.BRAPWR_A.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRAPWR_A.Field.BRA_SOH=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_SOH);
(PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_CHAPWCont);
(PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_CHAPWPeak);

}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 414 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRAPWR_B(void){
{
(PMS.BRAPWR_B.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_DisCHAPWCont);
(PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_DisCHAPWPeak);

}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 421 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRACellV(void){
{
(PMS.BRACellV.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRACellV.Field.BRA_Cell_Max_Voltage=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);
(PMS.BRACellV.Field.BRA_Cell_Min_Voltage=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_MinV);
(PMS.BRACellV.Field.BRA_Cell_AGV_Voltage=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);



}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 431 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRACellT(void){
{
(PMS.BRACellT.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRACellT.Field.BRA_Cell_Max_Temperature=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);
(PMS.BRACellT.Field.BRA_Cell_Min_Temperature=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_MinT);
(PMS.BRACellT.Field.BRA_Cell_AGV_Temperature=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);



}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 441 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRACellDiv(void){
{
(PMS.BRACellDiv.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_DeviT);
(PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_DeviV);



}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 450 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BRA_VTPos(void){
{
(PMS.BRA_VTPos.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));
(PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location=(unsigned char)SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);
(PMS.BRA_VTPos.Field.BRA_Min_Cell_V_Location=(unsigned char)SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location);
(PMS.BRA_VTPos.Field.BRA_Max_Cell_T_Location=(unsigned char)SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
(PMS.BRA_VTPos.Field.BRA_Min_Cell_T_Location=(unsigned char)SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location);



}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 461 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BAR_Alarm(void){
{
(PMS.BAR_Alarm.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));

(PMS.BAR_Alarm.Field.BRA_Alarm_SOC_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV);
(PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un);
(PMS.BAR_Alarm.Field.BRA_Alarm_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_OV);
(PMS.BAR_Alarm.Field.BRA_Alarm_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_UV);
(PMS.BAR_Alarm.Field.BRA_Alarm_Cell_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV);
(PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV);
(PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV);
(PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT);
(PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT);
(PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_UT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT);
(PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT);



(PMS.BAR_Alarm.Field.BRA_Fault_SOC_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV);
(PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un);
(PMS.BAR_Alarm.Field.BRA_Fault_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_OV);
(PMS.BAR_Alarm.Field.BRA_Fault_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_UV);
(PMS.BAR_Alarm.Field.BRA_Fault_Cell_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV);
(PMS.BAR_Alarm.Field.BRA_Fault_Cell_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV);
(PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV);
(PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT);
(PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT);
(PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_UT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT);
(PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT);



}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 494 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BAR_Protect(void){
{
(PMS.BAR_Protect.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));

(PMS.BAR_Protect.Field.BRA_Prtct_SOC_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV);
(PMS.BAR_Protect.Field.BRA_Prtct_SOC_UN=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un);
(PMS.BAR_Protect.Field.BRA_Prtct_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_OV);
(PMS.BAR_Protect.Field.BRA_Prtct_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_UV);
(PMS.BAR_Protect.Field.BRA_Prtct_Cell_OV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV);
(PMS.BAR_Protect.Field.BRA_Prtct_Cell_UV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV);
(PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaV=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV);
(PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT);
(PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_OT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT);
(PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_UT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT);
(PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaT=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT);


(PMS.BAR_Protect.Field.BRA_Prtct_InternalCOM=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err);
(PMS.BAR_Protect.Field.BRA_Prtct_ExternalCOM=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err);
(PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err);
(PMS.BAR_Protect.Field.BRA_Prtct_WaterLeak=SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err);




}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 520 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/PMS_Calculator.st"
static void __AS__Action__PMS_BAR_DIO(void){
{
(PMS.BAR_DIO.Field.BRA_Rack_Num=((unsigned short)HMI.RackIndex+1));











(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD1=SubBMS_Calculator.BSA[HMI.RackIndex].Modul1_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD2=SubBMS_Calculator.BSA[HMI.RackIndex].Modul2_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD3=SubBMS_Calculator.BSA[HMI.RackIndex].Modul3_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD4=SubBMS_Calculator.BSA[HMI.RackIndex].Modul4_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD5=SubBMS_Calculator.BSA[HMI.RackIndex].Modul5_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD6=SubBMS_Calculator.BSA[HMI.RackIndex].Modul6_Info.Field.OPS_Waterleak_Err);
(PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD7=SubBMS_Calculator.BSA[HMI.RackIndex].Modul7_Info.Field.OPS_Waterleak_Err);

}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/System_HMI.st"
static void __AS__Action__System_RackState(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

switch(SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status){
case 0:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"NONE"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 1:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"IDEL"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 2:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"STANDBY"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 3:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"READY"; for(__AS__Local0_00000=0; __AS__Local0_00000<5l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 4:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"RUN"; for(__AS__Local0_00000=0; __AS__Local0_00000<3l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 5:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"PROTECT"; for(__AS__Local0_00000=0; __AS__Local0_00000<7l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;case 6:{__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_State[LoopCount]; __AS__Local4_00000=(plcstring*)"STOP"; for(__AS__Local0_00000=0; __AS__Local0_00000<4l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}break;}
}imp16402_endfor0_0:;
}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 17 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/System_HMI.st"
static void __AS__Action__System_RackVolt(void){
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){
real2str(SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total,HMI.SystemRackInfo.RACK_BRA_Volt_Total[LoopCount],21);
}imp16404_endfor0_0:;
}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 23 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/System_HMI.st"
static void __AS__Action__System_RackCurr(void){
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

real2str(SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Curr_Total,HMI.SystemRackInfo.RACK_BRA_Curr_Total[LoopCount],21);
}imp16401_endfor0_0:;
}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"
#line 30 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/System_HMI.st"
static void __AS__Action__System_RackTotal(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{for((LoopCount=0);LoopCount<=RACK_MAXNUM_MINUS_1;LoopCount+=1){

if(HMI.RackEnable[LoopCount]){
__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_BRA_Total[LoopCount]; __AS__Local4_00000=(plcstring*)CONCAT(HMI.SystemRackInfo.RACK_BRA_Volt_Total[LoopCount],CONCAT("(V), ",CONCAT(HMI.SystemRackInfo.RACK_BRA_Curr_Total[LoopCount],"(A)"))); for(__AS__Local0_00000=0; __AS__Local0_00000<20l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}else{
__AS__Local3_00000=(plcstring*)HMI.SystemRackInfo.RACK_BRA_Total[LoopCount]; __AS__Local4_00000=(plcstring*)"Not Used"; for(__AS__Local0_00000=0; __AS__Local0_00000<8l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
}
}imp16403_endfor0_0:;
}}
#line 48 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/PMS_Calculator/Types.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/PMS_Calculator/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxParaH/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxParaH/Main.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/PMS_Calculator/Main.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM'\\n\"");
__asm__(".ascii \"plcdata_const 'RACK_MAXNUM_MINUS_1'\\n\"");
__asm__(".previous");
