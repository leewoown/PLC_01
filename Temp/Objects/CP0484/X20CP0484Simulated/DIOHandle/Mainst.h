#ifndef __AS__TYPE_
#define __AS__TYPE_
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

#ifndef __AS__TYPE_SysBMS_Typ
#define __AS__TYPE_SysBMS_Typ
typedef struct SysBMS_Typ
{	plcbit ProRlyAux;
	plcbit NRlyAux;
	plcbit PRlyAux;
	plcbit EMSRlyAux;
	plcbit EMSRlyAux_BMP;
	plcbit GasDetectorAux;
	plcbit WaterCoolingAux;
	plcbit FireDetectorAux;
	plcbit PowerLamp;
	plcbit Buzzer;
	plcbit PRly;
	plcbit NRly;
	plcbit ProRly;
	plcbit WakeUpSig;
	plcbit ResetSig;
	plcbit ProtectCheckSig;
	plcbit RackInfoCheckSig;
	plcbit StopSig;
	plcbit AlarmSig;
	plcbit FaultSig;
	plcbit ProtectSig;
	plcbit BuzzerSig;
	plcbit DeviceloadingDone;
} SysBMS_Typ;
#endif

#ifndef __AS__TYPE_STEP_Enum
#define __AS__TYPE_STEP_Enum
typedef enum STEP_Enum
{	vkINITIAL = 0,
	vkBOOTING = 1,
	vkSYSTEM = 2,
	vkRACK1 = 3,
	vkRACK2 = 4,
	vkRACK3 = 5,
	vkRACK4 = 6,
	vkADMINISTRATOR = 13,
	vkALARMHISTORY = 14,
	vkLOADINGERROR = 15,
	vkPROTECTERROR = 16,
	vkUSERTEST = 20,
} STEP_Enum;
#endif

#ifndef __AS__TYPE_DeviceLoadingPanel_typ
#define __AS__TYPE_DeviceLoadingPanel_typ
typedef struct DeviceLoadingPanel_typ
{	plcbit Trigger;
	unsigned char DeviceLoadingStep;
	unsigned char RackLoading;
	unsigned char DeviceLoading_Max;
	unsigned char SetRackNum;
	plcstring LoadingText[41];
} DeviceLoadingPanel_typ;
#endif

#ifndef __AS__TYPE_RackIndex_enum
#define __AS__TYPE_RackIndex_enum
typedef enum RackIndex_enum
{	vkRACKNUM1 = 0,
	vkRACKNUM2 = 1,
	vkRACKNUM3 = 2,
	vkRACKNUM4 = 3,
} RackIndex_enum;
#endif

#ifndef __AS__TYPE_GaugePanel_typ
#define __AS__TYPE_GaugePanel_typ
typedef struct GaugePanel_typ
{	float BRA_SOC;
	plcstring BRA_SOC_A[21];
	plcstring BRA_SOC_B[51];
	float BRA_SOH;
	plcstring BRA_SOH_A[21];
	plcstring BRA_SOH_B[51];
	float BRA_Volt_Total;
	plcstring BRA_Volt_Total_A[21];
	plcstring BRA_Volt_Total_B[51];
	float BRA_Curr_Total;
	plcstring BRA_Curr_Total_A[21];
	plcstring BRA_Curr_Total_B[51];
} GaugePanel_typ;
#endif

#ifndef __AS__TYPE_BATInfoPanel_typ
#define __AS__TYPE_BATInfoPanel_typ
typedef struct BATInfoPanel_typ
{	float BSA_Cell_MaxV;
	float BSA_Cell_MinV;
	float BSA_Cell_AVGV;
	float BSA_Cell_DeviV;
	float BSA_Cell_MaxT;
	float BSA_Cell_MinT;
	float BSA_Cell_AVGT;
	float BSA_Cell_DeviT;
	plcstring BSA_Cell_MaxV_Rack_Location[21];
	plcstring BSA_Cell_MaxV_Cell_Location[21];
	plcstring BSA_Cell_MaxV_Location[21];
	plcstring BSA_Cell_MinV_Rack_Location[21];
	plcstring BSA_Cell_MinV_Cell_Location[21];
	plcstring BSA_Cell_MinV_Location[21];
	plcstring BSA_Cell_MaxT_Rack_Location[21];
	plcstring BSA_Cell_MaxT_Cell_Location[21];
	plcstring BSA_Cell_MaxT_Location[21];
	plcstring BSA_Cell_MinT_Rack_Location[21];
	plcstring BSA_Cell_MinT_Cell_Location[21];
	plcstring BSA_Cell_MinT_Location[21];
} BATInfoPanel_typ;
#endif

