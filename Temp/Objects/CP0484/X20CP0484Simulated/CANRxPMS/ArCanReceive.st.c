#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxPMS/ArCanReceivest.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{

__AS__Action__ActArCanReceiver();
(ArCanReceiver.enable=1);
__AS__Local3_00000=(plcstring*)ArCanReceiver.receiverDeviceName; __AS__Local4_00000=(plcstring*)"IF6.ST6.IF1"; for(__AS__Local0_00000=0; __AS__Local0_00000<11l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(ArCanReceiver.id=0);
(ArCanReceiver.idMask=arCAN_RECEIVE_ALL);
(ArCanReceiver.format=arCAN_11BIT);
(ArCanReceiver.queueSize=128);
(ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0=0);
(ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1=28);















}}
#line 28 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"
#line 30 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{


__AS__Action__ActArCanReceiver();



if(ArCanReceiver.ArCanReceiver_0.NewDataValid){

switch(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID){

case 1792:{

if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1792))){
__AS__MEMCPY(((unsigned long)(&PMS.PMS.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);
}

}break;}

}

__AS__Action__ActPMSDATARxParshing();





if(ArCanReceiver.ArCanReceiver_0.Error){
(gComm.CAN1.bError=1);
(gComm.CAN1.bActive=0);
(gComm.CAN1.bTransmitting=0);
}else if((ArCanReceiver.ArCanReceiver_0.Active&ArCanReceiver.ArCanReceiver_0.Busy)){
(gComm.CAN1.bError=0);
(gComm.CAN1.bActive=1);

if((((unsigned long)countCANSuccessOld!=(unsigned long)ArCanReceiver.successCount))){
(countCANSuccessOld=ArCanReceiver.successCount);
(gComm.CAN1.bTransmitting=1);
(countTime=0);
}else{
(countTime=(countTime+1));
if((((unsigned long)(unsigned char)countTime>(unsigned long)(unsigned char)50))){
(gComm.CAN1.bTransmitting=0);
(countTime=0);
}
}
}else{
(gComm.CAN1.bError=0);
(gComm.CAN1.bActive=0);
(gComm.CAN1.bTransmitting=0);
}



}imp4_end3_0:;}
#line 84 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"
#line 90 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{


