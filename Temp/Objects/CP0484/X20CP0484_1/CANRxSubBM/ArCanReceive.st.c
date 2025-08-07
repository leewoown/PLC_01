#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANRxSubBM/ArCanReceivest.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 3 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{

__AS__Action__ActArCanReceiver();
(ArCanReceiver.enable=1);
__AS__Local3_00000=(plcstring*)ArCanReceiver.receiverDeviceName; __AS__Local4_00000=(plcstring*)"IF7"; for(__AS__Local0_00000=0; __AS__Local0_00000<3l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(ArCanReceiver.id=1536);

(ArCanReceiver.idMask=1536);
(ArCanReceiver.format=arCAN_11BIT);
(ArCanReceiver.queueSize=256);
(ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0=0);
(ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1=28);
















}}
#line 31 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 33 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{
if(CmdSim){


__AS__MEMCPY(((unsigned long)(&SubBMS)),((unsigned long)(&SubBMS_Sim)),1984);

}else{
__AS__Action__ActArCanReceiver();



if(ArCanReceiver.ArCanReceiver_0.NewDataValid){

switch(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID){

default:if(((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID>=(unsigned long)1536))&(((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID<=(unsigned long)1550)))){


if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1536))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.BSA_Product.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1537))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_Calc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1538))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_State.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1539))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1540))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_PWRCalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1541))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1542))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1543))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1544))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul1_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1545))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul2_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1546))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul3_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1547))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul4_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1548))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul5_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1549))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul6_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1550))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack1.BSA.Modul7_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}

}else if(((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID>=(unsigned long)1552))&(((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID<=(unsigned long)1566)))){

if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1552))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.BSA_Product.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1553))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_Calc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1554))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_State.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1555))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1556))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_PWRCalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1557))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1558))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1559))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1560))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul1_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1561))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul2_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1562))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul3_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1563))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul4_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1564))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul5_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1565))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul6_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1566))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack2.BSA.Modul7_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}

}else if(((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID>=(unsigned long)1568))&(((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID<=(unsigned long)1582)))){

if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1568))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.BSA_Product.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1569))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_Calc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1570))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_State.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1571))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1572))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_PWRCalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1573))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1574))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1575))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1576))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul1_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1577))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul2_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1578))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul3_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1579))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul4_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1580))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul5_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1581))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul6_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1582))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack3.BSA.Modul7_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
}else if(((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID>=(unsigned long)1584))&(((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID<=(unsigned long)1598)))){

if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1584))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.BSA_Product.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1585))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_Calc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1586))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_State.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1587))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1588))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_PWRCalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1589))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1590))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1591))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1592))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul1_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1593))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul2_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1594))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul3_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1595))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul4_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1596))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul5_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1597))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul6_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}
if((((unsigned long)ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID==(unsigned long)1598))){

__AS__MEMCPY(((unsigned long)(&SubBMS.Rack4.BSA.Modul7_Info.Value)),((unsigned long)(&ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data)),8);

}

}}

}

__AS__Action__ActRACK1DATARxParshing();
__AS__Action__ActRACK2DATARxParshing();
__AS__Action__ActRACK3DATARxParshing();
__AS__Action__ActRACK4DATARxParshing();





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

}

}imp11_end63_0:imp11_end0_0:;}
#line 400 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 406 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.st"
void _EXIT __BUR__ENTRY_EXIT_FUNCT__(void){{


(ArCanReceiver.ArCanReceiver_0.Enable=0);
ArCanReceive(&ArCanReceiver.ArCanReceiver_0);

}}
#line 412 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/CanReceiver.st"
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
#line 413 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/RackDataRxParsing.st"
static void __AS__Action__ActRACK1DATARxParshing(void){
{




(SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Type=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[0]>>0))&15));
(SubBMS.Rack1.BSA.BSA_Product.Field.BSA_SW_Ver=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[0]>>8))&15));
(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt=(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity=(SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Serial=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[1]>>16))&15));
(SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Parallel=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.BSA_Product.Value[1]>>24))&15));

(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total=(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total=(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC=(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Calc.Value[1]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH=(SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH*(1.00000001490116119385E-01)));

(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Divice_Status=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[0]>>0))&15));
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Protect_Status=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[0]>>8))&15));
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Balance=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit16);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Neg_Rly=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit17);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Pos_Rly=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit18);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_PreChar_Rly=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit19);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_MSD_AUX=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit20);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_EMG_SW=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit21);
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Water_leak=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit22);
(SubBMS.Rack1.BSA.Rack_State.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_State.Value[0]))->bit23);
(SubBMS.Rack1.BSA.Rack_State.Field.Not_Used2=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[0]>>24))&15));
(SubBMS.Rack1.BSA.Rack_State.Field.BSA_Ah=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_State.Field.Not_Used3=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_State.Value[1]>>16))&255)));

