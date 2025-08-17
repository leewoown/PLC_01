/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1755400020_7_
#define _BUR_1755400020_7_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct PMS_Field_typ
{	plcbit PMS_WakeUp_CMD;
	plcbit PMS_POWER_CMD;
	plcbit PMS_FaultReset;
	plcbit PMS_Po_RelayStatus;
	plcbit PMS_Pro_RelayStatus;
	plcbit PMS_Ne_RelayStatus;
} PMS_Field_typ;

typedef struct PMS_type
{	plcdword Value[2];
	struct PMS_Field_typ Field;
} PMS_type;

typedef struct SysBatProduct_Field_typ
{	unsigned short BSA_Production_Year;
	unsigned char BSA_Production_Type;
	unsigned char BSA_Production_Num;
	unsigned char BSA_Production_VER;
	unsigned char BSA_Production_BSA_Serial;
	unsigned char BSA_Production_BSA_Parallel;
} SysBatProduct_Field_typ;

typedef struct SysBatProduct_typ
{	plcdword Value[2];
	struct SysBatProduct_Field_typ Field;
} SysBatProduct_typ;

typedef struct SysBatCal_Field_typ
{	float BSA_Volt_Total;
	float BSA_Curr_Total;
	float BSA_SOC;
	unsigned short BSA_Divice_Status;
} SysBatCal_Field_typ;

typedef struct SysBatCal_typ
{	plcdword Value[2];
	struct SysBatCal_Field_typ Field;
} SysBatCal_typ;

typedef struct SysBatPWR_Field_typ
{	float BSA_Cont_Charge_Power_Limit;
	float BSA_Peak_Charge_Power_Limit;
	float BSA_Cont_Discharge_Power_Limit;
	float BSA_Peak_Discharge_Power_Limit;
} SysBatPWR_Field_typ;

typedef struct SysBatPWR_typ
{	plcdword Value[2];
	struct SysBatPWR_Field_typ Field;
} SysBatPWR_typ;

typedef struct SysCellVolt_Field_typ
{	float BSA_Cell_MaxV;
	float BSA_Cell_MinV;
	float BSA_Cell_AVGV;
	float BSA_Cell_DeviV;
} SysCellVolt_Field_typ;

typedef struct SysCellVolt_typ
{	plcdword Value[2];
	struct SysCellVolt_Field_typ Field;
} SysCellVolt_typ;

typedef struct SysCellTemps_Field_typ
{	float BSA_Cell_MaxT;
	float BSA_Cell_MinT;
	float BSA_Cell_AVGT;
	float BSA_Cell_DeviT;
} SysCellTemps_Field_typ;

typedef struct SysCellTemps_typ
{	plcdword Value[2];
	struct SysCellTemps_Field_typ Field;
} SysCellTemps_typ;

typedef struct SysCellV_TPos_Field_typ
{	unsigned char BSA_Rack_MaxV_Location;
	unsigned char BSA_Cell_MaxV_Location;
	unsigned char BSA_Rack_MinV_Location;
	unsigned char BSA_Cell_MinV_Location;
	unsigned char BSA_Rack_MaxT_Location;
	unsigned char BSA_Cell_MaxT_Location;
	unsigned char BSA_Rack_MinT_Location;
	unsigned char BSA_Cell_MinT_Location;
} SysCellV_TPos_Field_typ;

typedef struct SysCellV_TPos_typ
{	plcdword Value[2];
	struct SysCellV_TPos_Field_typ Field;
} SysCellV_TPos_typ;

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

typedef struct SysBatProtect_typ
{	plcdword Value[2];
	struct SysBatProtect_Field_typ Field;
} SysBatProtect_typ;

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

typedef struct SysBatDIO_typ
{	plcdword Value[2];
	struct SysBatDIO_Field_typ Field;
} SysBatDIO_typ;

typedef struct BRACal_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Volt_Total;
	float BRA_Curr_Total;
	float BRA_SOC;
} BRACal_Field_typ;

typedef struct BRACal_typ
{	plcdword Value[2];
	struct BRACal_Field_typ Field;
} BRACal_typ;

