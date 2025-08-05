

ACTION ActSimulation: 
	ActSimRACK1;
	ActSimRACK2;
	ActSimRACK3;
	ActSimRACK4;

END_ACTION



ACTION ActSimRACK1: 
	
	SubBMS_Sim.Rack1.BSA.BSA_Product.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BSA_SW_Ver), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BSA_Type);
	
	SubBMS_Sim.Rack1.BSA.BSA_Product.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BSA_Parallel), 24) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BSA_Serial), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.BSA_Product.Field.BRA_Capacity);

	// Rack_Calc
	SubBMS_Sim.Rack1.BSA.Rack_Calc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total);

	SubBMS_Sim.Rack1.BSA.Rack_Calc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Calc.Field.BRA_SOH), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Calc.Field.BRA_SOC);

	// Rack_State
	SubBMS_Sim.Rack1.BSA.Rack_State.Value[0] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.Not_Used2), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.Not_Used1), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Water_leak), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_EMG_SW), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_MSD_AUX), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_PreChar_Rly), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Pos_Rly), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Neg_Rly), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Balance), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Protect_Status), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Divice_Status);

	SubBMS_Sim.Rack1.BSA.Rack_State.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.Not_Used3), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Ah);

	// Rack_AlarmState
	SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Value[0] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC);
	
	SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used3), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used1), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC);

	
	// Rack_PWRCalc
	SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont);

	SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak);

	// Rack_Cell_Vcalc
	SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);

	SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);

	// Rack_Cell_Tcalc
	SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);

	SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);

	// Rack_Cell_Pcalc
	SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);

	SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.Field.Agv_Temp);
	
	
END_ACTION

ACTION ActSimRACK2: 
	
	SubBMS_Sim.Rack2.BSA.BSA_Product.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BSA_SW_Ver), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BSA_Type);
	
	SubBMS_Sim.Rack2.BSA.BSA_Product.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BSA_Parallel), 24) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BSA_Serial), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.BSA_Product.Field.BRA_Capacity);

	// Rack_Calc
	SubBMS_Sim.Rack2.BSA.Rack_Calc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total);

	SubBMS_Sim.Rack2.BSA.Rack_Calc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Calc.Field.BRA_SOH), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Calc.Field.BRA_SOC);

	// Rack_State
	SubBMS_Sim.Rack2.BSA.Rack_State.Value[0] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.Not_Used2), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.Not_Used1), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Water_leak), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_EMG_SW), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_MSD_AUX), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_PreChar_Rly), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Pos_Rly), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Neg_Rly), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Balance), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Protect_Status), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Divice_Status);

	SubBMS_Sim.Rack2.BSA.Rack_State.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.Not_Used3), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_State.Field.BSA_Ah);

	// Rack_AlarmState
	SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Value[0] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC);
	
	SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used3), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used1), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC);

	
	// Rack_PWRCalc
	SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont);

	SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak);

	// Rack_Cell_Vcalc
	SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);

	SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);

	// Rack_Cell_Tcalc
	SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);

	SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);

	// Rack_Cell_Pcalc
	SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);

	SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
	
	SubBMS_Sim.Rack2.BSA.Modul1_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul1_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul1_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul2_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul2_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul2_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul3_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul3_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul3_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul4_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul4_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul4_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul5_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul5_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul5_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul6_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul6_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul6_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack2.BSA.Modul7_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack2.BSA.Modul7_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack2.BSA.Modul7_Info.Field.Agv_Temp);
	
	
END_ACTION