(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit0);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit1);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit2);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit3);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit4);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit5);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit6);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit7);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit8);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit9);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit10);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit11);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit12);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit13);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit14);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit15);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit16);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit17);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit18);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit19);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit20);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit21);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit22);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit23);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit24);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit25);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit26);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit27);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit28);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit29);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit30);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[0]))->bit31);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit0);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit1);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit2);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit3);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit4);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit5);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit6);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit7);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit8);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit9);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit10);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit11);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit12);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit13);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit14);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit15);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used3=(unsigned char)(((plcdword)(SubBMS.Rack1.BSA.Rack_AlarmState.Value[1]>>24))&15));

(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak*(1.00000001490116119385E-01)));

(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV*(1.00000004749745130539E-03)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV*(1.00000004749745130539E-03)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV*(1.00000004749745130539E-03)));
(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1]>>16))&255)));


(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT*(1.00000001490116119385E-01)));

(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1]>>16))&255)));

(SubBMS.Rack1.BSA.Modul1_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul1_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul1_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul1_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul1_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul1_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul1_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul1_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul1_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul2_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul2_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul2_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul2_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul2_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul2_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul2_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul2_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul2_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul3_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul3_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul3_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul3_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul3_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul3_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul3_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul3_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul3_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul4_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul4_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul4_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul4_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul4_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul4_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul4_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul4_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul4_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul5_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul5_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul5_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul5_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul5_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul5_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul5_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul5_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul5_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul6_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul6_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul6_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul6_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul6_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul6_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul6_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul6_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul6_Info.Value[1]))->bit31);

(SubBMS.Rack1.BSA.Modul7_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[0]>>0))&255)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.Volt_Total=(SubBMS.Rack1.BSA.Modul7_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[0]>>16))&255)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Volt=(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack1.BSA.Modul7_Info.Value[1]>>0))&255)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Temp=(SubBMS.Rack1.BSA.Modul7_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit16);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit17);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit18);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit19);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit20);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit21);
(SubBMS.Rack1.BSA.Modul7_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit22);
(SubBMS.Rack1.BSA.Modul7_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit23);
(SubBMS.Rack1.BSA.Modul7_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit24);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit25);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit26);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit27);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit28);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit29);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit30);
(SubBMS.Rack1.BSA.Modul7_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack1.BSA.Modul7_Info.Value[1]))->bit31);
}}
#line 413 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 290 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/RackDataRxParsing.st"
static void __AS__Action__ActRACK2DATARxParshing(void){
{




(SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Type=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[0]>>0))&15));
(SubBMS.Rack2.BSA.BSA_Product.Field.BSA_SW_Ver=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[0]>>8))&15));
(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt=(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity=(SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Serial=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[1]>>16))&15));
(SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Parallel=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.BSA_Product.Value[1]>>24))&15));

(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total=(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total=(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC=(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Calc.Value[1]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH=(SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH*(1.00000001490116119385E-01)));

(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Divice_Status=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[0]>>0))&15));
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Protect_Status=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[0]>>8))&15));
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Balance=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit16);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Neg_Rly=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit17);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Pos_Rly=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit18);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_PreChar_Rly=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit19);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_MSD_AUX=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit20);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_EMG_SW=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit21);
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Water_leak=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit22);
(SubBMS.Rack2.BSA.Rack_State.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_State.Value[0]))->bit23);
(SubBMS.Rack2.BSA.Rack_State.Field.Not_Used2=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[0]>>24))&15));
(SubBMS.Rack2.BSA.Rack_State.Field.BSA_Ah=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_State.Field.Not_Used3=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_State.Value[1]>>16))&255)));

(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit0);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit1);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit2);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit3);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit4);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit5);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit6);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit7);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit8);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit9);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit10);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit11);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit12);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit13);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit14);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit15);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit16);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit17);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit18);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit19);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit20);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit21);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit22);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit23);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit24);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit25);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit26);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit27);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit28);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit29);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit30);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[0]))->bit31);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit0);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit1);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit2);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit3);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit4);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit5);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit6);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit7);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit8);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit9);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit10);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit11);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit12);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit13);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit14);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit15);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used3=(unsigned char)(((plcdword)(SubBMS.Rack2.BSA.Rack_AlarmState.Value[1]>>24))&15));

(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak*(1.00000001490116119385E-01)));

(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV*(1.00000004749745130539E-03)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV*(1.00000004749745130539E-03)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV*(1.00000004749745130539E-03)));
(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1]>>16))&255)));


(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT*(1.00000001490116119385E-01)));

(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1]>>16))&255)));

