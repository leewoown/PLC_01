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

#ifndef __AS__TYPE_StateMa_Enum
#define __AS__TYPE_StateMa_Enum
typedef enum StateMa_Enum
{	vkSYSTEM_INITIAL = 0,
	vkSYSTEM_READY = 1,
	vkSYSTEM_STANDBY = 2,
	vkSYSTEM_RUN = 3,
	vkSYSTEM_ALARM = 4,
	vkSYSTEM_FAULT = 5,
	vkSYSTEM_PROTECT = 6,
	vkSYSTEM_STOP = 7,
	vkSYSTEM_RESET = 8,
} StateMa_Enum;
#endif

#ifndef __AS__TYPE_WakeUpStepMa_Enum
#define __AS__TYPE_WakeUpStepMa_Enum
typedef enum WakeUpStepMa_Enum
{	vkWAKEUP_INITIAL = 0,
	vkWAKEUP_RACK1 = 1,
	vkWAKEUP_RACK2 = 2,
	vkWAKEUP_RACK3 = 3,
	vkWAKEUP_RACK4 = 4,
	vkWAKEUP_NRLY = 5,
	vkWAKEUP_PRORLY_ON = 6,
	vkWAKEUP_DELAYTIME1 = 7,
	vkWAKEUP_PRLY = 8,
	vkWAKEUP_DELAYTIME2 = 9,
	vkWAKEUP_PRORLY_OFF = 10,
	vkWAKEUP_TIMERESET = 11,
} WakeUpStepMa_Enum;
#endif

#ifndef __AS__TYPE_StopStepMa_Enum
#define __AS__TYPE_StopStepMa_Enum
typedef enum StopStepMa_Enum
{	vkSTOP_INITIAL = 0,
	vkSTOP_NRLY = 1,
	vkSTOP_DELAYTIME1 = 2,
	vkSTOP_PRLY = 3,
	vkSTOP_DELAYTIME2 = 4,
	vkSTOP_RACK1 = 5,
	vkSTOP_RACK2 = 6,
	vkSTOP_RACK3 = 7,
	vkSTOP_RACK4 = 8,
	vkSTOP_TIMERESET = 9,
} StopStepMa_Enum;
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

#ifndef __AS__TYPE_ModulN_Info1_Field_typ
#define __AS__TYPE_ModulN_Info1_Field_typ
typedef struct ModulN_Info1_Field_typ
{	unsigned short M_Number;
	float M_Total_Volt;
	plcbit M_INITOK;
	plcbit M_Fault;
	plcbit M_BalanEN;
	plcbit M_Waterleak_Err;
	plcbit M_CellVolt_Err;
	plcbit M_CellTemp_Err;
	plcbit M_BATIC_Err;
	plcbit M_CTCOM_Err;
	plcbit M_MBCOM_Err;
	plcbit M_HMIErrFault;
	plcbit M_BalanceEnabel;
} ModulN_Info1_Field_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info1_typ
#define __AS__TYPE_ModulN_Info1_typ
typedef struct ModulN_Info1_typ
{	plcdword Value[2];
	ModulN_Info1_Field_typ Field;
} ModulN_Info1_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info2_Field_typ
#define __AS__TYPE_ModulN_Info2_Field_typ
typedef struct ModulN_Info2_Field_typ
{	unsigned short M_Number;
	float M_CellMaxVolt;
	float M_CellMinVolt;
	float M_CellAvgVolt;
} ModulN_Info2_Field_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info2_typ
#define __AS__TYPE_ModulN_Info2_typ
typedef struct ModulN_Info2_typ
{	plcdword Value[2];
	ModulN_Info2_Field_typ Field;
} ModulN_Info2_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info3_Field_typ
#define __AS__TYPE_ModulN_Info3_Field_typ
typedef struct ModulN_Info3_Field_typ
{	unsigned short M_Number;
	float M_CellMaxTemp;
	float M_CellMinTemp;
	float M_CellAvgTemp;
} ModulN_Info3_Field_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info3_typ
#define __AS__TYPE_ModulN_Info3_typ
typedef struct ModulN_Info3_typ
{	plcdword Value[2];
	ModulN_Info3_Field_typ Field;
} ModulN_Info3_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info4_Field_typ
#define __AS__TYPE_ModulN_Info4_Field_typ
typedef struct ModulN_Info4_Field_typ
{	unsigned short M_Number;
	unsigned short M_CellDivVolt;
	float M_CellDivTemp;
	unsigned short M_MDInResis;
} ModulN_Info4_Field_typ;
#endif

#ifndef __AS__TYPE_ModulN_Info4_typ
#define __AS__TYPE_ModulN_Info4_typ
typedef struct ModulN_Info4_typ
{	plcdword Value[2];
	ModulN_Info4_Field_typ Field;
} ModulN_Info4_typ;
#endif

#ifndef __AS__TYPE_ModuleN_Info_Type
#define __AS__TYPE_ModuleN_Info_Type
typedef struct ModuleN_Info_Type
{	ModulN_Info1_typ INFO_1;
	ModulN_Info2_typ INFO_2;
	ModulN_Info3_typ INFO_3;
	ModulN_Info4_typ INFO_4;
} ModuleN_Info_Type;
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
	ModuleN_Info_Type Modul1_Info;
	ModuleN_Info_Type Modul2_Info;
	ModuleN_Info_Type Modul3_Info;
	ModuleN_Info_Type Modul4_Info;
	ModuleN_Info_Type Modul5_Info;
	ModuleN_Info_Type Modul6_Info;
	ModuleN_Info_Type Modul7_Info;
} BSA_typ;
#endif

#ifndef __AS__TYPE_SubBMS_Calculator_type
#define __AS__TYPE_SubBMS_Calculator_type
typedef struct SubBMS_Calculator_type
{	struct BMAN_typ BMA[4];
	struct BSA_typ BSA[4];
} SubBMS_Calculator_type;
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

_BUR_PUBLIC double RealAbs(double x);
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
_BUR_LOCAL unsigned char i;
_BUR_LOCAL struct TON PRATimerProRlyOn;
_BUR_LOCAL struct TON PRATimerProRlyOff;
_BUR_LOCAL struct TON PRATimerWakeUpOff;
_BUR_LOCAL struct TON PRATimerPrtErr;
_BUR_LOCAL struct TON PRATimerSeqErr;
_BUR_LOCAL struct TON PRATimerReset;
_BUR_LOCAL plcbit PRAProtectCheckDone;
_BUR_LOCAL plcbit PRARackResetDone;
_BUR_LOCAL unsigned char PRARackResetCount;
_BUR_LOCAL plcbit PRAWakeUpDone;
_BUR_LOCAL plcbit PRAStopDone;
_BUR_LOCAL WakeUpStepMa_Enum WakeUpStep;
_BUR_LOCAL StopStepMa_Enum StopStep;
_BUR_LOCAL plcbit PRARackReadyDone;
_BUR_LOCAL signed short PRARackEnableCount;
_GLOBAL SysBMS_Typ Sys;
_GLOBAL StateMa_Enum StateMa;
_GLOBAL unsigned char RACK_MAXNUM;
_GLOBAL unsigned char RACK_MAXNUM_MINUS_1;
_GLOBAL SubBMS_Calculator_type SubBMS_Calculator;
_GLOBAL HMI_typ HMI;
_GLOBAL PMS_typ PMS;
static void __AS__Action__ATSystemReady(void);
static void __AS__Action__ATReset(void);
static void __AS__Action__ATWakeUpSeq(void);
static void __AS__Action__ATStopSeq(void);
