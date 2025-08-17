#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANTxPMS/ArCanSendst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{

(ArCanSender.enable=1);


__AS__Local3_00000=(plcstring*)ArCanSender.senderDeviceName; __AS__Local4_00000=(plcstring*)"IF6.ST6.IF1"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(ArCanSender.Baudrate=500000);

(ArCanSender.Format=arCAN_11BIT);















}}
#line 27 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"
#line 30 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

__AS__Action__ActPMSDATATxParshing();

(timerCount=(timerCount+1));
if((((unsigned long)timerCount>=(unsigned long)2))){
(timerCount=0);
(step=(step+1));
if((((unsigned long)(unsigned char)step>(unsigned long)(unsigned char)19))){
(step=0);
}
if((((signed long)ArCanSender.step==(signed long)3))){
(ArCanSender.step=10);
}
}





switch(step){
case 0:{
(ArCanSender.ID=1280);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysBatProduct.Value)),8);

}break;case 1:{
(ArCanSender.ID=1281);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysBatCal.Value)),8);

}break;case 2:{
(ArCanSender.ID=1282);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysBatPWR.Value)),8);

}break;case 3:{
(ArCanSender.ID=1283);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysCellVolt.Value)),8);

}break;case 4:{
(ArCanSender.ID=1284);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysCellTemps.Value)),8);

}break;case 5:{
(ArCanSender.ID=1285);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysCellV_TPos.Value)),8);

}break;case 6:{
(ArCanSender.ID=1286);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysBatProtect.Value)),8);

}break;case 8:{
(ArCanSender.ID=1287);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.SysBatDIO.Value)),8);

}break;case 9:{
(ArCanSender.ID=1288);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRACal.Value)),8);
}break;case 10:{
(ArCanSender.ID=1290);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRAPWR_A.Value)),8);

}break;case 11:{
(ArCanSender.ID=1291);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRAPWR_B.Value)),8);

}break;case 12:{
(ArCanSender.ID=1292);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRACellV.Value)),8);

}break;case 13:{
(ArCanSender.ID=1293);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRACellT.Value)),8);

}break;case 14:{
(ArCanSender.ID=1294);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRACellDiv.Value)),8);

}break;case 15:{
(ArCanSender.ID=1295);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BRA_VTPos.Value)),8);

}break;case 16:{
(ArCanSender.ID=1296);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BAR_Alarm.Value)),8);

}break;case 17:{
(ArCanSender.ID=1297);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BAR_Protect.Value)),8);

}break;case 18:{
(ArCanSender.ID=1298);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&PMS.BAR_DIO.Value)),8);

}break;}




if((((unsigned long)ArCanSender.successCount!=(unsigned long)successCountOld))){
(successCountOld=ArCanSender.successCount);
(ArCanSender.ArCanSend_0.SendFrame=0);
(ArCanSender.step=3);
}



__AS__Action__ActionArCanSender();



}}
#line 139 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"
#line 142 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{