typedef struct BRAPWR_A_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_SOH;
	float BRA_CONT_CHA_PWR_Limit;
	float BRA_Peak_CHA_PWR_Limit;
} BRAPWR_A_Field_typ;

typedef struct BRAPWR_A_typ
{	plcdword Value[2];
	struct BRAPWR_A_Field_typ Field;
} BRAPWR_A_typ;

typedef struct BRAPWR_B_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_CONT_DisCHA_PWR_Limit;
	float BRA_Peak_DisCHA_PWR_Limit;
} BRAPWR_B_Field_typ;

typedef struct BRAPWR_B_typ
{	plcdword Value[2];
	struct BRAPWR_B_Field_typ Field;
} BRAPWR_B_typ;

typedef struct BRACellV_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_Max_Voltage;
	float BRA_Cell_Min_Voltage;
	float BRA_Cell_AGV_Voltage;
} BRACellV_Field_typ;

typedef struct BRACellV_typ
{	plcdword Value[2];
	struct BRACellV_Field_typ Field;
} BRACellV_typ;

typedef struct BRACellT_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_Max_Temperature;
	float BRA_Cell_Min_Temperature;
	float BRA_Cell_AGV_Temperature;
} BRACellT_Field_typ;

typedef struct BRACellT_typ
{	plcdword Value[2];
	struct BRACellT_Field_typ Field;
} BRACellT_typ;

typedef struct BRACellDiv_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_DIV_Voltage;
	float BRA_Cell_DIV_Temperature;
} BRACellDiv_Field_typ;

typedef struct BRACellDiv_typ
{	plcdword Value[2];
	struct BRACellDiv_Field_typ Field;
} BRACellDiv_typ;

typedef struct BRA_VTPos_Field_typ
{	unsigned short BRA_Rack_Num;
	unsigned char BRA_Max_Cell_V_Location;
	unsigned char BRA_Min_Cell_V_Location;
	unsigned char BRA_Max_Cell_T_Location;
	unsigned char BRA_Min_Cell_T_Location;
} BRA_VTPos_Field_typ;

typedef struct BRA_VTPos_typ
{	plcdword Value[2];
	struct BRA_VTPos_Field_typ Field;
} BRA_VTPos_typ;

typedef struct BAR_Alarm_Field_typ
{	unsigned short BRA_Rack_Num;
	plcbit BRA_Alarm_OC;
	plcbit BRA_Alarm_SOC_OV;
	plcbit BRA_Alarm_SOC_UN;
	plcbit BRA_Alarm_OV;
	plcbit BRA_Alarm_UV;
	plcbit BRA_Alarm_Cell_OV;
	plcbit BRA_Alarm_Cell_UV;
	plcbit BRA_Alarm_Cell_UnBalaV;
	plcbit BRA_Alarm_Discharger_Cell_OT;
	plcbit BRA_Alarm_Charger_Cell_OT;
	plcbit BRA_Alarm_Discharger_Cell_UT;
	plcbit BRA_Alarm_Charger_Cell_UT;
	plcbit BRA_Alarm_Cell_UnBalaT;
	plcbit BRA_Alarm_Continuously_OP;
	plcbit BRA_Alarm_Peak_OP;
	plcbit BRA_Fault_OC;
	plcbit BRA_Fault_SOC_OV;
	plcbit BRA_Fault_SOC_UN;
	plcbit BRA_Fault_OV;
	plcbit BRA_Fault_UV;
	plcbit BRA_Fault_Cell_OV;
	plcbit BRA_Fault_Cell_UV;
	plcbit BRA_Fault_Cell_UnBalaV;
	plcbit BRA_Fault_Discharger_Cell_OT;
	plcbit BRA_Fault_Charger_Cell_OT;
	plcbit BRA_Fault_Discharger_Cell_UT;
	plcbit BRA_Fault_Charger_Cell_UT;
	plcbit BRA_Fault_Cell_UnBalaT;
	plcbit BRA_Fault_Continuously_OP;
	plcbit BRA_Fault_Peak_OP;
} BAR_Alarm_Field_typ;

