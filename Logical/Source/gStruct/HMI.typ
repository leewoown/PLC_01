
TYPE
	HMI_typ : 	STRUCT 
		Step : STEP_Enum;
		DeviceLoading : DeviceLoadingPanel_typ;
		RackEnable : ARRAY[0..RACK_MAXNUM_MINUS_1]OF BOOL;
		RackIndex : RackIndex_enum;
		Gauge : GaugePanel_typ;
		BatteryInfo : BATInfoPanel_typ;
		Module1Info : ModuleInfoPanel_typ;
		Module2Info : ModuleInfoPanel_typ;
		Module3Info : ModuleInfoPanel_typ;
		Module4Info : ModuleInfoPanel_typ;
		Module5Info : ModuleInfoPanel_typ;
		Module6Info : ModuleInfoPanel_typ;
		Module7Info : ModuleInfoPanel_typ;
		SystemRackInfo : SystemRackInfoPanel_typ;
		BSA_Divice_Status : STRING[20];
		DIOStatus : DIOStatusPanel_typ;
		ProtectStatus : ProtectStatusPanel_typ;
		SubBMS_AlarmTable : ARRAY[0..27]OF ALARM_Info_typ;
		AlarmTableIndex : AlarmTableIndex_enum;
		AdminLogin : AdminLogin_typ;
		AdminDeviceReset : BOOL;
		TrendData : TrendData_typ;
		DialogBox : DialogBox_typ;
	END_STRUCT;
	DeviceLoadingPanel_typ : 	STRUCT 
		Trigger : BOOL;
		DeviceLoadingStep : USINT;
		RackLoading : USINT;
		DeviceLoading_Max : USINT;
		SetRackNum : USINT;
		LoadingText : STRING[40];
	END_STRUCT;
	GaugePanel_typ : 	STRUCT 
		BRA_SOC : REAL;
		BRA_SOC_A : STRING[20];
		BRA_SOC_B : STRING[50];
		BRA_SOH : REAL;
		BRA_SOH_A : STRING[20];
		BRA_SOH_B : STRING[50];
		BRA_Volt_Total : REAL;
		BRA_Volt_Total_A : STRING[20];
		BRA_Volt_Total_B : STRING[50];
		BRA_Curr_Total : REAL;
		BRA_Curr_Total_A : STRING[20];
		BRA_Curr_Total_B : STRING[50];
	END_STRUCT;
	BATInfoPanel_typ : 	STRUCT 
		BSA_Cell_MaxV : REAL;
		BSA_Cell_MinV : REAL;
		BSA_Cell_AVGV : REAL;
		BSA_Cell_DeviV : REAL;
		BSA_Cell_MaxT : REAL;
		BSA_Cell_MinT : REAL;
		BSA_Cell_AVGT : REAL;
		BSA_Cell_DeviT : REAL;
		BSA_Cell_MaxV_Rack_Location : STRING[20];
		BSA_Cell_MaxV_Cell_Location : STRING[20];
		BSA_Cell_MaxV_Location : STRING[20];
		BSA_Cell_MinV_Rack_Location : STRING[20];
		BSA_Cell_MinV_Cell_Location : STRING[20];
		BSA_Cell_MinV_Location : STRING[20];
		BSA_Cell_MaxT_Rack_Location : STRING[20];
		BSA_Cell_MaxT_Cell_Location : STRING[20];
		BSA_Cell_MaxT_Location : STRING[20];
		BSA_Cell_MinT_Rack_Location : STRING[20];
		BSA_Cell_MinT_Cell_Location : STRING[20];
		BSA_Cell_MinT_Location : STRING[20];
	END_STRUCT;
	ModuleInfoPanel_typ : 	STRUCT 
		Volt_Total : REAL;
		OPS_Fault : STRING[20];
		CTCOM_Err : STRING[20];
		OPS_MBCOM_Err : STRING[20];
	END_STRUCT;
	SystemRackInfoPanel_typ : 	STRUCT 
		RACK_State : ARRAY[0..3]OF STRING[20];
		RACK_BRA_Volt_Total : ARRAY[0..3]OF STRING[20];
		RACK_BRA_Curr_Total : ARRAY[0..3]OF STRING[20];
		RACK_BRA_Total : ARRAY[0..3]OF STRING[20];
	END_STRUCT;
	DIOStatusPanel_typ : 	STRUCT 
		BSA_Exteral_EMS : STRING[20];
		BSA_BMP_EMS : STRING[20];
		BSA_Watercooling : STRING[20];
		BSA_GasDetector : STRING[20];
		BSA_FireDetector : STRING[20];
		BSA_Neg_Rly : STRING[20];
		BSA_PreChar_Rly : STRING[20];
		BSA_Pos_Rly : STRING[20];
		BSA_Protect_Status : STRING[20];
		BSA_EMG_SW : STRING[20];
		BSA_WaterLeak : STRING[20];
		BSA_Balance : STRING[20];
		BSA_MSD_AUX : STRING[20];
	END_STRUCT;
	ProtectStatusPanel_typ : 	STRUCT 
		BSA_Charge_OC : STRING[20];
		BSA_Discharge_OC : STRING[20];
		BSA_OC : STRING[20];
		BSA_SOC_OV : STRING[20];
		BSA_SOC_Un : STRING[20];
		BSA_OV : STRING[20];
		BSA_UV : STRING[20];
		BSA_Cell_OV : STRING[20];
		BSA_Cell_UV : STRING[20];
		BSA_Cell_UnbalV : STRING[20];
		BSA_DisCharger_Cell_OT : STRING[20];
		BSA_Charger_Cell_OT : STRING[20];
		BSA_DisCharger_Cell_UT : STRING[20];
		BSA_Charger_Cell_UT : STRING[20];
		BSA_Cell_UnbalT : STRING[20];
		BSA_Discharge_Unbal_PWR : STRING[20];
		BSA_Charge_Unbal_PWR : STRING[20];
		BSA_Prtct_Peak_OP : STRING[20];
		BSA_Prtct_EMS_SW_Err : STRING[20];
		BSA_Prtct_Continuously_OP : STRING[20];
		BSA_Prtct_IN_COM_Err : STRING[20];
		BSA_Prtct_EX_COM_Err : STRING[20];
		BSA_Prtct_CT_COM_Err : STRING[20];
		BSA_Prtct_Rly_Err : STRING[20];
		BSA_Prtct_Water_Leak_Err : STRING[20];
		BRA_Prtct_InsulationReg : STRING[20];
		BRA_Prtct_MDSFuse : STRING[20];
		BSA_Prtct_CoolingSystem : STRING[20];
	END_STRUCT;
	Alarm_typ : 	STRUCT 
		Warning : ARRAY[0..27]OF ALARM_Info_typ;
		Fault : ARRAY[0..27]OF ALARM_Info_typ;
		Protect : ARRAY[0..27]OF ALARM_Info_typ;
	END_STRUCT;
	ALARM_Info_typ : 	STRUCT 
		Name : STRING[30];
		InitialTime : STRING[15];
		RecentTime : STRING[15];
		ClearTime : STRING[15];
		Location : STRING[15];
		Internal_Count : USINT;
		Count : USINT;
	END_STRUCT;
	Dialog_typ : 	STRUCT 
		Name : STRING[30];
		Trigger : BOOL;
	END_STRUCT;
	AdminLogin_typ : 	STRUCT 
		Authority : LoginStatusEnum;
		Input_Button : STRING[1];
		Password_Internal : STRING[16];
		Password_External : STRING[16];
	END_STRUCT;
	TrendData_typ : 	STRUCT 
		Voltage : REAL;
		Current : REAL;
	END_STRUCT;
	DialogBox_typ : 	STRUCT 
		LoadingError_Trigger : BOOL;
		BuzzerOFF_Trigger : BOOL;
		Protect_Trigger : BOOL;
		ProtectName : STRING[30];
		ProtectNum : STRING[10];
	END_STRUCT;
	STEP_Enum : 
		(
		vkINITIAL := 0,
		vkBOOTING := 1,
		vkSYSTEM := 2,
		vkRACK1 := 3,
		vkRACK2 := 4,
		vkRACK3 := 5,
		vkRACK4 := 6,
		vkADMINISTRATOR := 13,
		vkALARMHISTORY := 14,
		vkLOADINGERROR := 15,
		vkPROTECTERROR := 16,
		vkUSERTEST := 20
		);
	RackIndex_enum : 
		(
		vkRACKNUM1 := 0,
		vkRACKNUM2 := 1,
		vkRACKNUM3 := 2,
		vkRACKNUM4 := 3
		);
	AlarmTableIndex_enum : 
		(
		vkWarning := 0,
		vkFault := 1,
		vkProtect := 2
		);
	LoginStatusEnum : 
		(
		USER := 0,
		ADMIN := 1
		);
END_TYPE
