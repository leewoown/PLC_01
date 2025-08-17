

ACTION ActSimulation: 
//	ActSimRACK1;

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
	
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_1.Field.M_INITOK);
	
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp);
	
	
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp);
	
	
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp);
	
	
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp);
	
	
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp);
	
	
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp);
	
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Value[1] :=
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BalanceEnabel), 10) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_HMIErrFault), 9) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_MBCOM_Err), 8) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CTCOM_Err), 7) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BATIC_Err), 6) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CellTemp_Err), 5) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CellVolt_Err), 4) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Waterleak_Err), 3) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BalanEN), 2) OR
	SHL(BOOL_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Fault), 1) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_1.Field.M_INITOK);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Value[0] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivVolt), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Field.M_Number);
	
	SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Value[1] :=
	SHL(UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Field.M_MDInResis), 16) OR
	UINT_TO_DWORD(SubBMS_Sim.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp);
	
	
END_ACTION
