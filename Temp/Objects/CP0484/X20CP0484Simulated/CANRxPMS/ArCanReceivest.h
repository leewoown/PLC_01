#ifndef __AS__TYPE_
#define __AS__TYPE_
static unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length);
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

#ifndef __AS__TYPE_ArCanReceive_steps
#define __AS__TYPE_ArCanReceive_steps
typedef enum ArCanReceive_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_WAIT_FOR_DATA = 10,
	STEP_INIT_RECEIVER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0,
} ArCanReceive_steps;
#endif

struct ArCanSetBitTimingRegisters
{	plcstring DeviceName[128];
	plcbyte Register0;
	plcbyte Register1;
	signed long StatusID;
	unsigned long Internal[32];
	plcbit Execute;
	plcbit Done;
	plcbit Busy;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSetBitTimingRegisters(struct ArCanSetBitTimingRegisters* inst);
#ifndef __AS__TYPE_ArCanFrameType
#define __AS__TYPE_ArCanFrameType
typedef struct ArCanFrameType
{	plcbyte Data[64];
	unsigned long DataLength;
	unsigned long ID;
	unsigned long Format;
} ArCanFrameType;
#endif

#ifndef __AS__TYPE_ArCanTimestampType
#define __AS__TYPE_ArCanTimestampType
typedef struct ArCanTimestampType
{	unsigned long UTCSeconds;
	unsigned long UTCNanoSeconds;
	signed long LocalTime;
} ArCanTimestampType;
#endif

struct ArCanReceive
{	plcstring DeviceName[128];
	unsigned long ID;
	unsigned long IDMask;
	unsigned long Format;
	unsigned long QueueSize;
	signed long StatusID;
	ArCanFrameType ReceivedFrame;
	ArCanTimestampType Timestamp;
	unsigned long NumberOfLostFrames;
	unsigned long Internal[32];
	plcbit Enable;
	plcbit Busy;
	plcbit Active;
	plcbit Error;
	plcbit NewDataValid;
};
_BUR_PUBLIC void ArCanReceive(struct ArCanReceive* inst);
#ifndef __AS__TYPE_ArCanReceive_typ
#define __AS__TYPE_ArCanReceive_typ
typedef struct ArCanReceive_typ
{	ArCanReceive_steps step;
	struct ArCanSetBitTimingRegisters ArCanSetBitTimingRegisters_0;
	struct ArCanReceive ArCanReceiver_0;
	plcstring receiverDeviceName[81];
	unsigned long receivedIterationCounter;
	unsigned long lastReceiveTimestamp;
	unsigned long lostFrames;
	unsigned long successCount;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long id;
	unsigned long idMask;
	unsigned long format;
	unsigned long queueSize;
} ArCanReceive_typ;
#endif

#ifndef __AS__TYPE_gCommStatus_typ
#define __AS__TYPE_gCommStatus_typ
typedef struct gCommStatus_typ
{	plcbit bActive;
	plcbit bTransmitting;
	plcbit bError;
} gCommStatus_typ;
#endif

#ifndef __AS__TYPE_gComm_typ
#define __AS__TYPE_gComm_typ
typedef struct gComm_typ
{	gCommStatus_typ CAN1;
	gCommStatus_typ CAN2;
	gCommStatus_typ ModTCPM;
	gCommStatus_typ ModTCPS;
	gCommStatus_typ ModRTUM;
} gComm_typ;
#endif

#ifndef __AS__TYPE_gSignalCheckType
#define __AS__TYPE_gSignalCheckType
typedef struct gSignalCheckType
{	plcbit Can_HardwareCheck1;
	plcbit Can_HardwareCheck2;
	plcbit Can_ReceiveCheck;
	plcbit Can_SendCheck;
	plcbit TCP_Check;
	plcbit RS485_Check;
} gSignalCheckType;
#endif

#ifndef __AS__TYPE_PMS_Field_typ
#define __AS__TYPE_PMS_Field_typ
typedef struct PMS_Field_typ
{	plcbit PMS_WakeUp_CMD;
	plcbit PMS_POWER_CMD;
	plcbit PMS_FaultReset;
	plcbit PMS_Po_RelayStatus;
	plcbit PMS_Pro_RelayStatus;
	plcbit PMS_Ne_RelayStatus;
} PMS_Field_typ;
#endif

#ifndef __AS__TYPE_PMS_type
#define __AS__TYPE_PMS_type
typedef struct PMS_type
{	plcdword Value[2];
	PMS_Field_typ Field;
} PMS_type;
#endif

#ifndef __AS__TYPE_SysBatProduct_Field_typ
#define __AS__TYPE_SysBatProduct_Field_typ
typedef struct SysBatProduct_Field_typ
{	unsigned short BSA_Production_Year;
	unsigned char BSA_Production_Type;
	unsigned char BSA_Production_Num;
	unsigned char BSA_Production_VER;
	unsigned char BSA_Production_BSA_Serial;
	unsigned char BSA_Production_BSA_Parallel;
} SysBatProduct_Field_typ;
#endif

#ifndef __AS__TYPE_SysBatProduct_typ
#define __AS__TYPE_SysBatProduct_typ
typedef struct SysBatProduct_typ
{	plcdword Value[2];
	SysBatProduct_Field_typ Field;
} SysBatProduct_typ;
#endif

#ifndef __AS__TYPE_SysBatCal_Field_typ
#define __AS__TYPE_SysBatCal_Field_typ
typedef struct SysBatCal_Field_typ
{	float BSA_Volt_Total;
	float BSA_Curr_Total;
	float BSA_SOC;
	unsigned short BSA_Divice_Status;
} SysBatCal_Field_typ;
#endif

#ifndef __AS__TYPE_SysBatCal_typ
#define __AS__TYPE_SysBatCal_typ
typedef struct SysBatCal_typ
{	plcdword Value[2];
	SysBatCal_Field_typ Field;
} SysBatCal_typ;
#endif

#ifndef __AS__TYPE_SysBatPWR_Field_typ
#define __AS__TYPE_SysBatPWR_Field_typ
typedef struct SysBatPWR_Field_typ
{	float BSA_Cont_Charge_Power_Limit;
	float BSA_Peak_Charge_Power_Limit;
	float BSA_Cont_Discharge_Power_Limit;
	float BSA_Peak_Discharge_Power_Limit;
} SysBatPWR_Field_typ;
#endif

#ifndef __AS__TYPE_SysBatPWR_typ
#define __AS__TYPE_SysBatPWR_typ
typedef struct SysBatPWR_typ
{	plcdword Value[2];
	SysBatPWR_Field_typ Field;
} SysBatPWR_typ;
#endif

#ifndef __AS__TYPE_SysCellVolt_Field_typ
#define __AS__TYPE_SysCellVolt_Field_typ
typedef struct SysCellVolt_Field_typ
{	float BSA_Cell_MaxV;
	float BSA_Cell_MinV;
	float BSA_Cell_AVGV;
	float BSA_Cell_DeviV;
} SysCellVolt_Field_typ;
#endif

#ifndef __AS__TYPE_SysCellVolt_typ
#define __AS__TYPE_SysCellVolt_typ
typedef struct SysCellVolt_typ
{	plcdword Value[2];
	SysCellVolt_Field_typ Field;
} SysCellVolt_typ;
#endif

#ifndef __AS__TYPE_SysCellTemps_Field_typ
#define __AS__TYPE_SysCellTemps_Field_typ
typedef struct SysCellTemps_Field_typ
{	float BSA_Cell_MaxT;
	float BSA_Cell_MinT;
	float BSA_Cell_AVGT;
	float BSA_Cell_DeviT;
} SysCellTemps_Field_typ;
#endif

#ifndef __AS__TYPE_SysCellTemps_typ
#define __AS__TYPE_SysCellTemps_typ
typedef struct SysCellTemps_typ
{	plcdword Value[2];
	SysCellTemps_Field_typ Field;
} SysCellTemps_typ;
#endif

#ifndef __AS__TYPE_SysCellV_TPos_Field_typ
#define __AS__TYPE_SysCellV_TPos_Field_typ
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
#endif

#ifndef __AS__TYPE_SysCellV_TPos_typ
#define __AS__TYPE_SysCellV_TPos_typ
typedef struct SysCellV_TPos_typ
{	plcdword Value[2];
	SysCellV_TPos_Field_typ Field;
} SysCellV_TPos_typ;
#endif

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

#ifndef __AS__TYPE_SysBatProtect_typ
#define __AS__TYPE_SysBatProtect_typ
typedef struct SysBatProtect_typ
{	plcdword Value[2];
	SysBatProtect_Field_typ Field;
} SysBatProtect_typ;
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

#ifndef __AS__TYPE_SysBatDIO_typ
#define __AS__TYPE_SysBatDIO_typ
typedef struct SysBatDIO_typ
{	plcdword Value[2];
	SysBatDIO_Field_typ Field;
} SysBatDIO_typ;
#endif

#ifndef __AS__TYPE_BRACal_Field_typ
#define __AS__TYPE_BRACal_Field_typ
typedef struct BRACal_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Volt_Total;
	float BRA_Curr_Total;
	float BRA_SOC;
} BRACal_Field_typ;
#endif