(ArCanSender.ArCanSend_0.Enable=0);
ArCanSend(&ArCanSender.ArCanSend_0);
}}
#line 146 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/Action.st"
static void __AS__Action__ActionArCanSender(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{
switch(ArCanSender.step){
case 0:{

if((((unsigned long)(unsigned char)ArCanSender.enable==(unsigned long)(unsigned char)1))){
(ArCanSender.step=1);
}

}break;case 1:{
(ArCanSender.ArCanSetBaudrate_0.Execute=1);
__AS__Local3_00000=(plcstring*)ArCanSender.ArCanSetBaudrate_0.DeviceName; __AS__Local4_00000=(plcstring*)ArCanSender.senderDeviceName; for(__AS__Local0_00000=0; __AS__Local0_00000<80l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(ArCanSender.ArCanSetBaudrate_0.Baudrate=ArCanSender.Baudrate);

ArCanSetBaudrate(&ArCanSender.ArCanSetBaudrate_0);

if((((unsigned long)(unsigned char)ArCanSender.ArCanSetBaudrate_0.Done==(unsigned long)(unsigned char)1))){
(gSignalCheck.Can_HardwareCheck2=1);
(ArCanSender.step=2);
}else if((((unsigned long)(unsigned char)ArCanSender.ArCanSetBaudrate_0.Error==(unsigned long)(unsigned char)1))){
(ArCanSender.lastError=ArCanSender.ArCanSetBaudrate_0.StatusID);
(ArCanSender.errorCount=(ArCanSender.errorCount+1));
(ArCanSender.step=255);
}


}break;case 2:{
(ArCanSender.ArCanSend_0.Enable=1);
__AS__Local3_00000=(plcstring*)ArCanSender.ArCanSend_0.DeviceName; __AS__Local4_00000=(plcstring*)ArCanSender.senderDeviceName; for(__AS__Local0_00000=0; __AS__Local0_00000<80l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

if((((unsigned long)(unsigned char)ArCanSender.ArCanSend_0.Active==(unsigned long)(unsigned char)1))){
(ArCanSender.step=3);
(gSignalCheck.Can_SendCheck=1);
}else if((((unsigned long)(unsigned char)ArCanSender.ArCanSend_0.Error==(unsigned long)(unsigned char)1))){
(ArCanSender.errorCount=(ArCanSender.errorCount+1));
(ArCanSender.lastError=ArCanSender.ArCanSend_0.StatusID);
(ArCanSender.step=255);
}


}break;case 3:{


if((((unsigned long)(unsigned char)ArCanSender.enable==(unsigned long)(unsigned char)0))){
(ArCanSender.step=254);
}


}break;case 10:{

if((((unsigned long)ArCanSender.ArCanSend_0.NumberOfFreeBuffers>(unsigned long)0))){

(ArCanSender.ArCanSend_0.Frame.DataLength=8);
(ArCanSender.ArCanSend_0.Frame.ID=ArCanSender.ID);
(ArCanSender.ArCanSend_0.Frame.Format=ArCanSender.Format);
(ArCanSender.ArCanSend_0.SendFrame=1);

(ArCanSender.successCount=(ArCanSender.successCount+1));
}else{
(ArCanSender.ArCanSend_0.SendFrame=0);
(ArCanSender.waitCounter=(ArCanSender.waitCounter+1));
}


if((((unsigned long)(unsigned char)ArCanSender.ArCanSend_0.Error==(unsigned long)(unsigned char)1))){
(ArCanSender.lastError=ArCanSender.ArCanSend_0.StatusID);
(ArCanSender.errorCount=(ArCanSender.errorCount+1));
(ArCanSender.step=255);
}

if((((unsigned long)(unsigned char)ArCanSender.enable==(unsigned long)(unsigned char)0))){
(ArCanSender.step=254);
}


}break;case 254:{
(ArCanSender.ArCanSend_0.Enable=0);
(ArCanSender.step=0);

}break;case 255:{
(ArCanSender.ArCanSend_0.Enable=0);
if((((unsigned long)(unsigned char)ArCanSender.enable==(unsigned long)(unsigned char)0))){
(ArCanSender.step=254);
}


}break;}

ArCanSend(&ArCanSender.ArCanSend_0);


}}
#line 147 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/PMSDataTxParsing.st"
static void __AS__Action__ActPMSDATATxParshing(void){
{
(PMS.SysBatProduct.Value[0]=(((plcdword)((plcdword)PMS.SysBatProduct.Field.BSA_Production_Num<<24))|((plcdword)((plcdword)PMS.SysBatProduct.Field.BSA_Production_Type<<16))|(plcdword)PMS.SysBatProduct.Field.BSA_Production_Year));
(PMS.SysBatProduct.Value[1]=(((plcdword)((plcdword)PMS.SysBatProduct.Field.BSA_Production_BSA_Parallel<<16))|((plcdword)((plcdword)PMS.SysBatProduct.Field.BSA_Production_BSA_Serial<<8))|(plcdword)PMS.SysBatProduct.Field.BSA_Production_VER));


(PMS.SysBatCal.Value[0]=(((plcdword)((plcdword)((PMS.SysBatCal.Field.BSA_Curr_Total*10)>=0.0?(PMS.SysBatCal.Field.BSA_Curr_Total*10)+0.5:(PMS.SysBatCal.Field.BSA_Curr_Total*10)-0.5)<<16))|(plcdword)((PMS.SysBatCal.Field.BSA_Volt_Total*10)>=0.0?(PMS.SysBatCal.Field.BSA_Volt_Total*10)+0.5:(PMS.SysBatCal.Field.BSA_Volt_Total*10)-0.5)));
(PMS.SysBatCal.Value[1]=(((plcdword)((plcdword)PMS.SysBatCal.Field.BSA_Divice_Status<<16))|(plcdword)((PMS.SysBatCal.Field.BSA_SOC*10)>=0.0?(PMS.SysBatCal.Field.BSA_SOC*10)+0.5:(PMS.SysBatCal.Field.BSA_SOC*10)-0.5)));


(PMS.SysBatPWR.Value[0]=(((plcdword)((plcdword)((PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit*10)>=0.0?(PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit*10)+0.5:(PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit*10)-0.5)<<16))|(plcdword)((PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit*10)>=0.0?(PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit*10)+0.5:(PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit*10)-0.5)));
(PMS.SysBatPWR.Value[1]=(((plcdword)((plcdword)((PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit*10)>=0.0?(PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit*10)+0.5:(PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit*10)-0.5)<<16))|(plcdword)((PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit*10)>=0.0?(PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit*10)+0.5:(PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit*10)-0.5)));


(PMS.SysCellVolt.Value[0]=(((plcdword)((plcdword)((PMS.SysCellVolt.Field.BSA_Cell_MinV*1000)>=0.0?(PMS.SysCellVolt.Field.BSA_Cell_MinV*1000)+0.5:(PMS.SysCellVolt.Field.BSA_Cell_MinV*1000)-0.5)<<16))|(plcdword)((PMS.SysCellVolt.Field.BSA_Cell_MaxV*1000)>=0.0?(PMS.SysCellVolt.Field.BSA_Cell_MaxV*1000)+0.5:(PMS.SysCellVolt.Field.BSA_Cell_MaxV*1000)-0.5)));
(PMS.SysCellVolt.Value[1]=(((plcdword)((plcdword)(PMS.SysCellVolt.Field.BSA_Cell_DeviV>=0.0?PMS.SysCellVolt.Field.BSA_Cell_DeviV+0.5:PMS.SysCellVolt.Field.BSA_Cell_DeviV-0.5)<<16))|(plcdword)((PMS.SysCellVolt.Field.BSA_Cell_AVGV*1000)>=0.0?(PMS.SysCellVolt.Field.BSA_Cell_AVGV*1000)+0.5:(PMS.SysCellVolt.Field.BSA_Cell_AVGV*1000)-0.5)));


(PMS.SysCellTemps.Value[0]=(((plcdword)((plcdword)((PMS.SysCellTemps.Field.BSA_Cell_MinT*10)>=0.0?(PMS.SysCellTemps.Field.BSA_Cell_MinT*10)+0.5:(PMS.SysCellTemps.Field.BSA_Cell_MinT*10)-0.5)<<16))|(plcdword)((PMS.SysCellTemps.Field.BSA_Cell_MaxT*10)>=0.0?(PMS.SysCellTemps.Field.BSA_Cell_MaxT*10)+0.5:(PMS.SysCellTemps.Field.BSA_Cell_MaxT*10)-0.5)));
(PMS.SysCellTemps.Value[1]=(((plcdword)((plcdword)((PMS.SysCellTemps.Field.BSA_Cell_DeviT*10)>=0.0?(PMS.SysCellTemps.Field.BSA_Cell_DeviT*10)+0.5:(PMS.SysCellTemps.Field.BSA_Cell_DeviT*10)-0.5)<<16))|(plcdword)((PMS.SysCellTemps.Field.BSA_Cell_AVGT*10)>=0.0?(PMS.SysCellTemps.Field.BSA_Cell_AVGT*10)+0.5:(PMS.SysCellTemps.Field.BSA_Cell_AVGT*10)-0.5)));


(PMS.SysCellV_TPos.Value[0]=(((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location<<24))|((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Rack_MinV_Location<<16))|((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location<<8))|(plcdword)PMS.SysCellV_TPos.Field.BSA_Rack_MaxV_Location));
(PMS.SysCellV_TPos.Value[1]=(((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location<<24))|((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Rack_MinT_Location<<16))|((plcdword)((plcdword)PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location<<8))|(plcdword)PMS.SysCellV_TPos.Field.BSA_Rack_MaxT_Location));


(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit0=PMS.SysBatProtect.Field.BSA_Alarm_OC);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit1=PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit2=PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit3=PMS.SysBatProtect.Field.BSA_Alarm_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit4=PMS.SysBatProtect.Field.BSA_Alarm_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit5=PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit6=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit7=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit8=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit9=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit10=PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit11=PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit12=PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit13=PMS.SysBatProtect.Field.BSA_Alarm_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit14=PMS.SysBatProtect.Field.BSA_Alarm_Peak_OP);

(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit16=PMS.SysBatProtect.Field.BSA_Fault_OC);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit17=PMS.SysBatProtect.Field.BSA_Fault_SOC_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit18=PMS.SysBatProtect.Field.BSA_Fault_SOC_UN);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit19=PMS.SysBatProtect.Field.BSA_Fault_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit20=PMS.SysBatProtect.Field.BSA_Fault_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit21=PMS.SysBatProtect.Field.BSA_Fault_Cell_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit22=PMS.SysBatProtect.Field.BSA_Fault_Cell_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit23=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit24=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit25=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit26=PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit27=PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit28=PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit29=PMS.SysBatProtect.Field.BSA_Fault_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[0]))->bit30=PMS.SysBatProtect.Field.BSA_Fault_Peak_OP);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit0=PMS.SysBatProtect.Field.BSA_Prtct_OC);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit1=PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit2=PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit3=PMS.SysBatProtect.Field.BSA_Prtct_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit4=PMS.SysBatProtect.Field.BSA_Prtct_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit5=PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit6=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit7=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit8=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit9=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit10=PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit11=PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit12=PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit13=PMS.SysBatProtect.Field.BSA_Prtct_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit14=PMS.SysBatProtect.Field.BSA_Prtct_Peak_OP);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit15=PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit16=PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit17=PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit18=PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit19=PMS.SysBatProtect.Field.BSA_Prtct_InsulationReg);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit20=PMS.SysBatProtect.Field.BSA_Prtct_MDSFuse);
(((_4byte_bit_field_*)(&PMS.SysBatProtect.Value[1]))->bit21=PMS.SysBatProtect.Field.BSA_Prtct_Cooling_System);