typedef struct BAR_Alarm_typ
{	plcdword Value[2];
	struct BAR_Alarm_Field_typ Field;
} BAR_Alarm_typ;

typedef struct BAR_Protect_Field_typ
{	unsigned short BRA_Rack_Num;
	plcbit BRA_Prtct_OC;
	plcbit BRA_Prtct_SOC_OV;
	plcbit BRA_Prtct_SOC_UN;
	plcbit BRA_Prtct_OV;
	plcbit BRA_Prtct_UV;
	plcbit BRA_Prtct_Cell_OV;
	plcbit BRA_Prtct_Cell_UV;
	plcbit BRA_Prtct_Cell_UnBalaV;
	plcbit BRA_Prtct_Discharger_Cell_OT;
	plcbit BRA_Prtct_Charger_Cell_OT;
	plcbit BRA_Prtct_Discharger_Cell_UT;
	plcbit BRA_Prtct_Charger_Cell_UT;
	plcbit BRA_Prtct_Cell_UnBalaT;
	plcbit BRA_Prtct_Continuously_OP;
	plcbit BRA_Prtct_Peak_OP;
	plcbit BRA_Prtct_InternalCOM;
	plcbit BRA_Prtct_ExternalCOM;
	plcbit BRA_Prtct_RelayWelding;
	plcbit BRA_Prtct_WaterLeak;
	plcbit BRA_Prtct_InsulationReg;
	plcbit BRA_Prtct_MDSFuse;
	plcbit BRA_Prtct_CoolingSystem;
} BAR_Protect_Field_typ;

typedef struct BAR_Protect_typ
{	plcdword Value[2];
	struct BAR_Protect_Field_typ Field;
} BAR_Protect_typ;

typedef struct BAR_DIO_Field_typ
{	unsigned short BRA_Rack_Num;
	plcbit BRA_Prelay_DO_Status;
	plcbit BRA_Nrelay_DO_Status;
	plcbit BRA_ProRelay_DO_Status;
	plcbit BRA_PowerLamp_DO_Status;
	plcbit BRA_Buzzer_DO_Status;
	plcbit BRA_PRelayAUX_DI_Status;
	plcbit BRA_NRelayAUX_DI_Status;
	plcbit BRA_EMGSwitch_DI_Status;
	plcbit BRA_MDS_DI_Status;
	plcbit BRA_Waterleak_Dete_MD1;
	plcbit BRA_Waterleak_Dete_MD2;
	plcbit BRA_Waterleak_Dete_MD3;
	plcbit BRA_Waterleak_Dete_MD4;
	plcbit BRA_Waterleak_Dete_MD5;
	plcbit BRA_Waterleak_Dete_MD6;
	plcbit BRA_Waterleak_Dete_MD7;
} BAR_DIO_Field_typ;

typedef struct BAR_DIO_typ
{	plcdword Value[2];
	struct BAR_DIO_Field_typ Field;
} BAR_DIO_typ;

typedef struct PMS_typ
{	struct PMS_type PMS;
	struct SysBatProduct_typ SysBatProduct;
	struct SysBatCal_typ SysBatCal;
	struct SysBatPWR_typ SysBatPWR;
	struct SysCellVolt_typ SysCellVolt;
	struct SysCellTemps_typ SysCellTemps;
	struct SysCellV_TPos_typ SysCellV_TPos;
	struct SysBatProtect_typ SysBatProtect;
	struct SysBatDIO_typ SysBatDIO;
	struct BRACal_typ BRACal;
	struct BRAPWR_A_typ BRAPWR_A;
	struct BRAPWR_B_typ BRAPWR_B;
	struct BRACellV_typ BRACellV;
	struct BRACellT_typ BRACellT;
	struct BRACellDiv_typ BRACellDiv;
	struct BRA_VTPos_typ BRA_VTPos;
	struct BAR_Alarm_typ BAR_Alarm;
	struct BAR_Protect_typ BAR_Protect;
	struct BAR_DIO_typ BAR_DIO;
} PMS_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/PMS_CAN.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1755400020_7_ */