(SubBMS.Rack2.BSA.Modul1_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul1_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul1_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul1_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul1_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul1_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul1_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul1_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul1_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul2_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul2_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul2_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul2_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul2_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul2_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul2_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul2_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul2_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul3_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul3_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul3_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul3_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul3_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul3_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul3_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul3_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul3_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul4_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul4_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul4_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul4_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul4_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul4_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul4_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul4_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul4_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul5_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul5_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul5_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul5_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul5_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul5_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul5_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul5_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul5_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul6_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul6_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul6_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul6_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul6_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul6_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul6_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul6_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul6_Info.Value[1]))->bit31);

(SubBMS.Rack2.BSA.Modul7_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[0]>>0))&255)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.Volt_Total=(SubBMS.Rack2.BSA.Modul7_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[0]>>16))&255)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Volt=(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack2.BSA.Modul7_Info.Value[1]>>0))&255)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Temp=(SubBMS.Rack2.BSA.Modul7_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit16);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit17);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit18);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit19);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit20);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit21);
(SubBMS.Rack2.BSA.Modul7_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit22);
(SubBMS.Rack2.BSA.Modul7_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit23);
(SubBMS.Rack2.BSA.Modul7_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit24);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit25);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit26);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit27);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit28);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit29);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit30);
(SubBMS.Rack2.BSA.Modul7_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack2.BSA.Modul7_Info.Value[1]))->bit31);
}}
#line 413 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 579 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/RackDataRxParsing.st"
static void __AS__Action__ActRACK3DATARxParshing(void){
{




(SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Type=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[0]>>0))&15));
(SubBMS.Rack3.BSA.BSA_Product.Field.BSA_SW_Ver=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[0]>>8))&15));
(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt=(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity=(SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Serial=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[1]>>16))&15));
(SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Parallel=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.BSA_Product.Value[1]>>24))&15));

(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total=(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total=(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC=(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Calc.Value[1]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH=(SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH*(1.00000001490116119385E-01)));

(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Divice_Status=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[0]>>0))&15));
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Protect_Status=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[0]>>8))&15));
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Balance=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit16);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Neg_Rly=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit17);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Pos_Rly=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit18);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_PreChar_Rly=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit19);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_MSD_AUX=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit20);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_EMG_SW=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit21);
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Water_leak=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit22);
(SubBMS.Rack3.BSA.Rack_State.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_State.Value[0]))->bit23);
(SubBMS.Rack3.BSA.Rack_State.Field.Not_Used2=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[0]>>24))&15));
(SubBMS.Rack3.BSA.Rack_State.Field.BSA_Ah=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_State.Field.Not_Used3=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_State.Value[1]>>16))&255)));

(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit0);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit1);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit2);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit3);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit4);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit5);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit6);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit7);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit8);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit9);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit10);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit11);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit12);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit13);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit14);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit15);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit16);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit17);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit18);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit19);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit20);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit21);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit22);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit23);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit24);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit25);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit26);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit27);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit28);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit29);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit30);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[0]))->bit31);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit0);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit1);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit2);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit3);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit4);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit5);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit6);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit7);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit8);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit9);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit10);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit11);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit12);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit13);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit14);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit15);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used3=(unsigned char)(((plcdword)(SubBMS.Rack3.BSA.Rack_AlarmState.Value[1]>>24))&15));

(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak*(1.00000001490116119385E-01)));

(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV*(1.00000004749745130539E-03)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV*(1.00000004749745130539E-03)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV*(1.00000004749745130539E-03)));
(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1]>>16))&255)));


(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT*(1.00000001490116119385E-01)));

(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1]>>16))&255)));

(SubBMS.Rack3.BSA.Modul1_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul1_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul1_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul1_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul1_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul1_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul1_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul1_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul1_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul2_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul2_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul2_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul2_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul2_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul2_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul2_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul2_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul2_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul3_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul3_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul3_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul3_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul3_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul3_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul3_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul3_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul3_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul4_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul4_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul4_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul4_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul4_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul4_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul4_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul4_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul4_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul5_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul5_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul5_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul5_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul5_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul5_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul5_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul5_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul5_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul6_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul6_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul6_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul6_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul6_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul6_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul6_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul6_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul6_Info.Value[1]))->bit31);

(SubBMS.Rack3.BSA.Modul7_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[0]>>0))&255)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.Volt_Total=(SubBMS.Rack3.BSA.Modul7_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[0]>>16))&255)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Volt=(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack3.BSA.Modul7_Info.Value[1]>>0))&255)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Temp=(SubBMS.Rack3.BSA.Modul7_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit16);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit17);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit18);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit19);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit20);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit21);
(SubBMS.Rack3.BSA.Modul7_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit22);
(SubBMS.Rack3.BSA.Modul7_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit23);
(SubBMS.Rack3.BSA.Modul7_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit24);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit25);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit26);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit27);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit28);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit29);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit30);
(SubBMS.Rack3.BSA.Modul7_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack3.BSA.Modul7_Info.Value[1]))->bit31);
}}
#line 413 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"
#line 868 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/RackDataRxParsing.st"
static void __AS__Action__ActRACK4DATARxParshing(void){
{




(SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Type=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[0]>>0))&15));
(SubBMS.Rack4.BSA.BSA_Product.Field.BSA_SW_Ver=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[0]>>8))&15));
(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt=(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity=(SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Serial=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[1]>>16))&15));
(SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Parallel=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.BSA_Product.Value[1]>>24))&15));