(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit0=PMS.SysBatDIO.Field.BSA_Prelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit1=PMS.SysBatDIO.Field.BSA_Nrelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit2=PMS.SysBatDIO.Field.BSA_ProRelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit3=PMS.SysBatDIO.Field.BSA_Buzzer_DO_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit4=PMS.SysBatDIO.Field.BSA_PowerLamp_DO_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit5=PMS.SysBatDIO.Field.BSA_DO_Spare06);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit6=PMS.SysBatDIO.Field.BSA_DO_Spare07);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit7=PMS.SysBatDIO.Field.BSA_DO_Spare08);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit8=PMS.SysBatDIO.Field.BSA_DO_Spare09);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit9=PMS.SysBatDIO.Field.BSA_DO_Spare10);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit10=PMS.SysBatDIO.Field.BSA_DO_Spare11);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit11=PMS.SysBatDIO.Field.BSA_DO_Spare12);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit12=PMS.SysBatDIO.Field.BSA_PRelayAUX_DI_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit13=PMS.SysBatDIO.Field.BSA_NRelayAUX_DI_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit14=PMS.SysBatDIO.Field.BSA_EMGSwitch_DI_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit15=PMS.SysBatDIO.Field.BSA_CoolingSystem_DI_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit16=PMS.SysBatDIO.Field.BSA_MDS_DI_Status);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit17=PMS.SysBatDIO.Field.BSA_DI_Spare06);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit18=PMS.SysBatDIO.Field.BSA_DI_Spare07);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit19=PMS.SysBatDIO.Field.BSA_DI_Spare08);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit20=PMS.SysBatDIO.Field.BSA_DI_Spare09);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit21=PMS.SysBatDIO.Field.BSA_DI_Spare10);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit22=PMS.SysBatDIO.Field.BSA_DI_Spare11);
(((_4byte_bit_field_*)(&PMS.SysBatDIO.Value[0]))->bit23=PMS.SysBatDIO.Field.BSA_DI_Spare12);
(PMS.SysBatDIO.Value[1]=((plcdword)((plcdword)((PMS.SysBatDIO.Field.BSA_SOH*10)>=0.0?(PMS.SysBatDIO.Field.BSA_SOH*10)+0.5:(PMS.SysBatDIO.Field.BSA_SOH*10)-0.5)<<16)));