#ifndef __AS__TYPE_BRACal_typ
#define __AS__TYPE_BRACal_typ
typedef struct BRACal_typ
{	plcdword Value[2];
	BRACal_Field_typ Field;
} BRACal_typ;
#endif

#ifndef __AS__TYPE_BRAPWR_A_Field_typ
#define __AS__TYPE_BRAPWR_A_Field_typ
typedef struct BRAPWR_A_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_SOH;
	float BRA_CONT_CHA_PWR_Limit;
	float BRA_Peak_CHA_PWR_Limit;
} BRAPWR_A_Field_typ;
#endif

#ifndef __AS__TYPE_BRAPWR_A_typ
#define __AS__TYPE_BRAPWR_A_typ
typedef struct BRAPWR_A_typ
{	plcdword Value[2];
	BRAPWR_A_Field_typ Field;
} BRAPWR_A_typ;
#endif

#ifndef __AS__TYPE_BRAPWR_B_Field_typ
#define __AS__TYPE_BRAPWR_B_Field_typ
typedef struct BRAPWR_B_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_CONT_DisCHA_PWR_Limit;
	float BRA_Peak_DisCHA_PWR_Limit;
} BRAPWR_B_Field_typ;
#endif

#ifndef __AS__TYPE_BRAPWR_B_typ
#define __AS__TYPE_BRAPWR_B_typ
typedef struct BRAPWR_B_typ
{	plcdword Value[2];
	BRAPWR_B_Field_typ Field;
} BRAPWR_B_typ;
#endif