#ifndef __AS__TYPE_ModuleInfoPanel_typ
#define __AS__TYPE_ModuleInfoPanel_typ
typedef struct ModuleInfoPanel_typ
{	float Volt_Total;
	plcstring OPS_Fault[21];
	plcstring CTCOM_Err[21];
	plcstring OPS_MBCOM_Err[21];
} ModuleInfoPanel_typ;
#endif

#ifndef __AS__TYPE_SystemRackInfoPanel_typ
#define __AS__TYPE_SystemRackInfoPanel_typ
typedef struct SystemRackInfoPanel_typ
{	plcstring RACK_State[4][21];
	plcstring RACK_BRA_Volt_Total[4][21];
	plcstring RACK_BRA_Curr_Total[4][21];
	plcstring RACK_BRA_Total[4][21];
} SystemRackInfoPanel_typ;
#endif

#ifndef __AS__TYPE_DIOStatusPanel_typ
#define __AS__TYPE_DIOStatusPanel_typ
typedef struct DIOStatusPanel_typ
{	plcstring BSA_Exteral_EMS[21];
	plcstring BSA_BMP_EMS[21];
	plcstring BSA_Watercooling[21];
	plcstring BSA_GasDetector[21];
	plcstring BSA_FireDetector[21];
	plcstring BSA_Neg_Rly[21];
	plcstring BSA_PreChar_Rly[21];
	plcstring BSA_Pos_Rly[21];
	plcstring BSA_Protect_Status[21];
	plcstring BSA_EMG_SW[21];
	plcstring BSA_WaterLeak[21];
	plcstring BSA_Balance[21];
	plcstring BSA_MSD_AUX[21];
} DIOStatusPanel_typ;
#endif

#ifndef __AS__TYPE_ProtectStatusPanel_typ
#define __AS__TYPE_ProtectStatusPanel_typ
typedef struct ProtectStatusPanel_typ
{	plcstring BSA_Charge_OC[21];
	plcstring BSA_Discharge_OC[21];
	plcstring BSA_OC[21];
	plcstring BSA_SOC_OV[21];
	plcstring BSA_SOC_Un[21];
	plcstring BSA_OV[21];
	plcstring BSA_UV[21];
	plcstring BSA_Cell_OV[21];
	plcstring BSA_Cell_UV[21];
	plcstring BSA_Cell_UnbalV[21];
	plcstring BSA_DisCharger_Cell_OT[21];
	plcstring BSA_Charger_Cell_OT[21];
	plcstring BSA_DisCharger_Cell_UT[21];
	plcstring BSA_Charger_Cell_UT[21];
	plcstring BSA_Cell_UnbalT[21];
	plcstring BSA_Discharge_Unbal_PWR[21];
	plcstring BSA_Charge_Unbal_PWR[21];
	plcstring BSA_Prtct_Peak_OP[21];
	plcstring BSA_Prtct_EMS_SW_Err[21];
	plcstring BSA_Prtct_Continuously_OP[21];
	plcstring BSA_Prtct_IN_COM_Err[21];
	plcstring BSA_Prtct_EX_COM_Err[21];
	plcstring BSA_Prtct_CT_COM_Err[21];
	plcstring BSA_Prtct_Rly_Err[21];
	plcstring BSA_Prtct_Water_Leak_Err[21];
	plcstring BRA_Prtct_InsulationReg[21];
	plcstring BRA_Prtct_MDSFuse[21];
	plcstring BSA_Prtct_CoolingSystem[21];
} ProtectStatusPanel_typ;
#endif

