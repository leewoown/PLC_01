
TYPE
	PMS_typ : 	STRUCT 
		PMS : PMS_type;
		SysBatProduct : SysBatProduct_typ;
		SysBatCal : SysBatCal_typ;
		SysBatPWR : SysBatPWR_typ;
		SysCellVolt : SysCellVolt_typ;
		SysCellTemps : SysCellTemps_typ;
		SysCellV_TPos : SysCellV_TPos_typ;
		SysBatProtect : SysBatProtect_typ;
		SysBatDIO : SysBatDIO_typ;
		BRACal : BRACal_typ;
		BRAPWR_A : BRAPWR_A_typ;
		BRAPWR_B : BRAPWR_B_typ;
		BRACellV : BRACellV_typ;
		BRACellT : BRACellT_typ;
		BRACellDiv : BRACellDiv_typ;
		BRA_VTPos : BRA_VTPos_typ;
		BAR_Alarm : BAR_Alarm_typ;
		BAR_Protect : BAR_Protect_typ;
		BAR_DIO : BAR_DIO_typ;
	END_STRUCT;
	PMS_type : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : PMS_Field_typ;
	END_STRUCT;
	SysBatProduct_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysBatProduct_Field_typ;
	END_STRUCT;
	SysBatCal_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysBatCal_Field_typ;
	END_STRUCT;
	SysBatPWR_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysBatPWR_Field_typ;
	END_STRUCT;
	SysCellVolt_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysCellVolt_Field_typ;
	END_STRUCT;
	SysCellTemps_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysCellTemps_Field_typ;
	END_STRUCT;
	SysCellV_TPos_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysCellV_TPos_Field_typ;
	END_STRUCT;
	SysBatProtect_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysBatProtect_Field_typ;
	END_STRUCT;
	SysBatDIO_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : SysBatDIO_Field_typ;
	END_STRUCT;
	BRACal_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRACal_Field_typ;
	END_STRUCT;
	BRAPWR_A_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRAPWR_A_Field_typ;
	END_STRUCT;
	BRAPWR_B_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRAPWR_B_Field_typ;
	END_STRUCT;
	BRACellV_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRACellV_Field_typ;
	END_STRUCT;
	BRACellT_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRACellT_Field_typ;
	END_STRUCT;
	BRACellDiv_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRACellDiv_Field_typ;
	END_STRUCT;
	BRA_VTPos_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BRA_VTPos_Field_typ;
	END_STRUCT;
	BAR_Alarm_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BAR_Alarm_Field_typ;
	END_STRUCT;
	BAR_Protect_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BAR_Protect_Field_typ;
	END_STRUCT;
	BAR_DIO_typ : 	STRUCT 
		Value : ARRAY[0..1]OF DWORD;
		Field : BAR_DIO_Field_typ;
	END_STRUCT;
	PMS_Field_typ : 	STRUCT 
		PMS_WakeUp_CMD : BOOL;
		PMS_POWER_CMD : BOOL;
		PMS_FaultReset : BOOL;
		PMS_Po_RelayStatus : BOOL;
		PMS_Pro_RelayStatus : BOOL;
		PMS_Ne_RelayStatus : BOOL;
	END_STRUCT;
	SysBatProduct_Field_typ : 	STRUCT 
		BSA_Production_Year : UINT;
		BSA_Production_Type : USINT;
		BSA_Production_Num : USINT;
		BSA_Production_VER : USINT;
		BSA_Production_BSA_Serial : USINT;
		BSA_Production_BSA_Parallel : USINT;
	END_STRUCT;
	SysBatCal_Field_typ : 	STRUCT 
		BSA_Volt_Total : REAL;
		BSA_Curr_Total : REAL;
		BSA_SOC : REAL;
		BSA_Divice_Status : UINT;
	END_STRUCT;
	SysBatPWR_Field_typ : 	STRUCT 
		BSA_Cont_Charge_Power_Limit : REAL;
		BSA_Peak_Charge_Power_Limit : REAL;
		BSA_Cont_Discharge_Power_Limit : REAL;
		BSA_Peak_Discharge_Power_Limit : REAL;
	END_STRUCT;
	SysCellVolt_Field_typ : 	STRUCT 
		BSA_Cell_MaxV : REAL;
		BSA_Cell_MinV : REAL;
		BSA_Cell_AVGV : REAL;
		BSA_Cell_DeviV : REAL;
	END_STRUCT;
	SysCellTemps_Field_typ : 	STRUCT 
		BSA_Cell_MaxT : REAL;
		BSA_Cell_MinT : REAL;
		BSA_Cell_AVGT : REAL;
		BSA_Cell_DeviT : REAL;
	END_STRUCT;
	SysCellV_TPos_Field_typ : 	STRUCT 
		BSA_Rack_MaxV_Location : USINT;
		BSA_Cell_MaxV_Location : USINT;
		BSA_Rack_MinV_Location : USINT;
		BSA_Cell_MinV_Location : USINT;
		BSA_Rack_MaxT_Location : USINT;
		BSA_Cell_MaxT_Location : USINT;
		BSA_Rack_MinT_Location : USINT;
		BSA_Cell_MinT_Location : USINT;
	END_STRUCT;
	SysBatProtect_Field_typ : 	STRUCT 
		BSA_Alarm_OC : BOOL;
		BSA_Alarm_SOC_OV : BOOL;
		BSA_Alarm_SOC_UN : BOOL;
		BSA_Alarm_OV : BOOL;
		BSA_Alarm_UV : BOOL;
		BSA_Alarm_Cell_OV : BOOL;
		BSA_Alarm_Cell_UV : BOOL;
		BSA_Alarm_Cell_UnBalaV : BOOL;
		BSA_Alarm_Discharger_Cell_OT : BOOL;
		BSA_Alarm_Charger_Cell_OT : BOOL;
		BSA_Alarm_Discharger_Cell_UT : BOOL;
		BSA_Alarm_Charger_Cell_UT : BOOL;
		BSA_Alarm_Cell_UnBalaT : BOOL;
		BSA_Alarm_Continuously_OP : BOOL;
		BSA_Alarm_Peak_OP : BOOL;
		BSA_Fault_OC : BOOL;
		BSA_Fault_SOC_OV : BOOL;
		BSA_Fault_SOC_UN : BOOL;
		BSA_Fault_OV : BOOL;
		BSA_Fault_UV : BOOL;
		BSA_Fault_Cell_OV : BOOL;
		BSA_Fault_Cell_UV : BOOL;
		BSA_Fault_Cell_UnBalaV : BOOL;
		BSA_Fault_Discharger_Cell_OT : BOOL;
		BSA_Fault_Charger_Cell_OT : BOOL;
		BSA_Fault_Discharger_Cell_UT : BOOL;
		BSA_Fault_Charger_Cell_UT : BOOL;
		BSA_Fault_Cell_UnBalaT : BOOL;
		BSA_Fault_Continuously_OP : BOOL;
		BSA_Fault_Peak_OP : BOOL;
		BSA_Prtct_OC : BOOL;
		BSA_Prtct_SOC_OV : BOOL;
		BSA_Prtct_SOC_UN : BOOL;
		BSA_Prtct_OV : BOOL;
		BSA_Prtct_UV : BOOL;
		BSA_Prtct_Cell_OV : BOOL;
		BSA_Prtct_Cell_UV : BOOL;
		BSA_Prtct_Cell_UnBalaV : BOOL;
		BSA_Prtct_Discharger_Cell_OT : BOOL;
		BSA_Prtct_Charger_Cell_OT : BOOL;
		BSA_Prtct_Discharger_Cell_UT : BOOL;
		BSA_Prtct_Charger_Cell_UT : BOOL;
		BSA_Prtct_Cell_UnBalaT : BOOL;
		BSA_Prtct_Continuously_OP : BOOL;
		BSA_Prtct_Peak_OP : BOOL;
		BSA_Prtct_InternalCOM : BOOL;
		BSA_Prtct_ExternalCOM : BOOL;
		BSA_Prtct_RelayWelding : BOOL;
		BSA_Prtct_WaterLeak : BOOL;
		BSA_Prtct_InsulationReg : BOOL;
		BSA_Prtct_MDSFuse : BOOL;
		BSA_Prtct_Cooling_System : BOOL;
		PMS_PAR_RelayErr : BOOL;
		PMS_PAR_SEQErr : BOOL;
		BPU_PAR_RelayErr : BOOL;
		BRA_PAR_RelayErr : BOOL;
	END_STRUCT;
	SysBatDIO_Field_typ : 	STRUCT 
		BSA_Prelay_DO_Status : BOOL;
		BSA_Nrelay_DO_Status : BOOL;
		BSA_ProRelay_DO_Status : BOOL;
		BSA_Buzzer_DO_Status : BOOL;
		BSA_PowerLamp_DO_Status : BOOL;
		BSA_DO_Spare06 : BOOL;
		BSA_DO_Spare07 : BOOL;
		BSA_DO_Spare08 : BOOL;
		BSA_DO_Spare09 : BOOL;
		BSA_DO_Spare10 : BOOL;
		BSA_DO_Spare11 : BOOL;
		BSA_DO_Spare12 : BOOL;
		BSA_PRelayAUX_DI_Status : BOOL;
		BSA_NRelayAUX_DI_Status : BOOL;
		BSA_EMGSwitch_DI_Status : BOOL;
		BSA_CoolingSystem_DI_Status : BOOL;
		BSA_MDS_DI_Status : BOOL;
		BSA_DI_Spare06 : BOOL;
		BSA_DI_Spare07 : BOOL;
		BSA_DI_Spare08 : BOOL;
		BSA_DI_Spare09 : BOOL;
		BSA_DI_Spare10 : BOOL;
		BSA_DI_Spare11 : BOOL;
		BSA_DI_Spare12 : BOOL;
		BSA_SOH : REAL;
	END_STRUCT;
	BRACal_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Volt_Total : REAL;
		BRA_Curr_Total : REAL;
		BRA_SOC : REAL;
	END_STRUCT;
	BRAPWR_A_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_SOH : REAL;
		BRA_CONT_CHA_PWR_Limit : REAL;
		BRA_Peak_CHA_PWR_Limit : REAL;
	END_STRUCT;
	BRAPWR_B_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_CONT_DisCHA_PWR_Limit : REAL;
		BRA_Peak_DisCHA_PWR_Limit : REAL;
	END_STRUCT;
	BRACellV_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Cell_Max_Voltage : REAL;
		BRA_Cell_Min_Voltage : REAL;
		BRA_Cell_AGV_Voltage : REAL;
	END_STRUCT;
	BRACellT_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Cell_Max_Temperature : REAL;
		BRA_Cell_Min_Temperature : REAL;
		BRA_Cell_AGV_Temperature : REAL;
	END_STRUCT;
	BRACellDiv_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Cell_DIV_Voltage : REAL;
		BRA_Cell_DIV_Temperature : REAL;
	END_STRUCT;
	BRA_VTPos_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Max_Cell_V_Location : USINT;
		BRA_Min_Cell_V_Location : USINT;
		BRA_Max_Cell_T_Location : USINT;
		BRA_Min_Cell_T_Location : USINT;
	END_STRUCT;
	BAR_Alarm_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Alarm_OC : BOOL;
		BRA_Alarm_SOC_OV : BOOL;
		BRA_Alarm_SOC_UN : BOOL;
		BRA_Alarm_OV : BOOL;
		BRA_Alarm_UV : BOOL;
		BRA_Alarm_Cell_OV : BOOL;
		BRA_Alarm_Cell_UV : BOOL;
		BRA_Alarm_Cell_UnBalaV : BOOL;
		BRA_Alarm_Discharger_Cell_OT : BOOL;
		BRA_Alarm_Charger_Cell_OT : BOOL;
		BRA_Alarm_Discharger_Cell_UT : BOOL;
		BRA_Alarm_Charger_Cell_UT : BOOL;
		BRA_Alarm_Cell_UnBalaT : BOOL;
		BRA_Alarm_Continuously_OP : BOOL;
		BRA_Alarm_Peak_OP : BOOL;
		BRA_Fault_OC : BOOL;
		BRA_Fault_SOC_OV : BOOL;
		BRA_Fault_SOC_UN : BOOL;
		BRA_Fault_OV : BOOL;
		BRA_Fault_UV : BOOL;
		BRA_Fault_Cell_OV : BOOL;
		BRA_Fault_Cell_UV : BOOL;
		BRA_Fault_Cell_UnBalaV : BOOL;
		BRA_Fault_Discharger_Cell_OT : BOOL;
		BRA_Fault_Charger_Cell_OT : BOOL;
		BRA_Fault_Discharger_Cell_UT : BOOL;
		BRA_Fault_Charger_Cell_UT : BOOL;
		BRA_Fault_Cell_UnBalaT : BOOL;
		BRA_Fault_Continuously_OP : BOOL;
		BRA_Fault_Peak_OP : BOOL;
	END_STRUCT;
	BAR_Protect_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Prtct_OC : BOOL;
		BRA_Prtct_SOC_OV : BOOL;
		BRA_Prtct_SOC_UN : BOOL;
		BRA_Prtct_OV : BOOL;
		BRA_Prtct_UV : BOOL;
		BRA_Prtct_Cell_OV : BOOL;
		BRA_Prtct_Cell_UV : BOOL;
		BRA_Prtct_Cell_UnBalaV : BOOL;
		BRA_Prtct_Discharger_Cell_OT : BOOL;
		BRA_Prtct_Charger_Cell_OT : BOOL;
		BRA_Prtct_Discharger_Cell_UT : BOOL;
		BRA_Prtct_Charger_Cell_UT : BOOL;
		BRA_Prtct_Cell_UnBalaT : BOOL;
		BRA_Prtct_Continuously_OP : BOOL;
		BRA_Prtct_Peak_OP : BOOL;
		BRA_Prtct_InternalCOM : BOOL;
		BRA_Prtct_ExternalCOM : BOOL;
		BRA_Prtct_RelayWelding : BOOL;
		BRA_Prtct_WaterLeak : BOOL;
		BRA_Prtct_InsulationReg : BOOL;
		BRA_Prtct_MDSFuse : BOOL;
		BRA_Prtct_CoolingSystem : BOOL;
	END_STRUCT;
	BAR_DIO_Field_typ : 	STRUCT 
		BRA_Rack_Num : UINT;
		BRA_Prelay_DO_Status : BOOL;
		BRA_Nrelay_DO_Status : BOOL;
		BRA_ProRelay_DO_Status : BOOL;
		BRA_PowerLamp_DO_Status : BOOL;
		BRA_Buzzer_DO_Status : BOOL;
		BRA_PRelayAUX_DI_Status : BOOL;
		BRA_NRelayAUX_DI_Status : BOOL;
		BRA_EMGSwitch_DI_Status : BOOL;
		BRA_MDS_DI_Status : BOOL;
		BRA_Waterleak_Dete_MD1 : BOOL;
		BRA_Waterleak_Dete_MD2 : BOOL;
		BRA_Waterleak_Dete_MD3 : BOOL;
		BRA_Waterleak_Dete_MD4 : BOOL;
		BRA_Waterleak_Dete_MD5 : BOOL;
		BRA_Waterleak_Dete_MD6 : BOOL;
		BRA_Waterleak_Dete_MD7 : BOOL;
	END_STRUCT;
END_TYPE
