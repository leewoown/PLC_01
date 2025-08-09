#ifndef __AS__TYPE_SysBatProtect_Field_typ
#define __AS__TYPE_SysBatProtect_Field_typ
typedef struct SysBatProtect_Field_typ
{	plcbit BSA_Alarm_OC;
	plcbit BSA_Alarm_SOC_OV;
	plcbit BSA_Alarm_SOC_UN;
	plcbit BSA_Alarm_OV;
	plcbit BSA_Alarm_UV;
	plcbit BSA_Alarm_Cell_OV;
	plcbit BSA_Alarm_Cell_UV;
	plcbit BSA_Alarm_Cell_UnBalaV;
	plcbit BSA_Alarm_Discharger_Cell_OT;
	plcbit BSA_Alarm_Charger_Cell_OT;
	plcbit BSA_Alarm_Discharger_Cell_UT;
	plcbit BSA_Alarm_Charger_Cell_UT;
	plcbit BSA_Alarm_Cell_UnBalaT;
	plcbit BSA_Alarm_Continuously_OP;
	plcbit BSA_Alarm_Peak_OP;
	plcbit BSA_Fault_OC;
	plcbit BSA_Fault_SOC_OV;
	plcbit BSA_Fault_SOC_UN;
	plcbit BSA_Fault_OV;
	plcbit BSA_Fault_UV;
	plcbit BSA_Fault_Cell_OV;
	plcbit BSA_Fault_Cell_UV;
	plcbit BSA_Fault_Cell_UnBalaV;
	plcbit BSA_Fault_Discharger_Cell_OT;
	plcbit BSA_Fault_Charger_Cell_OT;
	plcbit BSA_Fault_Discharger_Cell_UT;
	plcbit BSA_Fault_Charger_Cell_UT;
	plcbit BSA_Fault_Cell_UnBalaT;
	plcbit BSA_Fault_Continuously_OP;
	plcbit BSA_Fault_Peak_OP;
	plcbit BSA_Prtct_OC;
	plcbit BSA_Prtct_SOC_OV;
	plcbit BSA_Prtct_SOC_UN;
	plcbit BSA_Prtct_OV;
	plcbit BSA_Prtct_UV;
	plcbit BSA_Prtct_Cell_OV;
	plcbit BSA_Prtct_Cell_UV;
	plcbit BSA_Prtct_Cell_UnBalaV;
	plcbit BSA_Prtct_Discharger_Cell_OT;
	plcbit BSA_Prtct_Charger_Cell_OT;
	plcbit BSA_Prtct_Discharger_Cell_UT;
	plcbit BSA_Prtct_Charger_Cell_UT;
	plcbit BSA_Prtct_Cell_UnBalaT;
	plcbit BSA_Prtct_Continuously_OP;
	plcbit BSA_Prtct_Peak_OP;
	plcbit BSA_Prtct_InternalCOM;
	plcbit BSA_Prtct_ExternalCOM;
	plcbit BSA_Prtct_RelayWelding;
	plcbit BSA_Prtct_WaterLeak;
	plcbit BSA_Prtct_InsulationReg;
	plcbit BSA_Prtct_MDSFuse;
	plcbit BSA_Prtct_Cooling_System;
	plcbit PMS_PAR_RelayErr;
	plcbit PMS_PAR_SEQErr;
	plcbit BPU_PAR_RelayErr;
	plcbit BRA_PAR_RelayErr;
} SysBatProtect_Field_typ;
#endif

#ifndef __AS__TYPE_SysBatDIO_Field_typ
#define __AS__TYPE_SysBatDIO_Field_typ
typedef struct SysBatDIO_Field_typ
{	plcbit BSA_Prelay_DO_Status;
	plcbit BSA_Nrelay_DO_Status;
	plcbit BSA_ProRelay_DO_Status;
	plcbit BSA_Buzzer_DO_Status;
	plcbit BSA_PowerLamp_DO_Status;
	plcbit BSA_DO_Spare06;
	plcbit BSA_DO_Spare07;
	plcbit BSA_DO_Spare08;
	plcbit BSA_DO_Spare09;
	plcbit BSA_DO_Spare10;
	plcbit BSA_DO_Spare11;
	plcbit BSA_DO_Spare12;
	plcbit BSA_PRelayAUX_DI_Status;
	plcbit BSA_NRelayAUX_DI_Status;
	plcbit BSA_EMGSwitch_DI_Status;
	plcbit BSA_CoolingSystem_DI_Status;
	plcbit BSA_MDS_DI_Status;
	plcbit BSA_DI_Spare06;
	plcbit BSA_DI_Spare07;
	plcbit BSA_DI_Spare08;
	plcbit BSA_DI_Spare09;
	plcbit BSA_DI_Spare10;
	plcbit BSA_DI_Spare11;
	plcbit BSA_DI_Spare12;
	float BSA_SOH;
} SysBatDIO_Field_typ;
#endif

_BUR_LOCAL unsigned char LoopCount;
_BUR_LOCAL_RETAIN SysBatProtect_Field_typ SysBATProtectSave;
_BUR_LOCAL_RETAIN SysBatDIO_Field_typ SysBatDIOSave;