#ifndef __AS__TYPE_ALARM_Info_typ
#define __AS__TYPE_ALARM_Info_typ
typedef struct ALARM_Info_typ
{	plcstring Name[31];
	plcstring InitialTime[16];
	plcstring RecentTime[16];
	plcstring ClearTime[16];
	plcstring Location[16];
	unsigned char Internal_Count;
	unsigned char Count;
} ALARM_Info_typ;
#endif

#ifndef __AS__TYPE_AlarmTableIndex_enum
#define __AS__TYPE_AlarmTableIndex_enum
typedef enum AlarmTableIndex_enum
{	vkWarning = 0,
	vkFault = 1,
	vkProtect = 2,
} AlarmTableIndex_enum;
#endif

#ifndef __AS__TYPE_LoginStatusEnum
#define __AS__TYPE_LoginStatusEnum
typedef enum LoginStatusEnum
{	USER = 0,
	ADMIN = 1,
} LoginStatusEnum;
#endif

#ifndef __AS__TYPE_AdminLogin_typ
#define __AS__TYPE_AdminLogin_typ
typedef struct AdminLogin_typ
{	LoginStatusEnum Authority;
	plcstring Input_Button[2];
	plcstring Password_Internal[17];
	plcstring Password_External[17];
} AdminLogin_typ;
#endif

#ifndef __AS__TYPE_TrendData_typ
#define __AS__TYPE_TrendData_typ
typedef struct TrendData_typ
{	float Voltage;
	float Current;
} TrendData_typ;
#endif

#ifndef __AS__TYPE_DialogBox_typ
#define __AS__TYPE_DialogBox_typ
typedef struct DialogBox_typ
{	plcbit LoadingError_Trigger;
	plcbit BuzzerOFF_Trigger;
	plcbit Protect_Trigger;
	plcstring ProtectName[31];
	plcstring ProtectNum[11];
} DialogBox_typ;
#endif

#ifndef __AS__TYPE_HMI_typ
#define __AS__TYPE_HMI_typ
typedef struct HMI_typ
{	STEP_Enum Step;
	DeviceLoadingPanel_typ DeviceLoading;
	plcbit RackEnable[4];
	RackIndex_enum RackIndex;
	GaugePanel_typ Gauge;
	BATInfoPanel_typ BatteryInfo;
	ModuleInfoPanel_typ Module1Info;
	ModuleInfoPanel_typ Module2Info;
	ModuleInfoPanel_typ Module3Info;
	ModuleInfoPanel_typ Module4Info;
	ModuleInfoPanel_typ Module5Info;
	ModuleInfoPanel_typ Module6Info;
	ModuleInfoPanel_typ Module7Info;
	SystemRackInfoPanel_typ SystemRackInfo;
	plcstring BSA_Divice_Status[21];
	DIOStatusPanel_typ DIOStatus;
	ProtectStatusPanel_typ ProtectStatus;
	struct ALARM_Info_typ SubBMS_AlarmTable[28];
	AlarmTableIndex_enum AlarmTableIndex;
	AdminLogin_typ AdminLogin;
	plcbit AdminDeviceReset;
	TrendData_typ TrendData;
	DialogBox_typ DialogBox;
} HMI_typ;
#endif

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_LOCAL plcbit ProRLY;
_BUR_LOCAL plcbit PRLY;
_BUR_LOCAL plcbit NRLY;
_BUR_LOCAL plcbit ProRLYAUX;
_BUR_LOCAL plcbit PRLYAUX;
_BUR_LOCAL plcbit NRLYAUX;
_BUR_LOCAL plcbit EMSRLYAUX;
_BUR_LOCAL plcbit EMSRLYAUX_BMP;
_BUR_LOCAL plcbit GasDetectorAUX;
_BUR_LOCAL plcbit WaterCoolingAUX;
_BUR_LOCAL plcbit FireDetectorAUX;
_BUR_LOCAL plcbit Buzzer;
_BUR_LOCAL plcbit PowerLamp;
_BUR_LOCAL struct TON TON_0;
_GLOBAL SysBMS_Typ Sys;
_GLOBAL unsigned char RACK_MAXNUM;
_GLOBAL unsigned char RACK_MAXNUM_MINUS_1;
_GLOBAL HMI_typ HMI;
