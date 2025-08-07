#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/ModbusPMS/Mainst.h"
#line 1 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.nodebug"
#line 2 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.st"
void __BUR__ENTRY_INIT_FUNCT__(void){int __AS__Local0_00000;plcstring* __AS__Local3_00000;plcstring* __AS__Local4_00000;{

__AS__Local3_00000=(plcstring*)ModbusCtrl.Init_Parameter.ModbusStation; __AS__Local4_00000=(plcstring*)"IF2.MODBUSSLAVE_1"; for(__AS__Local0_00000=0; __AS__Local0_00000<17l && __AS__Local4_00000[__AS__Local0_00000]!=0; __AS__Local0_00000++) __AS__Local3_00000[__AS__Local0_00000] = __AS__Local4_00000[__AS__Local0_00000]; __AS__Local3_00000[__AS__Local0_00000] = 0;
(ModbusCtrl.Init_Parameter.register_StartAddress=0);
(ModbusCtrl.Init_Parameter.FunctionNum=mbMFC_READ_INPUT_REGISTERS);
(ModbusCtrl.Init_Parameter.RegisterNum=72);


(fub_status=0);
(mb_exception=0);

}}
#line 13 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.nodebug"
#line 16 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{


__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[0])),((unsigned long)(&PMS.SysBatProduct.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[4])),((unsigned long)(&PMS.SysBatCal.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[8])),((unsigned long)(&PMS.SysBatPWR.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[12])),((unsigned long)(&PMS.SysCellVolt.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[16])),((unsigned long)(&PMS.SysCellTemps.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[20])),((unsigned long)(&PMS.SysCellV_TPos.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[24])),((unsigned long)(&PMS.SysBatProtect.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[28])),((unsigned long)(&PMS.SysBatDIO.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[32])),((unsigned long)(&PMS.BRACal.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[36])),((unsigned long)(&PMS.BRAPWR_A.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[40])),((unsigned long)(&PMS.BRAPWR_B.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[44])),((unsigned long)(&PMS.BRACellV.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[48])),((unsigned long)(&PMS.BRACellT.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[52])),((unsigned long)(&PMS.BRACellDiv.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[56])),((unsigned long)(&PMS.BRA_VTPos.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[60])),((unsigned long)(&PMS.BAR_Alarm.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[64])),((unsigned long)(&PMS.BAR_Protect.Value)),8);
__AS__MEMCPY(((unsigned long)(&ModbusCtrl.Data.Register[68])),((unsigned long)(&PMS.BAR_DIO.Value)),8);


switch(ModbusCtrl.Init_Parameter.FunctionNum){
case 4:{





(ModbusCtrl.Write_Multiple_Registers.enable=1);;(ModbusCtrl.Write_Multiple_Registers.startAddress=30001);;(ModbusCtrl.Write_Multiple_Registers.nrOfItems=ModbusCtrl.Init_Parameter.RegisterNum);;ModbusCtrl.Write_Multiple_Registers.station=&ModbusCtrl.Init_Parameter.ModbusStation;ModbusCtrl.Write_Multiple_Registers.data=&ModbusCtrl.Data.Register;mbSlWordPut(&ModbusCtrl.Write_Multiple_Registers);

if((((unsigned long)(unsigned short)ModbusCtrl.Read_Holding_Registers.status!=(unsigned long)(unsigned short)ERR_FUB_BUSY))){
(fub_status=ModbusCtrl.Write_Multiple_Registers.status);

(check_status=1);
(instruction_ready=1);
}else{

}



}break;case 3:{





(ModbusCtrl.Read_Holding_Registers.enable=1);;(ModbusCtrl.Read_Holding_Registers.startAddress=40001);;(ModbusCtrl.Read_Holding_Registers.nrOfItems=1);;ModbusCtrl.Read_Holding_Registers.station=&ModbusCtrl.Init_Parameter.ModbusStation;ModbusCtrl.Read_Holding_Registers.data=&ModbusCtrl.Data.Register;mbSlWordGet(&ModbusCtrl.Read_Holding_Registers);





if((((unsigned long)(unsigned short)ModbusCtrl.Read_Holding_Registers.status!=(unsigned long)(unsigned short)ERR_FUB_BUSY))){
(fub_status=ModbusCtrl.Write_Multiple_Registers.status);

(check_status=1);
(instruction_ready=1);
}else{

}

}break;}



if(check_status){

switch(fub_status){

case 0:{

(gSignalCheck.TCP_Check=1);

}break;default: {


}break;}


(check_status=0);
}





















}imp1_else3_0:imp1_end3_0:;}
#line 121 "E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.nodebug"

void __AS__ImplInitMain_st(void){__BUR__ENTRY_INIT_FUNCT__();}

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
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_MODBUS/ModbusPMS/Types.typ\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_MODBUS/ModbusPMS/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/ModbusPMS/Main.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"E:/Project/HIS/ShipBatterySystm/Temp/Objects/CP0484/X20CP0484_1/ModbusPMS/Main.st.c\\\" \\\"E:/Project/HIS/ShipBatterySystm/Logical/Source/PMS_MODBUS/ModbusPMS/Main.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'COILS_NUM'\\n\"");
__asm__(".ascii \"plcdata_const 'COILS_NUM_MINUS_1'\\n\"");
__asm__(".ascii \"plcdata_const 'PMS'\\n\"");
__asm__(".ascii \"plcdata_const 'ERR_OK'\\n\"");
__asm__(".ascii \"plcdata_const 'ERR_FUB_BUSY'\\n\"");
__asm__(".ascii \"plcdata_const 'mbMFC_READ_HOLDING_REGISTERS'\\n\"");
__asm__(".ascii \"plcdata_const 'mbMFC_READ_INPUT_REGISTERS'\\n\"");
__asm__(".previous");