(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total=(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total=(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC=(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Calc.Value[1]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH=(SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH*(1.00000001490116119385E-01)));

(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Divice_Status=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[0]>>0))&15));
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Protect_Status=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[0]>>8))&15));
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Balance=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit16);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Neg_Rly=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit17);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Pos_Rly=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit18);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_PreChar_Rly=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit19);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_MSD_AUX=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit20);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_EMG_SW=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit21);
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Water_leak=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit22);
(SubBMS.Rack4.BSA.Rack_State.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_State.Value[0]))->bit23);
(SubBMS.Rack4.BSA.Rack_State.Field.Not_Used2=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[0]>>24))&15));
(SubBMS.Rack4.BSA.Rack_State.Field.BSA_Ah=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_State.Field.Not_Used3=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_State.Value[1]>>16))&255)));

(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit0);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit1);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit2);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit3);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit4);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit5);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit6);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit7);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit8);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit9);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit10);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit11);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit12);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit13);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit14);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit15);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit16);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit17);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit18);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit19);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit20);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit21);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit22);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit23);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit24);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit25);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit26);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit27);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit28);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit29);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit30);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[0]))->bit31);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit0);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit1);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit2);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit3);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit4);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit5);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit6);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit7);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit8);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit9);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit10);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit11);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit12);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit13);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit14);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit15);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used3=(unsigned char)(((plcdword)(SubBMS.Rack4.BSA.Rack_AlarmState.Value[1]>>24))&15));

(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont=(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont=(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak=(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak=(SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak*(1.00000001490116119385E-01)));

(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV=(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV*(1.00000004749745130539E-03)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV=(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV*(1.00000004749745130539E-03)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV=(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV*(1.00000004749745130539E-03)));
(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1]>>16))&255)));


(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT=(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0]>>24))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT=(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT=(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT=(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT*(1.00000001490116119385E-01)));

(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1]>>16))&255)));

(SubBMS.Rack4.BSA.Modul1_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul1_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul1_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul1_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul1_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul1_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul1_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul1_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul1_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul2_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul2_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul2_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul2_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul2_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul2_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul2_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul2_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul2_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul3_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul3_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul3_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul3_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul3_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul3_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul3_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul3_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul3_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul4_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul4_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul4_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul4_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul4_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul4_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul4_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul4_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul4_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul5_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul5_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul5_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul5_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul5_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul5_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul5_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul5_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul5_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul6_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul6_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul6_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul6_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul6_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul6_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul6_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul6_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul6_Info.Value[1]))->bit31);

(SubBMS.Rack4.BSA.Modul7_Info.Field.Volt_Total=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[0]>>8))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[0]>>0))&255)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.Volt_Total=(SubBMS.Rack4.BSA.Modul7_Info.Field.Volt_Total*(9.99999977648258209229E-03)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Volt=(((unsigned short)((unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[0]>>24))&255)<<8))|(unsigned short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[0]>>16))&255)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Volt=(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Volt*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Temp=(((signed short)((signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[1]>>8))&255)<<8))|(signed short)(((plcdword)(SubBMS.Rack4.BSA.Modul7_Info.Value[1]>>0))&255)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Temp=(SubBMS.Rack4.BSA.Modul7_Info.Field.Agv_Temp*(1.00000001490116119385E-01)));
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_INITOK=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit16);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_Fault=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit17);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_Balan_On_OFF=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit18);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_Waterleak_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit19);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_CellVolt_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit20);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_CellTemps_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit21);
(SubBMS.Rack4.BSA.Modul7_Info.Field.BATIC_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit22);
(SubBMS.Rack4.BSA.Modul7_Info.Field.CTCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit23);
(SubBMS.Rack4.BSA.Modul7_Info.Field.OPS_MBCOM_Err=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit24);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used1=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit25);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used2=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit26);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used3=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit27);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used4=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit28);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used5=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit29);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used6=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit30);
(SubBMS.Rack4.BSA.Modul7_Info.Field.Not_Used7=((_4byte_bit_field_*)(&SubBMS.Rack4.BSA.Modul7_Info.Value[1]))->bit31);
}}
#line 413 "E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANRxSubBM/ArCanReceive.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/CANRxSubBM/ArCanReceive.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'ArCanReceiver'\\n\"");
__asm__(".ascii \"plcdata_const 'SubBMS'\\n\"");
__asm__(".ascii \"plcdata_const 'arCAN_11BIT'\\n\"");
__asm__(".previous");