(ArCanReceiver.ArCanReceiver_0.Enable=0);
ArCanReceive(&ArCanReceiver.ArCanReceiver_0);

}}
#line 96 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/Action.st"
static void __AS__Action__ActArCanReceiver(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;
{

switch(ArCanReceiver.step){
case 0:{

if((((unsigned long)(unsigned char)ArCanReceiver.enable==(unsigned long)(unsigned char)1))){
(ArCanReceiver.step=1);
}

}break;case 1:{
(ArCanReceiver.ArCanSetBitTimingRegisters_0.Execute=1);
__AS__Local3_00000=(plcstring*)ArCanReceiver.ArCanSetBitTimingRegisters_0.DeviceName; __AS__Local4_00000=(plcstring*)ArCanReceiver.receiverDeviceName; for(__AS__Local0_00000=0; __AS__Local0_00000<80l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;



ArCanSetBitTimingRegisters(&ArCanReceiver.ArCanSetBitTimingRegisters_0);

if((((unsigned long)(unsigned char)ArCanReceiver.ArCanSetBitTimingRegisters_0.Done==(unsigned long)(unsigned char)1))){
(gSignalCheck.Can_HardwareCheck2=1);
(ArCanReceiver.step=2);
}else if((((unsigned long)(unsigned char)ArCanReceiver.ArCanSetBitTimingRegisters_0.Error==(unsigned long)(unsigned char)1))){
(ArCanReceiver.lastError=ArCanReceiver.ArCanSetBitTimingRegisters_0.StatusID);
(ArCanReceiver.errorCount=(ArCanReceiver.errorCount+1));
(ArCanReceiver.step=255);
}


}break;case 2:{
(ArCanReceiver.ArCanReceiver_0.Enable=1);
__AS__Local3_00000=(plcstring*)ArCanReceiver.ArCanReceiver_0.DeviceName; __AS__Local4_00000=(plcstring*)ArCanReceiver.receiverDeviceName; for(__AS__Local0_00000=0; __AS__Local0_00000<80l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(ArCanReceiver.ArCanReceiver_0.ID=ArCanReceiver.id);
(ArCanReceiver.ArCanReceiver_0.IDMask=ArCanReceiver.idMask);
(ArCanReceiver.ArCanReceiver_0.Format=ArCanReceiver.format);
(ArCanReceiver.ArCanReceiver_0.QueueSize=ArCanReceiver.queueSize);

if((((unsigned long)(unsigned char)ArCanReceiver.ArCanReceiver_0.Active==(unsigned long)(unsigned char)1))){

(gSignalCheck.Can_ReceiveCheck=1);
(ArCanReceiver.step=10);
}else if((((unsigned long)(unsigned char)ArCanReceiver.ArCanReceiver_0.Error==(unsigned long)(unsigned char)1))){
(ArCanReceiver.errorCount=(ArCanReceiver.errorCount+1));
(ArCanReceiver.lastError=ArCanReceiver.ArCanReceiver_0.StatusID);
(ArCanReceiver.step=255);
}



}break;case 10:{
if(ArCanReceiver.ArCanReceiver_0.NewDataValid){
(ArCanReceiver.successCount=(ArCanReceiver.successCount+1));


__AS__MEMCPY(((unsigned long)(&ArCanReceiver.receivedIterationCounter)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame)),4);

(ArCanReceiver.lastReceiveTimestamp=ArCanReceiver.ArCanReceiver_0.Timestamp.UTCSeconds);

(ArCanReceiver.lostFrames=(ArCanReceiver.lostFrames+ArCanReceiver.ArCanReceiver_0.NumberOfLostFrames));
}else if(ArCanReceiver.ArCanReceiver_0.Error){
(ArCanReceiver.errorCount=(ArCanReceiver.errorCount+1));
(ArCanReceiver.lastError=ArCanReceiver.ArCanReceiver_0.StatusID);
(ArCanReceiver.step=255);
}else{
__AS__MEMSET(((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID)),0,4);
}


if((((unsigned long)(unsigned char)ArCanReceiver.enable==(unsigned long)(unsigned char)0))){
(ArCanReceiver.step=254);
}


}break;case 254:{
(ArCanReceiver.ArCanReceiver_0.Enable=0);
(ArCanReceiver.step=0);

}break;case 255:{
(ArCanReceiver.ArCanReceiver_0.Enable=0);
(ArCanReceiver.step=0);
}break;default: {

}break;}

ArCanReceive(&ArCanReceiver.ArCanReceiver_0);




}}
#line 97 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/PMSDataRxParsing.st"
static void __AS__Action__ActPMSDATARxParshing(void){
{
(PMS.PMS.Field.PMS_WakeUp_CMD=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit0);
(PMS.PMS.Field.PMS_POWER_CMD=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit1);
(PMS.PMS.Field.PMS_FaultReset=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit8);
(PMS.PMS.Field.PMS_Po_RelayStatus=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit16);
(PMS.PMS.Field.PMS_Pro_RelayStatus=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit17);
(PMS.PMS.Field.PMS_Ne_RelayStatus=((_4byte_bit_field_*)(&PMS.PMS.Value[0]))->bit18);

}}
#line 97 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.nodebug"

void __AS__ImplInitArCanReceive_st(void){__BUR__ENTRY_INIT_FUNCT__();}

unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length)
{memcpy((char*)pDest, (char*)pSrc, length); return pDest + length;}

unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length)
{memset((char*)pDest, value, length); return pDest + length;}

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
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxPMS/ArCanReceive.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484/CANRxPMS/ArCanReceive.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_CAN/CANRxPMS/ArCanReceive.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'ArCanReceiver'\\n\"");
__asm__(".ascii \"plcdata_const 'PMS'\\n\"");
__asm__(".ascii \"plcdata_const 'arCAN_11BIT'\\n\"");
__asm__(".ascii \"plcdata_const 'arCAN_RECEIVE_ALL'\\n\"");
__asm__(".previous");
