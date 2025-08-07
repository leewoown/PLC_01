/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754546807_1_
#define _BUR_1754546807_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
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
	vkUSERTEST = 20
} STEP_Enum;

typedef enum RackIndex_enum
{	vkRACKNUM1 = 0,
	vkRACKNUM2 = 1,
	vkRACKNUM3 = 2,
	vkRACKNUM4 = 3
} RackIndex_enum;

typedef enum AlarmTableIndex_enum
{	vkWarning = 0,
	vkFault = 1,
	vkProtect = 2
} AlarmTableIndex_enum;

typedef enum LoginStatusEnum
{	USER = 0,
	ADMIN = 1
} LoginStatusEnum;

typedef struct DeviceLoadingPanel_typ
{	plcbit Trigger;
	unsigned char DeviceLoadingStep;
	unsigned char RackLoading;
	unsigned char DeviceLoading_Max;
	unsigned char SetRackNum;
	plcstring LoadingText[41];
} DeviceLoadingPanel_typ;

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

typedef struct ModuleInfoPanel_typ
{	plcstring Volt_Total_A[21];
	plcstring Volt_Total_B[21];
	plcstring OPS_Fault[21];
	plcstring CTCOM_Err[21];
	plcstring OPS_MBCOM_Err[21];
} ModuleInfoPanel_typ;

typedef struct SystemRackInfoPanel_typ
{	plcstring RACK_State[4][21];
	plcstring RACK_BRA_Volt_Total[4][21];
	plcstring RACK_BRA_Curr_Total[4][21];
	plcstring RACK_BRA_Total[4][21];
} SystemRackInfoPanel_typ;

typedef struct DIOStatusPanel_typ
{	plcstring BSA_Exteral_EMS[21];
	plcstring BSA_BMP_EMS[21];
	plcstring BSA_Watercooling[21];
	plcstring BSA_GasDetector[21];
	plcstring BSA_FireDetector[21];
	plcstring BSA_Neg_Rly[21];
	plcstring BSA_PreChar_Rly[21];
	plcstring BSA_Pos_Rly[21];
} DIOStatusPanel_typ;

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
	plcstring BSA_Prtct_Rly_Err[21];
	plcstring BSA_Prtct_Water_Leak_Err[21];
	plcstring BRA_Prtct_InsulationReg[21];
	plcstring BRA_Prtct_MDSFuse[21];
	plcstring BSA_Prtct_CoolingSystem[21];
} ProtectStatusPanel_typ;

typedef struct ALARM_Info_typ
{	plcstring Name[31];
	plcstring InitialTime[16];
	plcstring RecentTime[16];
	plcstring ClearTime[16];
	unsigned char Count;
} ALARM_Info_typ;

typedef struct AdminLogin_typ
{	enum LoginStatusEnum Authority;
	plcstring Input_Button[2];
	plcstring Password_Internal[17];
	plcstring Password_External[17];
} AdminLogin_typ;

typedef struct TrendData_typ
{	float Voltage;
	float Current;
} TrendData_typ;

typedef struct DialogBox_typ
{	plcbit LoadingError_Trigger;
	plcbit BuzzerOFF_Trigger;
	plcbit Protect_Trigger;
	plcstring ProtectName[31];
} DialogBox_typ;

typedef struct HMI_typ
{	enum STEP_Enum Step;
	struct DeviceLoadingPanel_typ DeviceLoading;
	plcbit RackEnable[4];
	enum RackIndex_enum RackIndex;
	struct GaugePanel_typ Gauge;
	struct BATInfoPanel_typ BatteryInfo;
	struct ModuleInfoPanel_typ Module1Info;
	struct ModuleInfoPanel_typ Module2Info;
	struct ModuleInfoPanel_typ Module3Info;
	struct ModuleInfoPanel_typ Module4Info;
	struct ModuleInfoPanel_typ Module5Info;
	struct ModuleInfoPanel_typ Module6Info;
	struct ModuleInfoPanel_typ Module7Info;
	struct SystemRackInfoPanel_typ SystemRackInfo;
	plcstring BSA_Divice_Status[21];
	struct DIOStatusPanel_typ DIOStatus;
	struct ProtectStatusPanel_typ ProtectStatus;
	struct ALARM_Info_typ SubBMS_AlarmTable[22];
	enum AlarmTableIndex_enum AlarmTableIndex;
	struct AdminLogin_typ AdminLogin;
	plcbit AdminDeviceReset;
	struct TrendData_typ TrendData;
	struct DialogBox_typ DialogBox;
} HMI_typ;

typedef struct Alarm_typ
{	struct ALARM_Info_typ Warning[22];
	struct ALARM_Info_typ Fault[22];
	struct ALARM_Info_typ Protect[22];
} Alarm_typ;

typedef struct Dialog_typ
{	plcstring Name[31];
	plcbit Trigger;
} Dialog_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/HMI.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/Source/gVariable/Variables.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754546807_1_ */

