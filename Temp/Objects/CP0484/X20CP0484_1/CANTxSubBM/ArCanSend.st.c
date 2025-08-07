#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANTxSubBM/ArCanSendst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{

(ArCanSender.enable=1);


__AS__Local3_00000=(plcstring*)ArCanSender.senderDeviceName; __AS__Local4_00000=(plcstring*)"IF7"; for(__AS__Local0_00000=0; __AS__Local0_00000<3l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;

(ArCanSender.Baudrate=500000);

(ArCanSender.Format=arCAN_11BIT);















}}
#line 27 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 30 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

__AS__Action__ActRACK1DATATxParshing();
__AS__Action__ActRACK2DATATxParshing();
__AS__Action__ActRACK3DATATxParshing();
__AS__Action__ActRACK4DATATxParshing();

(timerCount=(timerCount+1));
if((((unsigned long)timerCount>=(unsigned long)2))){
(timerCount=0);
(step=(step+1));
if((((unsigned long)(unsigned char)step>(unsigned long)(unsigned char)4))){
(step=0);
}
if((((signed long)ArCanSender.step==(signed long)3))){
(ArCanSender.step=10);
}
}

switch(step){
case 0:{
(ArCanSender.ID=1792);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&SubBMS.Rack1.BMA.Value)),8);
}break;case 1:{
(ArCanSender.ID=1793);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&SubBMS.Rack2.BMA.Value)),8);
}break;case 2:{
(ArCanSender.ID=1794);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&SubBMS.Rack3.BMA.Value)),8);
}break;case 3:{
(ArCanSender.ID=1795);
__AS__MEMCPY(((unsigned long)(&ArCanSender.ArCanSend_0.Frame.Data)),((unsigned long)(&SubBMS.Rack4.BMA.Value)),8);

}break;}


if((((unsigned long)ArCanSender.successCount!=(unsigned long)successCountOld))){
(successCountOld=ArCanSender.successCount);
(ArCanSender.ArCanSend_0.SendFrame=0);
(ArCanSender.step=3);
}



__AS__Action__ActionArCanSender();



}}
#line 78 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 81 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{

(ArCanSender.ArCanSend_0.Enable=0);
ArCanSend(&ArCanSender.ArCanSend_0);
}}
#line 85 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/CanSend.st"
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
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/RackDataTxParsing.st"
static void __AS__Action__ActRACK1DATATxParshing(void){
{(((_4byte_bit_field_*)(&SubBMS.Rack1.BMA.Value[0]))->bit0=SubBMS.Rack1.BMA.Field.BSA_WakeUP);
(((_4byte_bit_field_*)(&SubBMS.Rack1.BMA.Value[0]))->bit1=SubBMS.Rack1.BMA.Field.BSA_Mode);
(((_4byte_bit_field_*)(&SubBMS.Rack1.BMA.Value[0]))->bit8=SubBMS.Rack1.BMA.Field.BSA_Reset);

(SubBMS.Rack1.BMA.Value[1]=(((plcdword)((plcdword)SubBMS.Rack1.BMA.Field.BSA_Cell_AGV<<16))|(plcdword)SubBMS.Rack1.BMA.Field.BSA_Cell_MinV));

}}
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 9 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/RackDataTxParsing.st"
static void __AS__Action__ActRACK2DATATxParshing(void){
{(((_4byte_bit_field_*)(&SubBMS.Rack2.BMA.Value[0]))->bit0=SubBMS.Rack2.BMA.Field.BSA_WakeUP);
(((_4byte_bit_field_*)(&SubBMS.Rack2.BMA.Value[0]))->bit1=SubBMS.Rack2.BMA.Field.BSA_Mode);
(((_4byte_bit_field_*)(&SubBMS.Rack2.BMA.Value[0]))->bit8=SubBMS.Rack2.BMA.Field.BSA_Reset);

(SubBMS.Rack2.BMA.Value[1]=(((plcdword)((plcdword)SubBMS.Rack2.BMA.Field.BSA_Cell_AGV<<16))|(plcdword)SubBMS.Rack2.BMA.Field.BSA_Cell_MinV));

}}
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 17 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/RackDataTxParsing.st"
static void __AS__Action__ActRACK3DATATxParshing(void){
{(((_4byte_bit_field_*)(&SubBMS.Rack3.BMA.Value[0]))->bit0=SubBMS.Rack3.BMA.Field.BSA_WakeUP);
(((_4byte_bit_field_*)(&SubBMS.Rack3.BMA.Value[0]))->bit1=SubBMS.Rack3.BMA.Field.BSA_Mode);
(((_4byte_bit_field_*)(&SubBMS.Rack3.BMA.Value[0]))->bit8=SubBMS.Rack3.BMA.Field.BSA_Reset);

(SubBMS.Rack3.BMA.Value[1]=(((plcdword)((plcdword)SubBMS.Rack3.BMA.Field.BSA_Cell_AGV<<16))|(plcdword)SubBMS.Rack3.BMA.Field.BSA_Cell_MinV));

}}
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"
#line 25 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/RackDataTxParsing.st"
static void __AS__Action__ActRACK4DATATxParshing(void){
{(((_4byte_bit_field_*)(&SubBMS.Rack4.BMA.Value[0]))->bit0=SubBMS.Rack4.BMA.Field.BSA_WakeUP);
(((_4byte_bit_field_*)(&SubBMS.Rack4.BMA.Value[0]))->bit1=SubBMS.Rack4.BMA.Field.BSA_Mode);
(((_4byte_bit_field_*)(&SubBMS.Rack4.BMA.Value[0]))->bit8=SubBMS.Rack4.BMA.Field.BSA_Reset);

(SubBMS.Rack4.BMA.Value[1]=(((plcdword)((plcdword)SubBMS.Rack4.BMA.Field.BSA_Cell_AGV<<16))|(plcdword)SubBMS.Rack4.BMA.Field.BSA_Cell_MinV));

}}
#line 86 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANTxSubBM/ArCanSend.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANTxSubBM/ArCanSend.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANTxSubBMS/ArCanSend.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'SubBMS'\\n\"");
__asm__(".ascii \"plcdata_const 'arCAN_11BIT'\\n\"");
__asm__(".previous");
