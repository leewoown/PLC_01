#ifndef __AS__TYPE_
#define __AS__TYPE_
static unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length);
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

#ifndef __AS__TYPE_ArCanSend_steps
#define __AS__TYPE_ArCanSend_steps
typedef enum ArCanSend_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_INIT_SEND_FRAME = 10,
	STEP_WAIT_CMD = 3,
	STEP_INIT_SENDER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0,
} ArCanSend_steps;
#endif

struct ArCanSetBaudrate
{	plcstring DeviceName[128];
	unsigned long Baudrate;
	signed long StatusID;
	unsigned long Internal[32];
	plcbit Execute;
	plcbit Done;
	plcbit Busy;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSetBaudrate(struct ArCanSetBaudrate* inst);
#ifndef __AS__TYPE_ArCanFrameType
#define __AS__TYPE_ArCanFrameType
typedef struct ArCanFrameType
{	plcbyte Data[64];
	unsigned long DataLength;
	unsigned long ID;
	unsigned long Format;
} ArCanFrameType;
#endif

struct ArCanSend
{	plcstring DeviceName[128];
	ArCanFrameType Frame;
	signed long StatusID;
	unsigned long NumberOfFreeBuffers;
	unsigned long Internal[32];
	plcbit Enable;
	plcbit SendFrame;
	plcbit Busy;
	plcbit Active;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSend(struct ArCanSend* inst);
#ifndef __AS__TYPE_ArCanSend_typ
#define __AS__TYPE_ArCanSend_typ
typedef struct ArCanSend_typ
{	ArCanSend_steps step;
	unsigned long ID;
	struct ArCanSetBaudrate ArCanSetBaudrate_0;
	struct ArCanSend ArCanSend_0;
	plcstring senderDeviceName[81];
	unsigned short iterationCounter;
	unsigned long successCount;
	unsigned long waitCounter;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long Baudrate;
	unsigned long Format;
} ArCanSend_typ;
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

#ifndef __AS__TYPE_BMAN_Field_typ
#define __AS__TYPE_BMAN_Field_typ
typedef struct BMAN_Field_typ
{	plcbit BSA_WakeUP;
	plcbit BSA_Mode;
	plcbit BSA_Reset;
	unsigned short BSA_Cell_MinV;
	signed short BSA_Cell_AGV;
} BMAN_Field_typ;
#endif

#ifndef __AS__TYPE_BMAN_typ
#define __AS__TYPE_BMAN_typ
typedef struct BMAN_typ
{	plcdword Value[2];
	BMAN_Field_typ Field;
} BMAN_typ;
#endif

#ifndef __AS__TYPE_BSA_Product_Field_typ
#define __AS__TYPE_BSA_Product_Field_typ
typedef struct BSA_Product_Field_typ
{	unsigned char BSA_Type;
	unsigned char BSA_SW_Ver;
	float BRA_Normal_Volt;
	float BRA_Capacity;
	unsigned char BSA_Serial;
	unsigned char BSA_Parallel;
} BSA_Product_Field_typ;
#endif

#ifndef __AS__TYPE_BSA_Product_typ
#define __AS__TYPE_BSA_Product_typ
typedef struct BSA_Product_typ
{	plcdword Value[2];
	BSA_Product_Field_typ Field;
} BSA_Product_typ;
#endif

#ifndef __AS__TYPE_Rack_Calc_Field_typ
#define __AS__TYPE_Rack_Calc_Field_typ
typedef struct Rack_Calc_Field_typ
{	float BRA_Volt_Total;
	float BRA_Curr_Total;
	float BRA_SOC;
	float BRA_SOH;
} Rack_Calc_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_Calc_typ
#define __AS__TYPE_Rack_Calc_typ
typedef struct Rack_Calc_typ
{	plcdword Value[2];
	Rack_Calc_Field_typ Field;
} Rack_Calc_typ;
#endif

#ifndef __AS__TYPE_Rack_State_Field_typ
#define __AS__TYPE_Rack_State_Field_typ
typedef struct Rack_State_Field_typ
{	unsigned char BSA_Divice_Status;
	unsigned char BSA_Protect_Status;
	plcbit BSA_Balance;
	plcbit BSA_Neg_Rly;
	plcbit BSA_Pos_Rly;
	plcbit BSA_PreChar_Rly;
	plcbit BSA_MSD_AUX;
	plcbit BSA_EMG_SW;
	plcbit BSA_Water_leak;
	plcbit Not_Used1;
	unsigned char Not_Used2;
	signed short BSA_Ah;
	unsigned short Not_Used3;
} Rack_State_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_State_typ
#define __AS__TYPE_Rack_State_typ
typedef struct Rack_State_typ
{	plcdword Value[2];
	Rack_State_Field_typ Field;
} Rack_State_typ;
#endif

#ifndef __AS__TYPE_Rack_warningState_Field_typ
#define __AS__TYPE_Rack_warningState_Field_typ
typedef struct Rack_warningState_Field_typ
{	plcbit BSA_Wn_Dischager_OC;
	plcbit BSA_Wn_Chager_OC;
	plcbit BSA_Wn_SOC_OV;
	plcbit BSA_Wn_SOC_Un;
	plcbit BSA_Wn_OV;
	plcbit BSA_Wn_UV;
	plcbit BSA_Wn_Cell_OV;
	plcbit BSA_Wn_Cell_UV;
	plcbit BSA_Wn_Cell_UnbalV;
	plcbit BSA_Wn_DisCharger_Cell_OT;
	plcbit BSA_Wn_Charger_Cell_OT;
	plcbit BSA_Wn_DisCharger_Cell_UT;
	plcbit BSA_Wn_Charger_Cell_UT;
	plcbit BSA_Wn_Cell_UnbalT;
	plcbit BSA_Wn_Discharger_UnbaPWR;
	plcbit BSA_Wn_Charger_UnbaPWR;
} Rack_warningState_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_FaultState_Field_typ
#define __AS__TYPE_Rack_FaultState_Field_typ
typedef struct Rack_FaultState_Field_typ
{	plcbit BSA_FLT_Dischager_OC;
	plcbit BSA_FLT_Chager_OC;
	plcbit BSA_FLT_SOC_OV;
	plcbit BSA_FLT_SOC_Un;
	plcbit BSA_FLT_OV;
	plcbit BSA_FLT_UV;
	plcbit BSA_FLT_Cell_OV;
	plcbit BSA_FLT_Cell_UV;
	plcbit BSA_FLT_Cell_UnbalV;
	plcbit BSA_FLT_DisCharger_Cell_OT;
	plcbit BSA_FLT_Charger_Cell_OT;
	plcbit BSA_FLT_DisCharger_Cell_UT;
	plcbit BSA_FLT_Charger_Cell_UT;
	plcbit BSA_FLT_Cell_UnbalT;
	plcbit BSA_FLT_Discharger_UnbaPWR;
	plcbit BSA_FLT_Charger_UnbaPWR;
} Rack_FaultState_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_ProtectState_Field_typ
#define __AS__TYPE_Rack_ProtectState_Field_typ
typedef struct Rack_ProtectState_Field_typ
{	plcbit BSA_Prtct_Dischager_OC;
	plcbit BSA_Prtct_Chager_OC;
	plcbit BSA_Prtct_SOC_OV;
	plcbit BSA_Prtct_SOC_Un;
	plcbit BSA_Prtct_OV;
	plcbit BSA_Prtct_UV;
	plcbit BSA_Prtct_Cell_OV;
	plcbit BSA_Prtct_Cell_UV;
	plcbit BSA_Prtct_Cell_UnbalV;
	plcbit BSA_Prtct_DisCharger_Cell_OT;
	plcbit BSA_Prtct_Charger_Cell_OT;
	plcbit BSA_Prtct_DisCharger_Cell_UT;
	plcbit BSA_Prtct_Charger_Cell_UT;
	plcbit BSA_Prtct_Cell_UnbalT;
	plcbit BSA_Prtct_Discharger_UnbaPWR;
	plcbit BSA_Prtct_Charger_UnbaPWR;
	plcbit BSA_Prtct_Rly_Err;
	plcbit BSA_Prtct_IN_COM_Err;
	plcbit BSA_Prtct_EX_COM_Err;
	plcbit BSA_Prtct_CT_COM_Err;
	plcbit BSA_Prtct_Water_Leak_Err;
	plcbit BSA_Prtct_EMS_SW_Err;
	plcbit Not_Used1;
	plcbit Not_Used2;
	unsigned char Not_Used3;
} Rack_ProtectState_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_AlarmState_Fieild_typ
#define __AS__TYPE_Rack_AlarmState_Fieild_typ
typedef struct Rack_AlarmState_Fieild_typ
{	Rack_warningState_Field_typ warning;
	Rack_FaultState_Field_typ fault;
	Rack_ProtectState_Field_typ protect;
} Rack_AlarmState_Fieild_typ;
#endif

#ifndef __AS__TYPE_Rack_AlarmState_typ
#define __AS__TYPE_Rack_AlarmState_typ
typedef struct Rack_AlarmState_typ
{	plcdword Value[2];
	Rack_AlarmState_Fieild_typ Field;
} Rack_AlarmState_typ;
#endif

#ifndef __AS__TYPE_Rack_PWRCalc_Field_typ
#define __AS__TYPE_Rack_PWRCalc_Field_typ
typedef struct Rack_PWRCalc_Field_typ
{	float BSA_CHAPWCont;
	float BSA_DisCHAPWCont;
	float BSA_CHAPWPeak;
	float BSA_DisCHAPWPeak;
} Rack_PWRCalc_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_PWRCalc_typ
#define __AS__TYPE_Rack_PWRCalc_typ
typedef struct Rack_PWRCalc_typ
{	plcdword Value[2];
	Rack_PWRCalc_Field_typ Field;
} Rack_PWRCalc_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Vcalc_Field_typ
#define __AS__TYPE_Rack_Cell_Vcalc_Field_typ
typedef struct Rack_Cell_Vcalc_Field_typ
{	float BSA_Cell_MaxV;
	float BSA_Cell_MinV;
	float BSA_Cell_AVGV;
	unsigned short BSA_Cell_DeviV;
} Rack_Cell_Vcalc_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Vcalc_typ
#define __AS__TYPE_Rack_Cell_Vcalc_typ
typedef struct Rack_Cell_Vcalc_typ
{	plcdword Value[2];
	Rack_Cell_Vcalc_Field_typ Field;
} Rack_Cell_Vcalc_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Tcalc_Field_typ
#define __AS__TYPE_Rack_Cell_Tcalc_Field_typ
typedef struct Rack_Cell_Tcalc_Field_typ
{	float BSA_Cell_MaxT;
	float BSA_Cell_MinT;
	float BSA_Cell_AVGT;
	float BSA_Cell_DeviT;
} Rack_Cell_Tcalc_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Tcalc_typ
#define __AS__TYPE_Rack_Cell_Tcalc_typ
typedef struct Rack_Cell_Tcalc_typ
{	plcdword Value[2];
	Rack_Cell_Tcalc_Field_typ Field;
} Rack_Cell_Tcalc_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Pcalc_Field_typ
#define __AS__TYPE_Rack_Cell_Pcalc_Field_typ
typedef struct Rack_Cell_Pcalc_Field_typ
{	unsigned short BSA_Cell_MaxV_Location;
	unsigned short BSA_Cell_MinV_Location;
	unsigned short BSA_Cell_MaxT_Location;
	unsigned short BSA_Cell_MinT_Location;
} Rack_Cell_Pcalc_Field_typ;
#endif

#ifndef __AS__TYPE_Rack_Cell_Pcalc_typ
#define __AS__TYPE_Rack_Cell_Pcalc_typ
typedef struct Rack_Cell_Pcalc_typ
{	plcdword Value[2];
	Rack_Cell_Pcalc_Field_typ Field;
} Rack_Cell_Pcalc_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info_Field_typ
#define __AS__TYPE_ModulN_Info_Field_typ
typedef struct ModulN_Info_Field_typ
{	float Volt_Total;
	float Agv_Volt;
	float Agv_Temp;
	plcbit OPS_INITOK;
	plcbit OPS_Fault;
	plcbit OPS_Balan_On_OFF;
	plcbit OPS_Waterleak_Err;
	plcbit OPS_CellVolt_Err;
	plcbit OPS_CellTemps_Err;
	plcbit BATIC_Err;
	plcbit CTCOM_Err;
	plcbit OPS_MBCOM_Err;
	plcbit Not_Used1;
	plcbit Not_Used2;
	plcbit Not_Used3;
	plcbit Not_Used4;
	plcbit Not_Used5;
	plcbit Not_Used6;
	plcbit Not_Used7;
} ModulN_Info_Field_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info_typ
#define __AS__TYPE_ModulN_Info_typ
typedef struct ModulN_Info_typ
{	plcdword Value[2];
	ModulN_Info_Field_typ Field;
} ModulN_Info_typ;
#endif

#ifndef __AS__TYPE_BSA_typ
#define __AS__TYPE_BSA_typ
typedef struct BSA_typ
{	BSA_Product_typ BSA_Product;
	Rack_Calc_typ Rack_Calc;
	Rack_State_typ Rack_State;
	Rack_AlarmState_typ Rack_AlarmState;
	Rack_PWRCalc_typ Rack_PWRCalc;
	Rack_Cell_Vcalc_typ Rack_Cell_Vcalc;
	Rack_Cell_Tcalc_typ Rack_Cell_Tcalc;
	Rack_Cell_Pcalc_typ Rack_Cell_Pcalc;
	ModulN_Info_typ Modul1_Info;
	ModulN_Info_typ Modul2_Info;
	ModulN_Info_typ Modul3_Info;
	ModulN_Info_typ Modul4_Info;
	ModulN_Info_typ Modul5_Info;
	ModulN_Info_typ Modul6_Info;
	ModulN_Info_typ Modul7_Info;
} BSA_typ;
#endif

#ifndef __AS__TYPE_SubBMS_Rack_type
#define __AS__TYPE_SubBMS_Rack_type
typedef struct SubBMS_Rack_type
{	BMAN_typ BMA;
	BSA_typ BSA;
} SubBMS_Rack_type;
#endif

#ifndef __AS__TYPE_SubBMS_type
#define __AS__TYPE_SubBMS_type
typedef struct SubBMS_type
{	SubBMS_Rack_type Rack1;
	SubBMS_Rack_type Rack2;
	SubBMS_Rack_type Rack3;
	SubBMS_Rack_type Rack4;
} SubBMS_type;
#endif

_BUR_PUBLIC unsigned long memcpy(unsigned long pDest, unsigned long pSrc, unsigned long length);
_BUR_LOCAL ArCanSend_typ ArCanSender;
_BUR_LOCAL unsigned char step;
_BUR_LOCAL unsigned long successCountOld;
_BUR_LOCAL unsigned long timerCount;
_GLOBAL gSignalCheckType gSignalCheck;
_GLOBAL SubBMS_type SubBMS;
_GLOBAL unsigned long arCAN_11BIT;
static void __AS__Action__ActionArCanSender(void);
static void __AS__Action__ActRACK1DATATxParshing(void);
static void __AS__Action__ActRACK2DATATxParshing(void);
static void __AS__Action__ActRACK3DATATxParshing(void);
static void __AS__Action__ActRACK4DATATxParshing(void);