(PMS.BRACal.Value[0]=(((plcdword)((plcdword)((PMS.BRACal.Field.BRA_Volt_Total*10)>=0.0?(PMS.BRACal.Field.BRA_Volt_Total*10)+0.5:(PMS.BRACal.Field.BRA_Volt_Total*10)-0.5)<<16))|(plcdword)PMS.BRACal.Field.BRA_Rack_Num));
(PMS.BRACal.Value[1]=(((plcdword)((plcdword)((PMS.BRACal.Field.BRA_SOC*10)>=0.0?(PMS.BRACal.Field.BRA_SOC*10)+0.5:(PMS.BRACal.Field.BRA_SOC*10)-0.5)<<16))|(plcdword)((PMS.BRACal.Field.BRA_Curr_Total*10)>=0.0?(PMS.BRACal.Field.BRA_Curr_Total*10)+0.5:(PMS.BRACal.Field.BRA_Curr_Total*10)-0.5)));


(PMS.BRAPWR_A.Value[0]=(((plcdword)((plcdword)((PMS.BRAPWR_A.Field.BRA_SOH*10)>=0.0?(PMS.BRAPWR_A.Field.BRA_SOH*10)+0.5:(PMS.BRAPWR_A.Field.BRA_SOH*10)-0.5)<<16))|(plcdword)PMS.BRAPWR_A.Field.BRA_Rack_Num));
(PMS.BRAPWR_A.Value[1]=(((plcdword)((plcdword)((PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit*10)>=0.0?(PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit*10)+0.5:(PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit*10)-0.5)<<16))|(plcdword)((PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit*10)>=0.0?(PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit*10)+0.5:(PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit*10)-0.5)));