ACTION ActSimRACK3: 
	
	SubBMS_Sim.Rack3.BSA.BSA_Product.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BSA_SW_Ver), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BSA_Type);
	
	SubBMS_Sim.Rack3.BSA.BSA_Product.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BSA_Parallel), 24) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BSA_Serial), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.BSA_Product.Field.BRA_Capacity);

	// Rack_Calc
	SubBMS_Sim.Rack3.BSA.Rack_Calc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total);

	SubBMS_Sim.Rack3.BSA.Rack_Calc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Calc.Field.BRA_SOH), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Calc.Field.BRA_SOC);

	// Rack_State
	SubBMS_Sim.Rack3.BSA.Rack_State.Value[0] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.Not_Used2), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.Not_Used1), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Water_leak), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_EMG_SW), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_MSD_AUX), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_PreChar_Rly), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Pos_Rly), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Neg_Rly), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Balance), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Protect_Status), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Divice_Status);

	SubBMS_Sim.Rack3.BSA.Rack_State.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.Not_Used3), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_State.Field.BSA_Ah);

	// Rack_AlarmState
	SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Value[0] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC);
	
	SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used3), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used1), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC);

	
	// Rack_PWRCalc
	SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont);

	SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak);

	// Rack_Cell_Vcalc
	SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);

	SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);

	// Rack_Cell_Tcalc
	SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);

	SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);

	// Rack_Cell_Pcalc
	SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);

	SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
	
	SubBMS_Sim.Rack3.BSA.Modul1_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul1_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul1_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul2_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul2_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul2_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul3_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul3_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul3_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul4_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul4_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul4_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul5_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul5_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul5_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul6_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul6_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul6_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack3.BSA.Modul7_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack3.BSA.Modul7_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack3.BSA.Modul7_Info.Field.Agv_Temp);
	
	
END_ACTION

ACTION ActSimRACK4: 
	
	SubBMS_Sim.Rack4.BSA.BSA_Product.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BSA_SW_Ver), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BSA_Type);
	
	SubBMS_Sim.Rack4.BSA.BSA_Product.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BSA_Parallel), 24) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BSA_Serial), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.BSA_Product.Field.BRA_Capacity);

	// Rack_Calc
	SubBMS_Sim.Rack4.BSA.Rack_Calc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total);

	SubBMS_Sim.Rack4.BSA.Rack_Calc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Calc.Field.BRA_SOH), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Calc.Field.BRA_SOC);

	// Rack_State
	SubBMS_Sim.Rack4.BSA.Rack_State.Value[0] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.Not_Used2), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.Not_Used1), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Water_leak), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_EMG_SW), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_MSD_AUX), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_PreChar_Rly), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Pos_Rly), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Neg_Rly), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Balance), 16) OR
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Protect_Status), 8) OR
	USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Divice_Status);

	SubBMS_Sim.Rack4.BSA.Rack_State.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.Not_Used3), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_State.Field.BSA_Ah);

	// Rack_AlarmState
	SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Value[0] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC);
	
	SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Value[1] :=
	SHL(USINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used3), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used1), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err), 16) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR), 15) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR), 14) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT), 13) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT), 12) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT), 11) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC), 1) OR
	BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC);

	
	// Rack_PWRCalc
	SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont);

	SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak);

	// Rack_Cell_Vcalc
	SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);

	SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV);

	// Rack_Cell_Tcalc
	SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT);

	SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT);

	// Rack_Cell_Pcalc
	SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);

	SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
	
	SubBMS_Sim.Rack4.BSA.Modul1_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul1_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul1_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul2_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul2_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul2_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul3_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul3_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul3_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul4_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul4_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul4_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul5_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul5_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul5_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul6_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul6_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul6_Info.Field.Agv_Temp);
	
	SubBMS_Sim.Rack4.BSA.Modul7_Info.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Agv_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Volt_Total);
	
	SubBMS_Sim.Rack4.BSA.Modul7_Info.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used7), 31) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used6), 30) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used5), 29) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used4), 28) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used3), 27) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used2), 26) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Not_Used1), 25) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_MBCOM_Err), 24) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.CTCOM_Err), 23) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.BATIC_Err), 22) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_CellTemps_Err), 21) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_CellVolt_Err), 20) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_Waterleak_Err), 19) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_Balan_On_OFF), 18) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_Fault), 17) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.OPS_INITOK), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack4.BSA.Modul7_Info.Field.Agv_Temp);
	
	
END_ACTION