#ifndef __AS__TYPE_BRACellV_Field_typ
#define __AS__TYPE_BRACellV_Field_typ
typedef struct BRACellV_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_Max_Voltage;
	float BRA_Cell_Min_Voltage;
	float BRA_Cell_AGV_Voltage;
} BRACellV_Field_typ;
#endif

#ifndef __AS__TYPE_BRACellV_typ
#define __AS__TYPE_BRACellV_typ
typedef struct BRACellV_typ
{	plcdword Value[2];
	BRACellV_Field_typ Field;
} BRACellV_typ;
#endif

#ifndef __AS__TYPE_BRACellT_Field_typ
#define __AS__TYPE_BRACellT_Field_typ
typedef struct BRACellT_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_Max_Temperature;
	float BRA_Cell_Min_Temperature;
	float BRA_Cell_AGV_Temperature;
} BRACellT_Field_typ;
#endif

#ifndef __AS__TYPE_BRACellT_typ
#define __AS__TYPE_BRACellT_typ
typedef struct BRACellT_typ
{	plcdword Value[2];
	BRACellT_Field_typ Field;
} BRACellT_typ;
#endif

#ifndef __AS__TYPE_BRACellDiv_Field_typ
#define __AS__TYPE_BRACellDiv_Field_typ
typedef struct BRACellDiv_Field_typ
{	unsigned short BRA_Rack_Num;
	float BRA_Cell_DIV_Voltage;
	float BRA_Cell_DIV_Temperature;
} BRACellDiv_Field_typ;
#endif