(PMS.BRAPWR_B.Value[0]=(((plcdword)((plcdword)((PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit*10)>=0.0?(PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit*10)+0.5:(PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit*10)-0.5)<<16))|(plcdword)PMS.BRACal.Field.BRA_Rack_Num));
(PMS.BRAPWR_B.Value[1]=(plcdword)((PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit*10)>=0.0?(PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit*10)+0.5:(PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit*10)-0.5));


(PMS.BRACal.Value[0]=(((plcdword)((plcdword)((PMS.BRACal.Field.BRA_Volt_Total*10)>=0.0?(PMS.BRACal.Field.BRA_Volt_Total*10)+0.5:(PMS.BRACal.Field.BRA_Volt_Total*10)-0.5)<<16))|(plcdword)PMS.BRACal.Field.BRA_Rack_Num));
(PMS.BRACal.Value[1]=(((plcdword)((plcdword)((PMS.BRACal.Field.BRA_SOC*10)>=0.0?(PMS.BRACal.Field.BRA_SOC*10)+0.5:(PMS.BRACal.Field.BRA_SOC*10)-0.5)<<16))|(plcdword)((PMS.BRACal.Field.BRA_Curr_Total*10)>=0.0?(PMS.BRACal.Field.BRA_Curr_Total*10)+0.5:(PMS.BRACal.Field.BRA_Curr_Total*10)-0.5)));


