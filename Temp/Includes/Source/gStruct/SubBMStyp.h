/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1755402251_1_
#define _BUR_1755402251_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct BMAN_Field_typ
{	plcbit BSA_WakeUP;
	plcbit BSA_Mode;
	plcbit BSA_Reset;
	unsigned short BSA_Cell_MinV;
	signed short BSA_Cell_AGV;
} BMAN_Field_typ;

typedef struct BMAN_typ
{	plcdword Value[2];
	struct BMAN_Field_typ Field;
} BMAN_typ;

typedef struct BSA_Product_Field_typ
{	unsigned char BSA_Type;
	unsigned char BSA_SW_Ver;
	float BRA_Normal_Volt;
	float BRA_Capacity;
	unsigned char BSA_Serial;
	unsigned char BSA_Parallel;
} BSA_Product_Field_typ;

typedef struct BSA_Product_typ
{	plcdword Value[2];
	struct BSA_Product_Field_typ Field;
} BSA_Product_typ;

typedef struct Rack_Calc_Field_typ
{	float BRA_Volt_Total;
	float BRA_Curr_Total;
	float BRA_SOC;
	float BRA_SOH;
} Rack_Calc_Field_typ;

typedef struct Rack_Calc_typ
{	plcdword Value[2];
	struct Rack_Calc_Field_typ Field;
} Rack_Calc_typ;

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

typedef struct Rack_State_typ
{	plcdword Value[2];
	struct Rack_State_Field_typ Field;
} Rack_State_typ;

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

typedef struct Rack_AlarmState_Fieild_typ
{	struct Rack_warningState_Field_typ warning;
	struct Rack_FaultState_Field_typ fault;
	struct Rack_ProtectState_Field_typ protect;
} Rack_AlarmState_Fieild_typ;

typedef struct Rack_AlarmState_typ
{	plcdword Value[2];
	struct Rack_AlarmState_Fieild_typ Field;
} Rack_AlarmState_typ;

typedef struct Rack_PWRCalc_Field_typ
{	float BSA_CHAPWCont;
	float BSA_DisCHAPWCont;
	float BSA_CHAPWPeak;
	float BSA_DisCHAPWPeak;
} Rack_PWRCalc_Field_typ;

typedef struct Rack_PWRCalc_typ
{	plcdword Value[2];
	struct Rack_PWRCalc_Field_typ Field;
} Rack_PWRCalc_typ;

typedef struct Rack_Cell_Vcalc_Field_typ
{	float BSA_Cell_MaxV;
	float BSA_Cell_MinV;
	float BSA_Cell_AVGV;
	unsigned short BSA_Cell_DeviV;
} Rack_Cell_Vcalc_Field_typ;

typedef struct Rack_Cell_Vcalc_typ
{	plcdword Value[2];
	struct Rack_Cell_Vcalc_Field_typ Field;
} Rack_Cell_Vcalc_typ;

typedef struct Rack_Cell_Tcalc_Field_typ
{	float BSA_Cell_MaxT;
	float BSA_Cell_MinT;
	float BSA_Cell_AVGT;
	float BSA_Cell_DeviT;
} Rack_Cell_Tcalc_Field_typ;

typedef struct Rack_Cell_Tcalc_typ
{	plcdword Value[2];
	struct Rack_Cell_Tcalc_Field_typ Field;
} Rack_Cell_Tcalc_typ;

typedef struct Rack_Cell_Pcalc_Field_typ
{	unsigned short BSA_Cell_MaxV_Location;
	unsigned short BSA_Cell_MinV_Location;
	unsigned short BSA_Cell_MaxT_Location;
	unsigned short BSA_Cell_MinT_Location;
} Rack_Cell_Pcalc_Field_typ;

typedef struct Rack_Cell_Pcalc_typ
{	plcdword Value[2];
	struct Rack_Cell_Pcalc_Field_typ Field;
} Rack_Cell_Pcalc_typ;

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

typedef struct ModulN_Info1_typ
{	plcdword Value[2];
	struct ModulN_Info1_Field_typ Field;
} ModulN_Info1_typ;

typedef struct ModulN_Info2_Field_typ
{	unsigned short M_Number;
	float M_CellMaxVolt;
	float M_CellMinVolt;
	float M_CellAvgVolt;
} ModulN_Info2_Field_typ;

typedef struct ModulN_Info2_typ
{	plcdword Value[2];
	struct ModulN_Info2_Field_typ Field;
} ModulN_Info2_typ;

typedef struct ModulN_Info3_Field_typ
{	unsigned short M_Number;
	float M_CellMaxTemp;
	float M_CellMinTemp;
	float M_CellAvgTemp;
} ModulN_Info3_Field_typ;

typedef struct ModulN_Info3_typ
{	plcdword Value[2];
	struct ModulN_Info3_Field_typ Field;
} ModulN_Info3_typ;

typedef struct ModulN_Info4_Field_typ
{	unsigned short M_Number;
	unsigned short M_CellDivVolt;
	float M_CellDivTemp;
	unsigned short M_MDInResis;
} ModulN_Info4_Field_typ;

typedef struct ModulN_Info4_typ
{	plcdword Value[2];
	struct ModulN_Info4_Field_typ Field;
} ModulN_Info4_typ;

typedef struct ModuleN_Info_Type
{	struct ModulN_Info1_typ INFO_1;
	struct ModulN_Info2_typ INFO_2;
	struct ModulN_Info3_typ INFO_3;
	struct ModulN_Info4_typ INFO_4;
} ModuleN_Info_Type;

typedef struct BSA_typ
{	struct BSA_Product_typ BSA_Product;
	struct Rack_Calc_typ Rack_Calc;
	struct Rack_State_typ Rack_State;
	struct Rack_AlarmState_typ Rack_AlarmState;
	struct Rack_PWRCalc_typ Rack_PWRCalc;
	struct Rack_Cell_Vcalc_typ Rack_Cell_Vcalc;
	struct Rack_Cell_Tcalc_typ Rack_Cell_Tcalc;
	struct Rack_Cell_Pcalc_typ Rack_Cell_Pcalc;
	struct ModuleN_Info_Type Modul1_Info;
	struct ModuleN_Info_Type Modul2_Info;
	struct ModuleN_Info_Type Modul3_Info;
	struct ModuleN_Info_Type Modul4_Info;
	struct ModuleN_Info_Type Modul5_Info;
	struct ModuleN_Info_Type Modul6_Info;
	struct ModuleN_Info_Type Modul7_Info;
} BSA_typ;

typedef struct SubBMS_Calculator_type
{	struct BMAN_typ BMA[4];
	struct BSA_typ BSA[4];
} SubBMS_Calculator_type;

typedef struct SubBMS_Rack_type
{	struct BMAN_typ BMA;
	struct BSA_typ BSA;
} SubBMS_Rack_type;

typedef struct SubBMS_type
{	struct SubBMS_Rack_type Rack1;
	struct SubBMS_Rack_type Rack2;
	struct SubBMS_Rack_type Rack3;
	struct SubBMS_Rack_type Rack4;
} SubBMS_type;

typedef struct BMA_typ
{	struct BMAN_typ BMA1;
	struct BMAN_typ BMA2;
	struct BMAN_typ BMA3;
	struct BMAN_typ BMA4;
} BMA_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/gStruct/SubBMS.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1755402251_1_ */

