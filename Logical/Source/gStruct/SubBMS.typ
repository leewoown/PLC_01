
TYPE
	SubBMS_Calculator_type : 	STRUCT 
		BMA : ARRAY[0..3]OF BMAN_typ;
		BSA : ARRAY[0..3]OF BSA_typ;
	END_STRUCT;
	SubBMS_type : 	STRUCT 
		Rack1 : SubBMS_Rack_type;
		Rack2 : SubBMS_Rack_type;
		Rack3 : SubBMS_Rack_type;
		Rack4 : SubBMS_Rack_type;
	END_STRUCT;
	SubBMS_Rack_type : 	STRUCT 
		BMA : BMAN_typ;
		BSA : BSA_typ;
	END_STRUCT;
	BMA_typ : 	STRUCT 
		BMA1 : BMAN_typ;
		BMA2 : BMAN_typ;
		BMA3 : BMAN_typ;
		BMA4 : BMAN_typ;
	END_STRUCT;
	BMAN_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BMAN_Field_typ;
	END_STRUCT;
	BMAN_Field_typ : 	STRUCT 
		BSA_WakeUP : BOOL;
		BSA_Mode : BOOL;
		BSA_Reset : BOOL;
		BSA_Cell_MinV : UINT;
		BSA_Cell_AGV : INT;
	END_STRUCT;
	BSA_typ : 	STRUCT 
		BSA_Product : BSA_Product_typ;
		Rack_Calc : Rack_Calc_typ;
		Rack_State : Rack_State_typ;
		Rack_AlarmState : Rack_AlarmState_typ;
		Rack_PWRCalc : Rack_PWRCalc_typ;
		Rack_Cell_Vcalc : Rack_Cell_Vcalc_typ;
		Rack_Cell_Tcalc : Rack_Cell_Tcalc_typ;
		Rack_Cell_Pcalc : Rack_Cell_Pcalc_typ;
		Modul1_Info : ModulN_Info_typ;
		Modul2_Info : ModulN_Info_typ;
		Modul3_Info : ModulN_Info_typ;
		Modul4_Info : ModulN_Info_typ;
		Modul5_Info : ModulN_Info_typ;
		Modul6_Info : ModulN_Info_typ;
		Modul7_Info : ModulN_Info_typ;
	END_STRUCT;
	BSA_Product_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BSA_Product_Field_typ;
	END_STRUCT;
	Rack_Calc_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_Calc_Field_typ;
	END_STRUCT;
	Rack_State_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_State_Field_typ;
	END_STRUCT;
	Rack_AlarmState_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_AlarmState_Fieild_typ;
	END_STRUCT;
	Rack_PWRCalc_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_PWRCalc_Field_typ;
	END_STRUCT;
	Rack_Cell_Vcalc_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_Cell_Vcalc_Field_typ;
	END_STRUCT;
	Rack_Cell_Tcalc_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_Cell_Tcalc_Field_typ;
	END_STRUCT;
	Rack_Cell_Pcalc_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : Rack_Cell_Pcalc_Field_typ;
	END_STRUCT;
	ModulN_Info_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : ModulN_Info_Field_typ;
	END_STRUCT;
	BSA_Product_Field_typ : 	STRUCT 
		BSA_Type : USINT;
		BSA_SW_Ver : USINT;
		BRA_Normal_Volt : REAL;
		BRA_Capacity : REAL;
		BSA_Serial : USINT;
		BSA_Parallel : USINT;
	END_STRUCT;
	Rack_Calc_Field_typ : 	STRUCT 
		BRA_Volt_Total : REAL;
		BRA_Curr_Total : REAL;
		BRA_SOC : REAL;
		BRA_SOH : REAL;
	END_STRUCT;
	Rack_State_Field_typ : 	STRUCT 
		BSA_Divice_Status : USINT;
		BSA_Protect_Status : USINT;
		BSA_Balance : BOOL;
		BSA_Neg_Rly : BOOL;
		BSA_Pos_Rly : BOOL;
		BSA_PreChar_Rly : BOOL;
		BSA_MSD_AUX : BOOL;
		BSA_EMG_SW : BOOL;
		BSA_Water_leak : BOOL;
		Not_Used1 : BOOL;
		Not_Used2 : USINT;
		BSA_Ah : INT;
		Not_Used3 : UINT;
	END_STRUCT;
	Rack_AlarmState_Fieild_typ : 	STRUCT 
		warning : Rack_warningState_Field_typ;
		fault : Rack_FaultState_Field_typ;
		protect : Rack_ProtectState_Field_typ;
	END_STRUCT;
	Rack_warningState_Field_typ : 	STRUCT 
		BSA_Wn_Dischager_OC : BOOL;
		BSA_Wn_Chager_OC : BOOL;
		BSA_Wn_SOC_OV : BOOL;
		BSA_Wn_SOC_Un : BOOL;
		BSA_Wn_OV : BOOL;
		BSA_Wn_UV : BOOL;
		BSA_Wn_Cell_OV : BOOL;
		BSA_Wn_Cell_UV : BOOL;
		BSA_Wn_Cell_UnbalV : BOOL;
		BSA_Wn_DisCharger_Cell_OT : BOOL;
		BSA_Wn_Charger_Cell_OT : BOOL;
		BSA_Wn_DisCharger_Cell_UT : BOOL;
		BSA_Wn_Charger_Cell_UT : BOOL;
		BSA_Wn_Cell_UnbalT : BOOL;
		BSA_Wn_Discharger_UnbaPWR : BOOL;
		BSA_Wn_Charger_UnbaPWR : BOOL;
	END_STRUCT;
	Rack_FaultState_Field_typ : 	STRUCT 
		BSA_FLT_Dischager_OC : BOOL;
		BSA_FLT_Chager_OC : BOOL;
		BSA_FLT_SOC_OV : BOOL;
		BSA_FLT_SOC_Un : BOOL;
		BSA_FLT_OV : BOOL;
		BSA_FLT_UV : BOOL;
		BSA_FLT_Cell_OV : BOOL;
		BSA_FLT_Cell_UV : BOOL;
		BSA_FLT_Cell_UnbalV : BOOL;
		BSA_FLT_DisCharger_Cell_OT : BOOL;
		BSA_FLT_Charger_Cell_OT : BOOL;
		BSA_FLT_DisCharger_Cell_UT : BOOL;
		BSA_FLT_Charger_Cell_UT : BOOL;
		BSA_FLT_Cell_UnbalT : BOOL;
		BSA_FLT_Discharger_UnbaPWR : BOOL;
		BSA_FLT_Charger_UnbaPWR : BOOL;
	END_STRUCT;
	Rack_ProtectState_Field_typ : 	STRUCT 
		BSA_Prtct_Dischager_OC : BOOL;
		BSA_Prtct_Chager_OC : BOOL;
		BSA_Prtct_SOC_OV : BOOL;
		BSA_Prtct_SOC_Un : BOOL;
		BSA_Prtct_OV : BOOL;
		BSA_Prtct_UV : BOOL;
		BSA_Prtct_Cell_OV : BOOL;
		BSA_Prtct_Cell_UV : BOOL;
		BSA_Prtct_Cell_UnbalV : BOOL;
		BSA_Prtct_DisCharger_Cell_OT : BOOL;
		BSA_Prtct_Charger_Cell_OT : BOOL;
		BSA_Prtct_DisCharger_Cell_UT : BOOL;
		BSA_Prtct_Charger_Cell_UT : BOOL;
		BSA_Prtct_Cell_UnbalT : BOOL;
		BSA_Prtct_Discharger_UnbaPWR : BOOL;
		BSA_Prtct_Charger_UnbaPWR : BOOL;
		BSA_Prtct_Rly_Err : BOOL;
		BSA_Prtct_IN_COM_Err : BOOL;
		BSA_Prtct_EX_COM_Err : BOOL;
		BSA_Prtct_CT_COM_Err : BOOL;
		BSA_Prtct_Water_Leak_Err : BOOL;
		BSA_Prtct_EMS_SW_Err : BOOL;
		Not_Used1 : BOOL;
		Not_Used2 : BOOL;
		Not_Used3 : USINT;
	END_STRUCT;
	Rack_PWRCalc_Field_typ : 	STRUCT 
		BSA_CHAPWCont : REAL;
		BSA_DisCHAPWCont : REAL;
		BSA_CHAPWPeak : REAL;
		BSA_DisCHAPWPeak : REAL;
	END_STRUCT;
	Rack_Cell_Vcalc_Field_typ : 	STRUCT 
		BSA_Cell_MaxV : REAL;
		BSA_Cell_MinV : REAL;
		BSA_Cell_AVGV : REAL;
		BSA_Cell_DeviV : UINT;
	END_STRUCT;
	Rack_Cell_Tcalc_Field_typ : 	STRUCT 
		BSA_Cell_MaxT : REAL;
		BSA_Cell_MinT : REAL;
		BSA_Cell_AVGT : REAL;
		BSA_Cell_DeviT : REAL;
	END_STRUCT;
	Rack_Cell_Pcalc_Field_typ : 	STRUCT 
		BSA_Cell_MaxV_Location : UINT;
		BSA_Cell_MinV_Location : UINT;
		BSA_Cell_MaxT_Location : UINT;
		BSA_Cell_MinT_Location : UINT;
	END_STRUCT;
	ModulN_Info_Field_typ : 	STRUCT 
		Volt_Total : REAL;
		Agv_Volt : REAL;
		Agv_Temp : REAL;
		OPS_INITOK : BOOL;
		OPS_Fault : BOOL;
		OPS_Balan_On_OFF : BOOL;
		OPS_Waterleak_Err : BOOL;
		OPS_CellVolt_Err : BOOL;
		OPS_CellTemps_Err : BOOL;
		BATIC_Err : BOOL;
		CTCOM_Err : BOOL;
		OPS_MBCOM_Err : BOOL;
		Not_Used1 : BOOL;
		Not_Used2 : BOOL;
		Not_Used3 : BOOL;
		Not_Used4 : BOOL;
		Not_Used5 : BOOL;
		Not_Used6 : BOOL;
		Not_Used7 : BOOL;
	END_STRUCT;
END_TYPE