(PMS.BRACellV.Value[0]=(((plcdword)((plcdword)((PMS.BRACellV.Field.BRA_Cell_Max_Voltage*1000)>=0.0?(PMS.BRACellV.Field.BRA_Cell_Max_Voltage*1000)+0.5:(PMS.BRACellV.Field.BRA_Cell_Max_Voltage*1000)-0.5)<<16))|(plcdword)PMS.BRACellV.Field.BRA_Rack_Num));
(PMS.BRACellV.Value[1]=(((plcdword)((plcdword)((PMS.BRACellV.Field.BRA_Cell_AGV_Voltage*1000)>=0.0?(PMS.BRACellV.Field.BRA_Cell_AGV_Voltage*1000)+0.5:(PMS.BRACellV.Field.BRA_Cell_AGV_Voltage*1000)-0.5)<<16))|(plcdword)((PMS.BRACellV.Field.BRA_Cell_Min_Voltage*1000)>=0.0?(PMS.BRACellV.Field.BRA_Cell_Min_Voltage*1000)+0.5:(PMS.BRACellV.Field.BRA_Cell_Min_Voltage*1000)-0.5)));


(PMS.BRACellT.Value[0]=(((plcdword)((plcdword)((PMS.BRACellT.Field.BRA_Cell_Max_Temperature*10)>=0.0?(PMS.BRACellT.Field.BRA_Cell_Max_Temperature*10)+0.5:(PMS.BRACellT.Field.BRA_Cell_Max_Temperature*10)-0.5)<<16))|(plcdword)PMS.BRACellT.Field.BRA_Rack_Num));
(PMS.BRACellT.Value[1]=(((plcdword)((plcdword)((PMS.BRACellT.Field.BRA_Cell_AGV_Temperature*10)>=0.0?(PMS.BRACellT.Field.BRA_Cell_AGV_Temperature*10)+0.5:(PMS.BRACellT.Field.BRA_Cell_AGV_Temperature*10)-0.5)<<16))|(plcdword)((PMS.BRACellT.Field.BRA_Cell_Min_Temperature*10)>=0.0?(PMS.BRACellT.Field.BRA_Cell_Min_Temperature*10)+0.5:(PMS.BRACellT.Field.BRA_Cell_Min_Temperature*10)-0.5)));


(PMS.BRACellDiv.Value[0]=(((plcdword)((plcdword)(PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage>=0.0?PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage+0.5:PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage-0.5)<<16))|(plcdword)PMS.BRACellDiv.Field.BRA_Rack_Num));
(PMS.BRACellDiv.Value[1]=(plcdword)((PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature*10)>=0.0?(PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature*10)+0.5:(PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature*10)-0.5));


(PMS.BRA_VTPos.Value[0]=(((plcdword)((plcdword)PMS.BRA_VTPos.Field.BRA_Min_Cell_V_Location<<24))|((plcdword)((plcdword)PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location<<16))|(plcdword)PMS.BRA_VTPos.Field.BRA_Rack_Num));
(PMS.BRA_VTPos.Value[1]=(((plcdword)((plcdword)PMS.BRA_VTPos.Field.BRA_Min_Cell_T_Location<<8))|(plcdword)PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location));