#ifndef __AS__TYPE_BRACellDiv_typ
#define __AS__TYPE_BRACellDiv_typ
typedef struct BRACellDiv_typ
{	plcdword Value[2];
	BRACellDiv_Field_typ Field;
} BRACellDiv_typ;
#endif

#ifndef __AS__TYPE_BRA_VTPos_Field_typ
#define __AS__TYPE_BRA_VTPos_Field_typ
typedef struct BRA_VTPos_Field_typ
{	unsigned short BRA_Rack_Num;
	unsigned char BRA_Max_Cell_V_Location;
	unsigned char BRA_Min_Cell_V_Location;
	unsigned char BRA_Max_Cell_T_Location;
	unsigned char BRA_Min_Cell_T_Location;
} BRA_VTPos_Field_typ;
#endif

#ifndef __AS__TYPE_BRA_VTPos_typ
#define __AS__TYPE_BRA_VTPos_typ
typedef struct BRA_VTPos_typ
{	plcdword Value[2];
	BRA_VTPos_Field_typ Field;
} BRA_VTPos_typ;
#endif

#ifndef __AS__TYPE_BAR_Alarm_Field_typ
#define __AS__TYPE_BAR_Alarm_Field_typ
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
#endif

#ifndef __AS__TYPE_BAR_Alarm_typ
#define __AS__TYPE_BAR_Alarm_typ
typedef struct BAR_Alarm_typ
{	plcdword Value[2];
	BAR_Alarm_Field_typ Field;
} BAR_Alarm_typ;
#endif

#ifndef __AS__TYPE_BAR_Protect_Field_typ
#define __AS__TYPE_BAR_Protect_Field_typ
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
#endif

#ifndef __AS__TYPE_BAR_Protect_typ
#define __AS__TYPE_BAR_Protect_typ
typedef struct BAR_Protect_typ
{	plcdword Value[2];
	BAR_Protect_Field_typ Field;
} BAR_Protect_typ;
#endif

#ifndef __AS__TYPE_BAR_DIO_Field_typ
#define __AS__TYPE_BAR_DIO_Field_typ
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
#endif

#ifndef __AS__TYPE_BAR_DIO_typ
#define __AS__TYPE_BAR_DIO_typ
typedef struct BAR_DIO_typ
{	plcdword Value[2];
	BAR_DIO_Field_typ Field;
} BAR_DIO_typ;
#endif

#ifndef __AS__TYPE_PMS_typ
#define __AS__TYPE_PMS_typ
typedef struct PMS_typ
{	PMS_type PMS;
	SysBatProduct_typ SysBatProduct;
	SysBatCal_typ SysBatCal;
	SysBatPWR_typ SysBatPWR;
	SysCellVolt_typ SysCellVolt;
	SysCellTemps_typ SysCellTemps;
	SysCellV_TPos_typ SysCellV_TPos;
	SysBatProtect_typ SysBatProtect;
	SysBatDIO_typ SysBatDIO;
	BRACal_typ BRACal;
	BRAPWR_A_typ BRAPWR_A;
	BRAPWR_B_typ BRAPWR_B;
	BRACellV_typ BRACellV;
	BRACellT_typ BRACellT;
	BRACellDiv_typ BRACellDiv;
	BRA_VTPos_typ BRA_VTPos;
	BAR_Alarm_typ BAR_Alarm;
	BAR_Protect_typ BAR_Protect;
	BAR_DIO_typ BAR_DIO;
} PMS_typ;
#endif

_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC unsigned long memcpy(unsigned long pDest, unsigned long pSrc, unsigned long length);
_BUR_LOCAL ArCanReceive_typ ArCanReceiver;
_BUR_LOCAL unsigned char countTime;
_BUR_LOCAL unsigned long countCANSuccessOld;
_GLOBAL gComm_typ gComm;
_GLOBAL gSignalCheckType gSignalCheck;
_GLOBAL PMS_typ PMS;
_GLOBAL unsigned long arCAN_11BIT;
_GLOBAL unsigned long arCAN_RECEIVE_ALL;
static void __AS__Action__ActArCanReceiver(void);
static void __AS__Action__ActPMSDATARxParshing(void);