(PMS.BAR_Alarm.Value[0]=(plcdword)PMS.BAR_Alarm.Field.BRA_Rack_Num);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit16=PMS.BAR_Alarm.Field.BRA_Alarm_OC);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit17=PMS.BAR_Alarm.Field.BRA_Alarm_SOC_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit18=PMS.BAR_Alarm.Field.BRA_Alarm_SOC_UN);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit19=PMS.BAR_Alarm.Field.BRA_Alarm_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit20=PMS.BAR_Alarm.Field.BRA_Alarm_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit21=PMS.BAR_Alarm.Field.BRA_Alarm_Cell_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit22=PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit23=PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit24=PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit25=PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit26=PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit27=PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit28=PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit29=PMS.BAR_Alarm.Field.BRA_Alarm_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[0]))->bit30=PMS.BAR_Alarm.Field.BRA_Alarm_Peak_OP);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit0=PMS.BAR_Alarm.Field.BRA_Fault_OC);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit1=PMS.BAR_Alarm.Field.BRA_Fault_SOC_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit2=PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit3=PMS.BAR_Alarm.Field.BRA_Fault_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit4=PMS.BAR_Alarm.Field.BRA_Fault_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit5=PMS.BAR_Alarm.Field.BRA_Fault_Cell_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit6=PMS.BAR_Alarm.Field.BRA_Fault_Cell_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit7=PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit8=PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit9=PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit10=PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit11=PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit12=PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit13=PMS.BAR_Alarm.Field.BRA_Fault_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.BAR_Alarm.Value[1]))->bit14=PMS.BAR_Alarm.Field.BRA_Fault_Peak_OP);


(PMS.BAR_Protect.Value[0]=(plcdword)PMS.BAR_Protect.Field.BRA_Rack_Num);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit16=PMS.BAR_Protect.Field.BRA_Prtct_OC);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit17=PMS.BAR_Protect.Field.BRA_Prtct_SOC_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit18=PMS.BAR_Protect.Field.BRA_Prtct_SOC_UN);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit19=PMS.BAR_Protect.Field.BRA_Prtct_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit20=PMS.BAR_Protect.Field.BRA_Prtct_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit21=PMS.BAR_Protect.Field.BRA_Prtct_Cell_OV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit22=PMS.BAR_Protect.Field.BRA_Prtct_Cell_UV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit23=PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaV);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit24=PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit25=PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_OT);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit26=PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit27=PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_UT);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit28=PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaT);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit29=PMS.BAR_Protect.Field.BRA_Prtct_Continuously_OP);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit30=PMS.BAR_Protect.Field.BRA_Prtct_Peak_OP);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[0]))->bit31=PMS.BAR_Protect.Field.BRA_Prtct_InternalCOM);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit0=PMS.BAR_Protect.Field.BRA_Prtct_ExternalCOM);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit1=PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit2=PMS.BAR_Protect.Field.BRA_Prtct_WaterLeak);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit3=PMS.BAR_Protect.Field.BRA_Prtct_InsulationReg);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit4=PMS.BAR_Protect.Field.BRA_Prtct_MDSFuse);
(((_4byte_bit_field_*)(&PMS.BAR_Protect.Value[1]))->bit5=PMS.BAR_Protect.Field.BRA_Prtct_CoolingSystem);


(PMS.BAR_DIO.Value[0]=(plcdword)PMS.BAR_DIO.Field.BRA_Rack_Num);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[0]))->bit16=PMS.BAR_DIO.Field.BRA_Prelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[0]))->bit17=PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[0]))->bit18=PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[0]))->bit19=PMS.BAR_DIO.Field.BRA_PowerLamp_DO_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[0]))->bit20=PMS.BAR_DIO.Field.BRA_Buzzer_DO_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit0=PMS.BAR_DIO.Field.BRA_PRelayAUX_DI_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit1=PMS.BAR_DIO.Field.BRA_NRelayAUX_DI_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit2=PMS.BAR_DIO.Field.BRA_EMGSwitch_DI_Status);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit3=PMS.BAR_DIO.Field.BRA_MDS_DI_Status);

(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit16=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD1);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit17=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD2);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit18=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD3);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit19=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD4);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit20=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD5);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit21=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD6);
(((_4byte_bit_field_*)(&PMS.BAR_DIO.Value[1]))->bit22=PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD7);

}}
#line 147 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.nodebug"

void __AS__ImplInitArCanSend_st(void){__BUR__ENTRY_INIT_FUNCT__();}

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
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANTxPMS/ArCanSend.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANTxPMS/ArCanSend.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'PMS'\\n\"");
__asm__(".ascii \"plcdata_const 'arCAN_11BIT'\\n\"");
__asm__(".previous");
